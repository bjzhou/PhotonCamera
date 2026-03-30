.class public final synthetic Lgbh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgbi;

.field public final synthetic b:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public final synthetic c:Lcom/google/googlex/gcam/ShotMetadata;

.field public final synthetic d:Lj$/util/Optional;

.field public final synthetic e:Lj$/util/Optional;

.field public final synthetic f:Lj$/util/Optional;

.field public final synthetic g:Lgcb;

.field public final synthetic h:Lgbc;

.field public final synthetic i:Llko;


# direct methods
.method public synthetic constructor <init>(Lgbi;Llko;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lgcb;Lgbc;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgbh;->i:Llko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lgbh;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lgbh;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput-object p1, p0, Lgbh;->a:Lgbi;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iput-object p9, p0, Lgbh;->h:Lgbc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lgbh;->f:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lgbh;->c:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p8, p0, Lgbh;->g:Lgcb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iput-object p6, p0, Lgbh;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 30

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lsld;->i:Lsld;

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Lsld;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v2

    nop

    :try_start_0
    iput-object v3, v2, Lgbi;->z:Lsld;

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v28, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    goto/16 :goto_7a

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_8
    move-object/from16 v5, v27

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v29, v6

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9a

    nop

    nop

    :goto_e
    const-string v6, "Finish merge for groupId: %s, status=%s"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    move-object/from16 v27, v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v14, v10

    nop

    nop

    nop

    :try_start_1
    iget-wide v9, v5, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    nop

    nop

    invoke-static {v6}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v21

    nop

    move-object v5, v8

    nop

    check-cast v5, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    nop

    nop
    :try_end_1
    .catch Ltad; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ltae; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v11}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_14
    iget-object v0, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v14, v10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v1, v27

    nop

    nop

    :goto_19
    :try_start_2
    sget-object v5, Lgbi;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v5, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    const/16 v6, 0xab

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    const-string v6, "Merge failed for groupId:%s due to %s"

    nop

    nop

    iget v7, v2, Lgbi;->c:I

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltae;->getMessage()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    invoke-interface {v5, v6, v7, v8}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    iget v0, v0, Ltae;->a:I

    nop

    add-int/lit8 v5, v0, -0x2

    nop

    if-eqz v0, :cond_16

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    if-eq v5, v0, :cond_5

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    if-eq v5, v6, :cond_5

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    if-eq v5, v6, :cond_4

    nop

    nop

    nop

    nop

    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    if-eq v5, v0, :cond_3

    nop

    const/4 v0, 0x7

    nop

    nop

    if-eq v5, v0, :cond_2

    nop

    sget-object v0, Lsld;->i:Lsld;

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    :cond_2
    sget-object v0, Lsld;->r:Lsld;

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    sget-object v0, Lsld;->q:Lsld;

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    sget-object v0, Lsld;->p:Lsld;

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    :cond_5
    sget-object v0, Lsld;->o:Lsld;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8b

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_16

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_1f
    const/4 v9, 0x2

    nop

    :try_start_3
    invoke-direct {v15, v1, v9}, Lsjb;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v15}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v9

    nop

    nop

    invoke-virtual {v9, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lsve;

    nop

    nop

    nop

    new-instance v9, Lrqy;

    nop

    nop

    nop

    nop

    const/16 v15, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v15}, Lrqy;-><init>(I)V

    invoke-virtual {v7, v9}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v13}, Lszh;->a()Lszg;

    move-result-object v7

    nop

    iget-object v7, v7, Lszg;->b:Lsve;

    nop

    new-instance v9, Lsjb;

    nop

    const/4 v15, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v7, v15}, Lsjb;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lsve;

    nop

    nop

    nop

    nop

    new-instance v9, Lrqy;

    nop

    const/16 v15, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v15}, Lrqy;-><init>(I)V

    invoke-virtual {v8, v9}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v8, v14, Lszn;->b:Ltav;

    nop

    nop

    invoke-virtual {v5}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v5

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ltad; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ltae; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    const-string v5, "Finish merge for groupId: %s, status=%s"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_21
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_22
    move-object/from16 v29, v6

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v4}, Llxa;->H(Ljava/lang/String;)V

    :goto_24
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v4, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_26
    move-object/from16 v0, p0

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_28
    sget-object v1, Lsld;->b:Lsld;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v3, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_78

    nop

    nop

    :goto_2a
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    goto/16 :goto_72

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    iget-object v7, v0, Lgbh;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2d
    goto/16 :goto_73

    nop

    nop

    nop

    :cond_7
    :goto_2e
    :try_start_4
    sget-object v0, Lszn;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v5, 0x1585

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v5, "Merge failed: %s"

    nop

    nop

    iget-object v6, v1, Ltbf;->e:Ljava/lang/String;

    nop

    nop

    invoke-interface {v0, v5, v6}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ltae;

    nop

    nop

    nop

    nop

    iget v5, v1, Ltbf;->d:I

    nop

    invoke-static {v5}, La;->P(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_8

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v1, v1, Ltbf;->e:Ljava/lang/String;

    nop

    invoke-direct {v0, v5, v1}, Ltae;-><init>(ILjava/lang/String;)V

    throw v0

    nop

    nop

    nop
    :try_end_4
    .catch Ltad; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ltae; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget v6, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v4, v2, Lgbi;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v11}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual/range {v2 .. v7}, Lgbi;->n(Lj$/util/Optional;Lj$/util/Optional;Ljava/util/List;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3}, Lsld;->name()Ljava/lang/String;

    move-result-object v5

    nop

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

    :goto_35
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v29, v6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v3}, Lgei;->l(Lsld;)V

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    :try_start_5
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_35

    nop

    nop

    :goto_3a
    iget-object v0, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v0, v4}, Llxa;->H(Ljava/lang/String;)V

    :goto_3c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v14}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3e
    iget v4, v2, Lgbi;->c:I

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v29, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v28, v9

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_44
    iget-object v1, v2, Lgbi;->k:Lgei;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v0, Lsld;->i:Lsld;

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_47
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_9

    nop

    goto/32 :goto_1

    nop

    :cond_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v0, Lgbh;->a:Lgbi;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_4a
    sget v5, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4c
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4f
    iget v4, v2, Lgbi;->c:I

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_50
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_6
    iput-object v3, v2, Lgbi;->z:Lsld;

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    goto :goto_52

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_51
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    iput-object v3, v2, Lgbi;->z:Lsld;

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_52
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_53
    monitor-enter v2

    nop

    :try_start_8
    iput-object v3, v2, Lgbi;->z:Lsld;

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    goto/16 :goto_52

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v5, "Finish merge for groupId: %s, status=%s"

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_42

    nop

    :catch_6
    move-exception v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_56
    const v0, 0x15

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_57
    throw v0

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v5, "Finish merge for groupId: %s, status=%s"

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_71

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eq v3, v0, :cond_b

    nop

    goto/32 :goto_67

    nop

    :cond_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1b

    nop

    :goto_5d
    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual/range {v2 .. v7}, Lgbi;->n(Lj$/util/Optional;Lj$/util/Optional;Ljava/util/List;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v6, v0, Lgbh;->c:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_61
    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v5, :cond_d

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_54

    nop

    nop

    :goto_63
    goto :goto_6a

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    :cond_e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v3, Lsld;->b:Lsld;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_66
    sget-object v3, Lsld;->i:Lsld;

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_3a

    nop

    nop

    :goto_68
    sget-object v0, Lsld;->b:Lsld;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_69
    move-object/from16 v28, v9

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v11, v0, Lgbh;->h:Lgbc;

    nop

    nop

    :try_start_a
    iget-object v0, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    sget v14, Lcom/a;->aa:I

    nop

    nop

    if-eqz v14, :cond_f

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v14, Landroidx/wear/widget/xrA/fuyPMnCeXU;->khwmLsectJhTww:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget v15, v2, Lgbi;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    nop

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    invoke-interface {v0, v14}, Llxa;->H(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lhhg;->M()Lrtk;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Lrtk;->e()V

    iget-object v14, v2, Lgbi;->f:Lszn;

    nop

    nop

    nop

    nop

    iget v15, v2, Lgbi;->c:I

    nop

    nop

    new-instance v12, Lgbg;

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v12, v13}, Lgbg;-><init>(I)V

    invoke-virtual {v14, v15}, Lszn;->b(I)Lszh;

    move-result-object v13

    nop

    nop
    :try_end_a
    .catch Ltad; {:try_start_a .. :try_end_a} :catch_8
    .catch Ltae; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v10, v0, Lgbh;->g:Lgcb;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_6d
    invoke-static/range {v29 .. v29}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v6

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

    :goto_6e
    invoke-virtual {v3}, Lsld;->name()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_b
    throw v0

    nop

    :catch_8
    move-exception v0

    nop

    move-object/from16 v27, v1

    nop

    :goto_70
    move-object/from16 v29, v6

    nop

    nop

    move-object/from16 v28, v9

    nop

    nop

    nop

    nop

    :goto_71
    move-object v14, v10

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move-object/from16 v1, v27

    nop

    nop

    nop

    :goto_73
    sget-object v5, Lgbi;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    invoke-interface {v5, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const/16 v5, 0xa8

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v5, "Invalid image rotation for groupId:%s"

    nop

    iget v6, v2, Lgbi;->c:I

    nop

    invoke-interface {v0, v5, v6}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/32 :goto_86

    nop

    nop

    :goto_74
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v3, v28

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_76
    iget-object v8, v0, Lgbh;->e:Lj$/util/Optional;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static/range {v29 .. v29}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_79
    move-object v14, v10

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7b
    sget v5, Lcom/a;->aa:I

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_9d

    nop

    nop

    :catch_9
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7d
    move-object/from16 v29, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object v3, Lsld;->b:Lsld;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v1, v4}, Llxa;->H(Ljava/lang/String;)V

    :goto_80
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_82
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    sget v5, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, v2, Lgbi;->k:Lgei;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_86
    sget-object v0, Lsld;->b:Lsld;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    throw v0

    nop

    nop

    nop

    nop

    :catch_a
    move-exception v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_88
    invoke-virtual {v1, v3}, Lgei;->l(Lsld;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8a
    throw v0

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v3}, Lsld;->name()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_16

    nop

    nop

    nop

    :catch_b
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v29, v6

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_8f
    move-object/from16 v29, v6

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_90
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-nez v0, :cond_10

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_66

    nop

    nop

    :goto_92
    invoke-interface {v0, v4}, Llxa;->H(Ljava/lang/String;)V

    :goto_93
    goto/32 :goto_50

    nop

    nop

    :goto_94
    goto/16 :goto_70

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v9, v0, Lgbh;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v4, v0, Lgbh;->i:Llko;

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_97
    invoke-static {v14}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v4

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eq v3, v1, :cond_11

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v1, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v3, Lsld;->i:Lsld;

    nop

    nop

    :goto_9b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9c
    move-object/from16 v27, v1

    nop

    :goto_9d
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9f
    if-nez v6, :cond_12

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a0
    if-eq v0, v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_4d

    nop

    nop

    :goto_a1
    move-object/from16 v29, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v5, v0, Lgbh;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_a4
    iget v4, v2, Lgbi;->c:I

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_a5
    move-object/from16 v3, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_a6
    move-object/from16 v27, v1

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lsxp;

    move-result-object v1

    nop

    nop

    invoke-virtual {v13, v1}, Lszh;->f(Lsxp;)V

    iget-object v1, v13, Lszh;->b:Lszo;

    nop

    nop

    nop

    invoke-virtual {v1}, Lszo;->f()V

    invoke-virtual {v13}, Lszh;->a()Lszg;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lszg;->a:Lsve;

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v15

    nop

    new-instance v15, Lsjb;

    nop
    :try_end_c
    .catch Ltad; {:try_start_c .. :try_end_c} :catch_4
    .catch Ltae; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a7
    move-object/from16 v29, v6

    nop

    :try_start_d
    iget-wide v5, v5, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltis;->h()[B

    move-result-object v23

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltis;->h()[B

    move-result-object v24

    nop

    nop

    nop

    nop

    nop

    move-object v1, v8

    nop

    check-cast v1, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    nop

    nop

    nop

    nop

    const/16 v25, 0x0

    nop

    nop

    nop

    move v8, v15

    nop

    nop

    nop

    nop

    nop

    move/from16 v7, v16

    nop

    nop

    move-object v15, v1

    nop

    nop

    nop

    nop

    move-wide/from16 v16, v5

    nop

    nop

    move/from16 v18, v7

    nop

    move-wide/from16 v19, v9

    nop

    nop

    nop

    move-object/from16 v26, v12

    nop

    invoke-virtual/range {v15 .. v26}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->mergeSecondImageImpl(JIJJ[B[BZLjava/lang/Runnable;)[B

    move-result-object v1

    nop

    invoke-static {v1}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a([B)Ltbf;

    move-result-object v1

    nop

    nop

    nop

    iget v5, v1, Ltbf;->d:I

    nop

    invoke-static {v5}, La;->P(I)I

    move-result v5

    nop

    if-nez v5, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_14
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v5, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget v5, v1, Ltbf;->b:I

    nop

    nop

    if-ne v5, v8, :cond_15

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ltbf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ltbc;

    nop

    goto :goto_a8

    nop

    nop

    :cond_15
    sget-object v1, Ltbc;->a:Ltbc;

    nop

    :goto_a8
    iget-object v1, v1, Ltbc;->b:Ltkv;

    nop

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    new-instance v5, Lsjb;

    nop

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    invoke-direct {v5, v13, v6}, Lsjb;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget v5, Lryb;->d:I

    nop

    nop

    sget-object v5, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v5}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lryb;

    nop

    nop

    nop
    :try_end_d
    .catch Ltad; {:try_start_d .. :try_end_d} :catch_b
    .catch Ltae; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    iget-object v5, v2, Lgbi;->k:Lgei;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrtk;->c()Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v0, v1}, Lgei;->h(Lj$/time/Duration;Ljava/util/List;)V
    :try_end_e
    .catch Ltad; {:try_start_e .. :try_end_e} :catch_2
    .catch Ltae; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_a9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop
.end method
