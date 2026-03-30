.class public final Lbxs;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a()Lbxt;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    sget-object v0, Lbyg;->b:Lbvz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lbvz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast v0, Lbxt;

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

    nop
.end method

.method public static final b()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lbyg;->b:Lbvz;

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

    :goto_3
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lbvz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final c(Lbxt;)Lbxt;
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    instance-of v0, p0, Lbzc;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p0, Lbzb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lbxt;->w()Lbxt;

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, v0, Lbzc;->a:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lbwd;->a()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_12
    cmp-long v2, v2, v4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    iget-wide v2, v0, Lbzb;->m:J

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lbzc;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    cmp-long v2, v2, v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, v1, v0}, Lbyg;->a(Lbxt;Lubk;Z)Lbxt;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    move-object v0, p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    check-cast v0, Lbzb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Lbwd;->a()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Lbzb;->k:Lubk;

    nop

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

    :goto_21
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    iget-wide v2, v0, Lbzc;->b:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public static final d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lbxt;->e()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lbyg;->b()Lbxt;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static final e(Lubk;Luaz;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    check-cast v2, Lbxm;

    nop

    :goto_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v9, Lbzb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    instance-of v1, v0, Lbxm;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, v1, Lbzb;->k:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lbxt;->d()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v3, v1, Lbzb;->l:Lubk;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    iget-object v0, v1, Lbzb;->k:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Lbxt;->b(Lubk;)Lbxt;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object p0, v9

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_0
    invoke-virtual {p0}, Lbxt;->w()Lbxt;

    move-result-object v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p1}, Luaz;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Lbxt;->E(Lbxt;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_2a

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_f
    iget-wide v3, v1, Lbzb;->m:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    invoke-interface {p1}, Luaz;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_12
    iget-object v3, v1, Lbzb;->l:Lubk;

    nop

    nop

    nop

    :try_start_3
    invoke-static {p0, v0}, Lbyg;->y(Lubk;Lubk;)Lubk;

    move-result-object p0

    nop

    nop

    iput-object p0, v1, Lbzb;->k:Lubk;

    nop

    invoke-static {v2, v3}, Lbyg;->q(Lubk;Lubk;)Lubk;

    move-result-object p0

    nop

    iput-object p0, v1, Lbzb;->l:Lubk;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Luaz;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v5, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v1, v0, Lbzb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_16
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_1e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lbwd;->a()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    cmp-long v3, v3, v5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lbyg;->b:Lbvz;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    invoke-direct/range {v3 .. v8}, Lbzb;-><init>(Lbxm;Lubk;Lubk;ZZ)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    instance-of v1, v0, Lbxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_24
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_25
    return-object p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    :try_start_4
    invoke-static {v0}, Lbxt;->E(Lbxt;)V

    throw p1

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_26
    check-cast v0, Lbxt;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lbxt;->d()V

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    move-object v3, v9

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

    :goto_2c
    move-object v2, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, v1, Lbzb;->k:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    iput-object v3, v1, Lbzb;->l:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v6, 0x0

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

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    throw p1

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_36
    if-nez p0, :cond_6

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Lbvz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v8, 0x0

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

    nop

    :goto_39
    move-object v4, v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3c
    check-cast v1, Lbzb;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public static final f(Lubo;)Lbxp;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lbxr;-><init>(Lubo;)V

    goto/32 :goto_10

    nop

    nop

    :goto_1
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    :goto_4
    sget-object v0, Lbyg;->a:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit v0

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

    :goto_6
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lbyg;->g:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {v1, p0}, Lrkm;->az(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    sput-object v1, Lbyg;->g:Ljava/util/List;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lbyg;->m(Lubk;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lbxr;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final g(Lbxt;Lbxt;Lubk;)V
    .locals 0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lbzb;->k:Lubk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of p1, p0, Lbzc;

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

    :goto_8
    const-string p2, "Non-transparent snapshot was reused: "

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lbxt;->d()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lbzc;->a:Lubk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    :goto_e
    instance-of p1, p0, Lbzb;

    nop

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Lbxt;->E(Lbxt;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lbzb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p0, p1, :cond_2

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lbzc;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final h()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lbyg;->r()V

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

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

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lbyg;->i:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lbxl;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lbxm;->f:Lyj;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v1}, Lyj;->c()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static final i(Lubk;Lubk;)Lbxm;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    check-cast v0, Lbxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    invoke-static {}, Lbyg;->b()Lbxt;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0, p1}, Lbxm;->a(Lubk;Lubk;)Lbxm;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "Cannot create a mutable snapshot of an read-only snapshot"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_16
    const v0, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v1, v0, Lbxm;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static final j(Lubk;)Lbxt;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lbxt;->b(Lubk;)Lbxt;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {}, Lbyg;->b()Lbxt;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
