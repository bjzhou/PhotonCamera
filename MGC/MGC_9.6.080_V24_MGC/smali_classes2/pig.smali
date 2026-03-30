.class public final Lpig;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public a:Lpjq;

.field public final b:Lpjd;

.field public final c:Lhwy;


# direct methods
.method public constructor <init>(Lhwy;Lpnu;Lpjd;Lpcu;)V
    .locals 16

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1
    check-cast v4, Ljava/lang/Integer;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3
    iput-object v1, v0, Lpig;->a:Lpjq;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, v0, Lpig;->b:Lpjd;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6
    move v4, v3

    nop

    nop

    :goto_7
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    xor-int/2addr v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    move-object v11, v12

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_a
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3a

    nop

    nop

    :goto_c
    goto :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x16

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v4, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    move v6, v3

    nop

    :goto_14
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v2, p4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

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

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2}, La;->au(Z)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface/range {p2 .. p2}, Lpnu;->q()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1a
    invoke-interface {v2, v1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    move-object v14, v15

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

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    :goto_1e
    invoke-interface/range {p2 .. p2}, Lpnu;->r()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1f
    move-object v7, v8

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_24
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_26
    move-object/from16 v1, p3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lpig;->c:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Lpjp;->c()Lpjq;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface/range {p2 .. p2}, Lpnu;->p()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    move-object v6, v7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_31
    move-object v8, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v8}, La;->au(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_33
    move v4, v6

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_34
    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_35
    sget-object v10, Lpjr;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_36
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_37
    if-nez v7, :cond_0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v1, Lpjp;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x1

    nop

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

    :goto_3c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    nop

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

    :goto_3d
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_40
    invoke-direct/range {v4 .. v15}, Lpjp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_7

    nop

    :goto_43
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_45
    if-eq v3, v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_46
    invoke-static {v6}, La;->au(Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_48
    xor-int/2addr v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_49
    sget-object v12, Lpjr;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eq v3, v7, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v1, "fscrtl3A"

    nop

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

    :goto_4e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    xor-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_51
    move-object v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lpjp;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

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
    throw v0

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    nop

    invoke-static {v0}, Lpjp;->b(Lpjq;)Lpjp;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(Lphf;)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_1
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lphf;->b()Z

    move-result v1

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

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p1, p0, Lpig;->a:Lpjq;

    nop

    invoke-static {p1}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    move v0, v3

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_2
    :goto_8
    move v0, v4

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p1, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    if-nez v1, :cond_4

    nop

    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    iget-object v0, v0, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    :cond_3
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_a
    move v0, v4

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p1, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    nop

    iget-object v0, v0, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    :cond_5
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, p1, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {p1}, Lpjp;->c()Lpjq;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lpig;->c(Lpjq;)V

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v5, p0, Lpig;->a:Lpjq;

    nop

    invoke-static {v5}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v5

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    nop

    iget-object v0, v0, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_7
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_8
    :goto_d
    move v0, v4

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v5, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    goto :goto_f

    nop

    nop

    :cond_9
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_f
    move v0, v4

    nop

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, v5, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpig;->a:Lpjq;

    nop

    nop

    nop

    iget-object v0, v0, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_c

    nop

    :cond_b
    move v3, v4

    nop

    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v5, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v5}, Lpjp;->c()Lpjq;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lpig;->c(Lpjq;)V

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    :catchall_2
    move-exception v5

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Lphf;->c()Z

    move-result v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x1

    nop

    :try_start_4
    iget-object v5, p0, Lpig;->b:Lpjd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lpjd;->a()Lpjb;

    move-result-object v5

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v5, p1, v4}, Lpjb;->b(Lphf;Z)Lsui;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v5}, Lpjb;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lphf;->d()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    throw p1

    nop

    nop

    nop

    :catchall_4
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {v5}, Lpjb;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final declared-synchronized c(Lpjq;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object p1, p0, Lpig;->a:Lpjq;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Lpjq;Lpgd;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1, p2}, Lhwy;->F(Lpjq;Lpgd;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lpjq;Lpgd;)Z
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    :goto_4
    :try_start_0
    invoke-virtual {p1}, Lpjq;->b()Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    invoke-interface {p2}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    iget-object p1, p1, Lpjq;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lpjq;

    nop

    iget-object p2, p2, Lpjq;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p1, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :cond_2
    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop
.end method

.method public final declared-synchronized f(Lpjq;Lpgd;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1, p2}, Lhwy;->G(Lpjq;Lpgd;)Z

    move-result p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    return p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
