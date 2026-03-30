.class final Lbps;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbpv;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Lyj;

.field final synthetic g:Lyj;

.field final synthetic h:Lyj;

.field final synthetic i:Lyj;


# direct methods
.method public constructor <init>(Lbpv;Lyj;Lyj;Ljava/util/List;Ljava/util/List;Lyj;Ljava/util/List;Lyj;Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lbps;->f:Lyj;

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
    iput-object p6, p0, Lbps;->h:Lyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbps;->a:Lbpv;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p9, p0, Lbps;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lbps;->g:Lyj;

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

    :goto_5
    iput-object p7, p0, Lbps;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lbps;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    iput-object p8, p0, Lbps;->i:Lyj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lbps;->c:Ljava/util/List;

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

    :goto_b
    return-void

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1
    move-object v8, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_2
    iget-object v0, v1, Lbps;->a:Lbpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz v16, :cond_0

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v7, v21

    nop

    nop

    :try_start_0
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/32 :goto_ac

    nop

    nop

    :goto_7
    iget-object v11, v1, Lbps;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_8
    rsub-int/lit8 v7, v7, 0x8

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

    :goto_9
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-ne v6, v5, :cond_1

    nop

    goto/32 :goto_c2

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2a

    nop

    nop

    :goto_c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_e
    if-ne v13, v5, :cond_3

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/16 :goto_b5

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {v8}, Lbxt;->E(Lbxt;)V

    throw v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    invoke-static {v6}, Lbpv;->C(Lbxm;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_10
    move-object/from16 v11, v21

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    not-long v11, v6

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v12, v12, 0x1

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_13
    goto/16 :goto_cb

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_17

    nop

    nop

    :goto_15
    goto/32 :goto_c8

    nop

    nop

    :goto_16
    move-object v14, v7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_18
    throw v0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v11, v7

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_1b
    move-object v15, v8

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1c
    move-object v8, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_1d
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v5

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_83

    nop

    nop

    :cond_6
    :try_start_4
    invoke-interface {v11}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    goto/32 :goto_86

    nop

    nop

    :goto_20
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    if-nez v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_5
    invoke-virtual {v12, v10}, Lyj;->f(Lyj;)V

    iget-object v0, v10, Lyj;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v4, v10, Lyj;->a:[J

    nop

    nop

    array-length v5, v4

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_d8

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x7

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_a6

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_26
    and-long/2addr v7, v12

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_27
    move-object v15, v8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    shl-int/lit8 v16, v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_29
    move-object/from16 v22, v12

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    :try_start_6
    invoke-static {v2, v0}, Lbpv;->D(Lbpv;Ljava/lang/Exception;)V

    move-object v1, v2

    nop

    move-object v2, v9

    nop

    nop

    move-object/from16 v4, v21

    nop

    nop

    nop

    move-object v5, v10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v6, v22

    nop

    move-object v7, v14

    nop

    nop

    invoke-static/range {v1 .. v8}, Lbpt;->d(Lbpv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyj;Lyj;Lyj;Lyj;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    invoke-virtual {v10}, Lyj;->d()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_9
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_c4

    nop

    nop

    nop

    nop

    :cond_a
    :goto_2d
    goto/32 :goto_ef

    nop

    nop

    :goto_2e
    not-long v7, v12

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_81

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

    :try_start_8
    monitor-exit v1

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    :catchall_6
    move-exception v0

    nop

    nop

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

    :goto_30
    move-object/from16 v21, v7

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v11, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    shl-int/lit8 v23, v13, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_33
    goto/16 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    :try_start_9
    invoke-virtual {v10}, Lyj;->d()V

    throw v0

    nop

    nop

    :goto_35
    move-object v14, v7

    nop

    nop

    move-object/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v22, v12

    nop

    :goto_36
    invoke-virtual/range {v22 .. v22}, Lyj;->c()Z

    move-result v0

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_37
    and-long v11, v11, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v22, v12

    nop

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

    nop

    :goto_39
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_c4

    nop

    nop

    nop

    :goto_3b
    :try_start_a
    invoke-interface {v11}, Ljava/util/List;->clear()V

    throw v0

    nop

    nop

    nop

    :cond_c
    :goto_3c
    invoke-virtual {v10}, Lyj;->c()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    goto/32 :goto_56

    nop

    nop

    :goto_3d
    const/16 v15, 0x8

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v14, v12

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v4, v0, Lbpv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v21, v11

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_41
    goto/16 :goto_34

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v1, "Recomposer:recompose"

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_43
    move-object/from16 v11, v22

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    iget-object v0, v11, Lyj;->b:[Ljava/lang/Object;

    nop

    iget-object v4, v11, Lyj;->a:[J

    nop

    nop

    nop

    array-length v5, v4

    nop

    add-int/lit8 v5, v5, -0x2

    nop

    nop

    nop

    nop

    if-ltz v5, :cond_2

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_44
    aget-wide v12, v4, v6

    nop
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/32 :goto_27

    nop

    nop

    :goto_45
    const-wide/16 v19, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_47
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_36

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_49
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_4a
    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4b
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_d
    :try_start_c
    invoke-static {v3, v2}, Lbpt;->b(Ljava/util/List;Lbpv;)V

    :goto_4c
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v12}, Lbpv;->A(Ljava/util/List;Lyj;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v10, v1}, Lyj;->g(Ljava/lang/Iterable;)V

    invoke-static {v3, v2}, Lbpt;->b(Ljava/util/List;Lbpv;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto/32 :goto_bd

    nop

    nop

    :goto_4d
    monitor-enter v4

    nop

    nop

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v0}, Lbpv;->x()Z

    move-result v0

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4f
    if-gez v5, :cond_e

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_50
    move-object/from16 v7, v21

    nop

    :goto_51
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_a8

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_5f

    nop

    :goto_55
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_56
    const-wide/16 v15, 0xff

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_57
    and-long/2addr v11, v6

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

    :goto_58
    const-wide/16 v19, 0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_3a

    nop

    nop

    :goto_5a
    move-object v1, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5b
    and-long v23, v6, v15

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5c
    move-object v8, v15

    nop

    nop

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {v8, v5}, Lyj;->j(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_5d
    cmp-long v16, v24, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_60
    if-lt v8, v7, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_f
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_61
    if-lez v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_54

    nop

    :goto_62
    goto/16 :goto_cb

    nop

    nop

    :goto_63
    goto/32 :goto_50

    nop

    nop

    :goto_64
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1d

    nop

    nop

    :goto_65
    shr-long/2addr v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_66
    sub-int v7, v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_67
    and-long v7, v7, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/16 v15, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_69
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v3, v1, Lbps;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    shl-long/2addr v7, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6c
    const-wide/16 v22, 0xff

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const-wide/16 v19, 0x80

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

    nop

    nop

    :goto_6f
    iget-object v2, v1, Lbps;->a:Lbpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_70
    const-wide/16 v22, 0xff

    nop

    :goto_71
    goto/32 :goto_a

    nop

    nop

    :goto_72
    throw v0

    nop

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

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    shl-long/2addr v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_74
    cmp-long v11, v11, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-wide/16 v22, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, v1, Lbps;->a:Lbpv;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-ltz v23, :cond_11

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_11
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_79
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7a
    move-object v8, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_7b
    monitor-exit v4

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    ushr-int/lit8 v7, v7, 0x1f

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_7d
    move-object/from16 v21, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7e
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_7f
    const/16 v8, 0x8

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_f
    invoke-virtual {v2}, Lbpv;->z()Z

    iget-object v1, v2, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v1

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    :try_start_10
    iget-object v5, v2, Lbpv;->f:Lbtg;

    nop

    iget v6, v5, Lbtg;->b:I

    nop

    nop

    nop

    nop

    if-lez v6, :cond_13

    nop

    nop

    nop

    iget-object v5, v5, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    move v13, v4

    nop

    nop

    nop

    nop

    :cond_12
    aget-object v14, v5, v13

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Lbmn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    if-lt v13, v6, :cond_12

    nop

    nop

    :cond_13
    iget-object v5, v2, Lbpv;->f:Lbtg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lbtg;->g()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :try_start_11
    monitor-exit v1

    nop

    nop

    nop

    invoke-virtual {v7}, Lyj;->d()V

    invoke-virtual {v8}, Lyj;->d()V

    :goto_81
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_15

    nop

    nop

    :cond_14
    move-object v14, v7

    nop

    nop

    nop

    nop

    move-object v15, v8

    nop

    nop

    move-object/from16 v21, v11

    nop

    nop

    nop

    move-object v11, v12

    nop

    nop

    nop

    nop

    goto/16 :goto_a7

    nop

    :cond_15
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_14

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_c

    nop

    nop

    iget-wide v0, v2, Lbpv;->a:J

    nop

    nop

    nop

    const-wide/16 v13, 0x1

    nop

    nop

    add-long/2addr v0, v13

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, v2, Lbpv;->a:J

    nop

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    :try_start_12
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    move v1, v4

    nop

    :goto_82
    if-ge v1, v0, :cond_16

    nop

    nop

    nop

    nop

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lbmn;

    nop

    invoke-virtual {v12, v6}, Lyj;->j(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto :goto_82

    nop

    nop

    nop

    nop

    :cond_16
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    move v1, v4

    nop

    :goto_83
    if-ge v1, v0, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lbmn;

    nop

    invoke-interface {v6}, Lbmn;->f()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_a0

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_85
    cmp-long v7, v7, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_3c

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_b9

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_8a
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8b
    add-int/lit8 v5, v5, -0x2

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_13
    invoke-static {v2, v0}, Lbpv;->D(Lbpv;Ljava/lang/Exception;)V

    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    move-object v2, v9

    nop

    nop

    move-object v4, v11

    nop

    nop

    move-object v5, v10

    nop

    nop

    move-object v6, v12

    nop

    nop

    invoke-static/range {v1 .. v8}, Lbpt;->d(Lbpv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyj;Lyj;Lyj;Lyj;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    invoke-interface {v11}, Ljava/util/List;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-eq v11, v15, :cond_17

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :cond_17
    :goto_8e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v9, v1, Lbps;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_90
    if-lt v12, v11, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    :cond_18
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v12, v26

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_92
    not-int v7, v7

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_93
    move-object v12, v14

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_96
    shr-long/2addr v6, v15

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v12, v1, Lbps;->i:Lyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_98
    goto/16 :goto_94

    nop

    nop

    nop

    :cond_19
    :goto_99
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_9c
    ushr-int/lit8 v11, v11, 0x1f

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_89

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const/16 v12, 0x8

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_9f
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_a0
    :try_start_15
    aget-wide v6, v4, v13

    nop

    nop

    nop
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move-object v14, v7

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

    nop

    :goto_a2
    move-object/from16 v12, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_c4

    nop

    nop

    nop

    nop

    :goto_a4
    :try_start_16
    invoke-virtual {v11}, Lyj;->d()V

    throw v0

    nop

    :goto_a5
    move-object v15, v8

    nop

    :goto_a6
    iget-object v1, v2, Lbpv;->c:Ljava/lang/Object;

    nop

    monitor-enter v1

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    :try_start_17
    invoke-virtual {v2}, Lbpv;->t()Luez;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lbxs;->d()V

    invoke-virtual {v15}, Lyj;->d()V

    invoke-virtual {v14}, Lyj;->d()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, v2, Lbpv;->j:Ljava/util/Set;

    nop

    goto/16 :goto_be

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    monitor-exit v1

    nop

    throw v2

    nop

    nop

    nop

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    :goto_a7
    :try_start_19
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    :goto_a8
    if-ge v4, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lbmn;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lbmn;->q()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_19

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lbmn;->c()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_19

    nop

    nop

    iget-object v6, v2, Lbpv;->j:Ljava/util/Set;

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    if-eqz v6, :cond_1a

    nop

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v7, :cond_1a

    nop

    nop

    nop

    goto/16 :goto_99

    nop

    nop

    nop

    :cond_1a
    new-instance v6, Lbpo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5}, Lbpo;-><init>(Lbmn;)V

    new-instance v8, Lbpu;

    nop

    nop

    nop

    nop

    nop
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_aa
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_ab
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_51

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_ad
    and-long v24, v12, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_af
    move-object/from16 v7, v21

    nop

    nop

    nop

    nop

    :try_start_1a
    invoke-interface {v9}, Ljava/util/List;->clear()V

    invoke-virtual {v12}, Lyj;->c()Z

    move-result v1

    nop

    if-nez v1, :cond_1b

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lbpv;->f:Lbtg;

    nop

    nop

    nop

    iget v1, v1, Lbtg;->b:I

    nop

    nop

    if-eqz v1, :cond_21

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    iget-object v1, v2, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    :try_start_1b
    invoke-virtual {v2}, Lbpv;->g()Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    :goto_b0
    if-ge v6, v5, :cond_1d

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, Lbmn;

    nop

    nop

    nop

    invoke-virtual {v8, v13}, Lyj;->a(Ljava/lang/Object;)Z

    move-result v14

    nop

    nop

    nop

    if-nez v14, :cond_1c

    nop

    invoke-interface {v13, v0}, Lbmn;->r(Ljava/util/Set;)Z

    move-result v14

    nop

    nop

    if-eqz v14, :cond_1c

    nop

    nop

    nop

    nop

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto :goto_b0

    nop

    :cond_1d
    iget-object v4, v2, Lbpv;->f:Lbtg;

    nop

    nop

    nop

    nop

    iget v5, v4, Lbtg;->b:I

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    :goto_b1
    if-ge v6, v5, :cond_20

    nop

    nop

    nop

    iget-object v14, v4, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    aget-object v14, v14, v6

    nop

    check-cast v14, Lbmn;

    nop

    nop

    nop

    invoke-virtual {v8, v14}, Lyj;->a(Ljava/lang/Object;)Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    if-nez v15, :cond_1e

    nop

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    nop

    nop

    nop

    nop

    if-nez v15, :cond_1e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto :goto_b2

    nop

    :cond_1e
    if-lez v13, :cond_1f

    nop

    nop

    nop

    iget-object v14, v4, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sub-int v15, v6, v13

    nop

    nop

    nop

    nop

    aget-object v16, v14, v6

    nop

    nop

    nop

    aput-object v16, v14, v15

    nop

    nop

    nop

    nop

    :cond_1f
    :goto_b2
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_b1

    nop

    nop

    nop

    nop

    :cond_20
    iget-object v6, v4, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sub-int v13, v5, v13

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    invoke-static {v6, v14, v13, v5}, Lrkm;->aR([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput v13, v4, Lbtg;->b:I

    nop

    nop

    nop

    nop
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    :try_start_1c
    monitor-exit v1

    nop

    nop

    nop

    :cond_21
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b3
    sub-int v11, v13, v5

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_b4
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b6
    if-eq v7, v1, :cond_22

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_b7
    const-string v5, "Recomposer:animation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_b8
    move-object v15, v8

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    :try_start_1d
    invoke-static {v2, v0}, Lbpv;->D(Lbpv;Ljava/lang/Exception;)V

    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    move-object v2, v9

    nop

    nop

    move-object/from16 v4, v21

    nop

    nop

    move-object v5, v10

    nop

    nop

    nop

    move-object v6, v11

    nop

    move-object v7, v14

    nop

    nop

    nop

    nop

    move-object v8, v15

    nop

    invoke-static/range {v1 .. v8}, Lbpt;->d(Lbpv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyj;Lyj;Lyj;Lyj;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    invoke-virtual {v11}, Lyj;->d()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_ba
    if-nez v0, :cond_23

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :cond_23
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_bb
    move-object/from16 v22, v12

    nop

    :goto_bc
    :try_start_1f
    invoke-virtual {v10}, Lyj;->d()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    goto/32 :goto_48

    nop

    nop

    :goto_bd
    goto/16 :goto_4c

    nop

    :catch_8
    move-exception v0

    nop

    nop

    :try_start_20
    invoke-static {v2, v0}, Lbpv;->D(Lbpv;Ljava/lang/Exception;)V

    move-object v1, v2

    nop

    nop

    move-object v2, v9

    nop

    nop

    move-object v4, v7

    nop

    nop

    move-object v5, v10

    nop

    nop

    nop

    move-object v6, v11

    nop

    nop

    nop

    move-object v7, v12

    nop

    nop

    invoke-static/range {v1 .. v8}, Lbpt;->d(Lbpv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyj;Lyj;Lyj;Lyj;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    :goto_be
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_c

    nop

    nop

    nop

    :catch_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const-wide/16 v15, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_c1
    move-object v15, v8

    nop

    nop

    nop

    nop

    :goto_c2
    :try_start_21
    invoke-virtual {v11}, Lyj;->d()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_c4
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c5
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c6
    move-object v8, v15

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_c7
    add-int v23, v23, v12

    nop

    nop

    :try_start_22
    aget-object v23, v0, v23

    nop

    check-cast v23, Lbmn;

    nop

    nop

    nop

    nop

    invoke-interface/range {v23 .. v23}, Lbmn;->g()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    move-object/from16 v21, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object v12, v14

    nop

    nop

    :try_start_23
    invoke-direct {v8, v5, v12}, Lbpu;-><init>(Lbmn;Lyj;)V

    invoke-static {v6, v8}, Lbxs;->i(Lubk;Lubk;)Lbxm;

    move-result-object v6

    nop

    nop

    nop
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :try_start_24
    invoke-virtual {v6}, Lbxt;->w()Lbxt;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_ca
    move-object/from16 v7, v21

    nop

    nop

    nop

    :goto_cb
    :try_start_25
    invoke-static {v2, v0}, Lbpv;->D(Lbpv;Ljava/lang/Exception;)V

    move-object v1, v2

    nop

    nop

    nop

    move-object v2, v9

    nop

    nop

    move-object v4, v7

    nop

    nop

    nop

    nop

    nop

    move-object v5, v10

    nop

    move-object v6, v11

    nop

    nop

    nop

    nop

    nop

    move-object v7, v12

    nop

    nop

    invoke-static/range {v1 .. v8}, Lbpt;->d(Lbpv;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyj;Lyj;Lyj;Lyj;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :try_start_26
    invoke-interface {v9}, Ljava/util/List;->clear()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_18

    nop

    nop

    :goto_cd
    iget-object v8, v1, Lbps;->g:Lyj;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_ce
    check-cast v0, Ljava/lang/Number;

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_cf
    move-object v7, v12

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_d0
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_d1
    move-object v12, v14

    nop

    :goto_d2
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    const/16 v1, 0x8

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_d4
    rsub-int/lit8 v11, v11, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_6d

    nop

    nop

    :goto_d7
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    :try_start_27
    invoke-interface {v9}, Ljava/util/List;->clear()V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_b
    move-exception v0

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    :catchall_c
    move-exception v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-nez v7, :cond_24

    nop

    nop

    goto/32 :goto_d2

    nop

    :cond_24
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_da
    add-int v16, v16, v8

    nop

    nop

    nop

    nop

    :try_start_28
    aget-object v16, v0, v16

    nop

    nop

    nop

    nop

    nop

    check-cast v16, Lbmn;

    nop

    nop

    nop

    invoke-interface/range {v16 .. v16}, Lbmn;->h()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    goto/32 :goto_9d

    nop

    nop

    :goto_db
    const-wide/16 v15, 0xff

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_dc
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_29
    iget-object v0, v0, Lbpv;->b:Lblb;

    nop

    iget-object v5, v0, Lblb;->a:Ljava/lang/Object;

    nop

    nop

    monitor-enter v5

    nop
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    :try_start_2a
    iget-object v6, v0, Lblb;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object v7, v0, Lblb;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iput-object v7, v0, Lblb;->b:Ljava/util/List;

    nop

    nop

    nop

    iput-object v6, v0, Lblb;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lblb;->d:Lbvm;

    nop

    invoke-virtual {v0, v4}, Lbvm;->set(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    nop

    move v8, v4

    nop

    nop

    nop

    nop

    :goto_dd
    if-ge v8, v7, :cond_25

    nop

    nop

    nop

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lbkz;

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lbkz;->b:Ltzy;

    nop

    nop

    nop

    nop

    nop
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    :try_start_2b
    iget-object v0, v0, Lbkz;->a:Lubk;

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    invoke-interface {v0, v10}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v7, v1, Lbps;->f:Lyj;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    not-int v11, v11

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object v10, v1, Lbps;->h:Lyj;

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

    :goto_e1
    iget-object v0, v1, Lbps;->e:Ljava/util/Set;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_e3
    goto :goto_e4

    nop

    nop

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2c
    invoke-static {v0}, Lrgw;->aj(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    :goto_e4
    invoke-interface {v9, v0}, Ltzy;->t(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/16 :goto_dd

    nop

    nop

    nop

    nop

    :cond_25
    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2

    :try_start_2d
    monitor-exit v5

    nop

    invoke-static {}, Lbxs;->h()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    move-object v12, v14

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    cmp-long v23, v23, v19

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :catch_a
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto :goto_e7

    nop

    :goto_ec
    goto/32 :goto_3d

    nop

    nop

    :goto_ed
    move-object/from16 v26, v11

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_ee
    const-wide/16 v19, 0x80

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_f0
    if-nez v12, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :cond_26
    :try_start_2e
    invoke-virtual {v12}, Lyj;->c()Z

    move-result v13

    nop

    if-ne v13, v7, :cond_27

    nop

    nop

    nop

    nop

    new-instance v7, Lbpn;

    nop

    nop

    invoke-direct {v7, v12, v5}, Lbpn;-><init>(Lyj;Lbmn;)V

    invoke-interface {v5, v7}, Lbmn;->m(Luaz;)V

    :cond_27
    :goto_f1
    invoke-interface {v5}, Lbmn;->s()Z

    move-result v7

    nop

    nop

    nop

    nop
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :try_start_2f
    invoke-static {v8}, Lbxt;->E(Lbxt;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    :try_start_30
    invoke-static {v6}, Lbpv;->C(Lbxm;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_6

    goto/32 :goto_d9

    nop

    nop

    nop

    nop
.end method
