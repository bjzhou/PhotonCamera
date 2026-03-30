.class public final Lpko;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lplc;

.field private final b:Lpln;

.field private final c:Lows;

.field private final d:Landroid/os/Handler;

.field private final e:Lpdf;

.field private final f:Lpcu;

.field private final g:I

.field private final h:Lrss;

.field private i:Lprh;

.field private j:Ljava/util/List;

.field private k:Z

.field private l:Z

.field private final m:Lpic;

.field private final n:Lnar;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Lprh;)V
    .locals 16

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3
    move-object v9, v3

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    iget-boolean v2, v1, Lpko;->k:Z

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v0, v4}, Lplj;-><init>(Lprh;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v8 .. v15}, Lplm;-><init>(Lpld;Lpln;Landroid/os/Handler;Lpdf;Lpcu;Lnar;Lrss;)V

    :try_start_0
    monitor-enter v2

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v3, v2, Lplc;->c:Lpjv;

    nop

    nop

    nop

    nop

    iget-boolean v0, v2, Lplc;->g:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    iput-object v6, v2, Lplc;->d:Lpjv;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lplc;->f()Lpjy;

    move-result-object v0

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2, v6}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_9
    invoke-direct {v7, v5}, Lpkp;-><init>(Landroid/view/Surface;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iget-object v13, v1, Lpko;->f:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_c
    move-object v15, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget-object v2, v1, Lpko;->e:Lpdf;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Lpdf;->g()V

    :goto_f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_77

    nop

    nop

    :goto_13
    iget-object v7, v1, Lpko;->h:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    move-object v8, v15

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lpmx;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Lplc;->close()V

    :goto_1a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_47

    nop

    nop

    :goto_1c
    invoke-interface {v3, v4, v0}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_50

    nop

    nop

    :goto_1e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Lplj;

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

    :goto_20
    invoke-static {v3}, Lqrg;->B(Z)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v1, Lpko;->h:Lrss;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v4, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_23
    iget-boolean v0, v1, Lpko;->l:Z

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_24
    invoke-direct {v4, v0, v3}, Lplj;-><init>(Lprh;I)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v2, v0, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    :goto_26
    iget-object v0, v1, Lpko;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, v1, Lpko;->e:Lpdf;

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

    nop

    :goto_28
    new-instance v15, Lplm;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_29
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_2a
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_61

    nop

    :goto_2b
    iput-object v0, v1, Lpko;->i:Lprh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2c
    new-instance v7, Lpkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_2d
    if-nez v5, :cond_7

    nop

    goto/32 :goto_1e

    nop

    :cond_7
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_16

    nop

    nop

    :goto_31
    if-eqz v0, :cond_8

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

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v1, Lpko;->i:Lprh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_33
    move-object v3, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v10, v1, Lpko;->b:Lpln;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, v1, Lpko;->a:Lplc;

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_37
    invoke-interface {v0}, Lprh;->a()Landroid/view/Surface;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_38
    iget-boolean v0, v1, Lpko;->k:Z

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
    iget-object v2, v1, Lpko;->i:Lprh;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_39

    nop

    nop

    :goto_3c
    const-string v6, "CaptureSessionState#setRequestProcessor"

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

    :goto_3d
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_9
    goto/32 :goto_6f

    nop

    nop

    :goto_3e
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_2
    invoke-interface {v0}, Lpjy;->b()V

    :goto_3f
    iget-object v0, v2, Lplc;->a:Lpjw;

    nop

    nop

    invoke-virtual {v0}, Lpjw;->b()V
    :try_end_2
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v2, :cond_b

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_b
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v2, v3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v3, v4

    nop

    :goto_46
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface/range {p1 .. p1}, Lprh;->close()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v2, Lpuq;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v4, Lplj;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4b
    iget-object v14, v1, Lpko;->n:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v12, v1, Lpko;->e:Lpdf;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4d
    goto/32 :goto_62

    nop

    nop

    :goto_4e
    iget-object v0, v1, Lpko;->e:Lpdf;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v7, v6

    nop

    :goto_50
    goto/32 :goto_36

    nop

    nop

    :goto_51
    iget-object v0, v1, Lpko;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v7}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_53
    iget-boolean v2, v1, Lpko;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_6b

    nop

    nop

    :goto_55
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_56
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_57
    move-object/from16 v0, p1

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

    :goto_58
    iget-object v2, v1, Lpko;->m:Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_59
    iget-object v2, v2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v2, v1, Lpko;->c:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5b
    if-eqz v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_d
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x9

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5d
    iget-object v3, v2, Lplc;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v2, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5f
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_60
    goto/16 :goto_1a

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    nop
    :try_end_4
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_43

    nop

    :goto_62
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v1, Lpko;->c:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1, v0}, Lpko;->c(Ljava/util/List;)V

    :goto_65
    goto/32 :goto_38

    nop

    nop

    :goto_66
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const-string v3, "cameraCaptureSession#close"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_69
    instance-of v5, v0, Lpmx;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    :goto_6b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v2}, Lqrg;->B(Z)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto :goto_71

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_70
    move-object v9, v4

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v2, :cond_e

    nop

    goto/32 :goto_30

    nop

    :cond_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_74
    iput-object v0, v1, Lpko;->i:Lprh;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_75
    if-eqz v0, :cond_f

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_76
    add-int v0, v0, v1

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

    :goto_77
    iget-object v0, v1, Lpko;->i:Lprh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v7, Lpgw;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7a
    const-string v4, "Failed to submit queued requests."

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v11, v1, Lpko;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v2}, Lows;->b()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lplc;Lpln;Landroid/os/Handler;Lpdf;Lpcu;Lnar;Lpic;Lrss;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lpko;->i:Lprh;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p1

    nop

    :try_start_0
    sget p2, Lpju;->d:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 p3, p2, 0x1

    nop

    sput p3, Lpju;->d:I

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const-string p1, "CaptureSessionState"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p8, p0, Lpko;->h:Lrss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Lpko;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-direct {p1}, Lows;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p5, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iput-object p7, p0, Lpko;->m:Lpic;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lpko;->k:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    iput-object p4, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const-class p1, Lpju;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Lows;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lpko;->a:Lplc;

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

    :goto_11
    iput-object p6, p0, Lpko;->n:Lnar;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    iput-object p1, p0, Lpko;->f:Lpcu;

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

    :goto_13
    iput-object p1, p0, Lpko;->c:Lows;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lpko;->l:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    iput-object v0, p0, Lpko;->j:Ljava/util/List;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p3, p0, Lpko;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p2, p0, Lpko;->b:Lpln;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()Lows;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lows;->c()Lows;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpko;->c:Lows;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpko;->a:Lplc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lplc;->g()V

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpko;->i:Lprh;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    iput-object v1, p0, Lpko;->i:Lprh;

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpko;->j:Ljava/util/List;

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    iput-boolean v1, p0, Lpko;->k:Z

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_f
    iget-object p0, p0, Lpko;->c:Lows;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method final declared-synchronized c(Ljava/util/List;)V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v2, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "#finalizeOutputConfigurations"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_4
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

    nop

    nop

    :goto_5
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v1, p1}, Lprh;->d(Ljava/util/List;)V

    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    nop

    const-string v3, "Finalized outputs for "

    nop

    invoke-static {p0, v3}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lpko;->b:Lpln;

    nop

    nop

    nop

    invoke-virtual {v1, p0, p1}, Lpln;->a(Lpko;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_13

    nop

    nop

    :catchall_1
    move-exception p1

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

    :goto_b
    return-void

    nop

    :goto_c
    :try_start_3
    iput-object v2, p0, Lpko;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpko;->e:Lpdf;

    nop

    invoke-interface {v0}, Lpdf;->g()V

    throw p1

    nop

    :cond_1
    :goto_d
    iget-object p1, p0, Lpko;->f:Lpcu;

    nop

    nop

    nop

    nop

    const-string v0, "Ignoring finalizeOutputConfigurations. "

    nop

    nop

    nop

    nop

    nop

    const-string v1, " is closed."

    nop

    nop

    invoke-static {p0, v0, v1}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpcu;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-boolean v1, p0, Lpko;->k:Z

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpko;->c:Lows;

    nop

    invoke-virtual {v1}, Lows;->b()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Lpko;->i:Lprh;

    nop

    if-nez v1, :cond_0

    nop

    iput-object p1, p0, Lpko;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_10
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_c

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    :try_start_5
    iget-object v3, p0, Lpko;->f:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-interface {v3, p1}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_13
    :try_start_6
    iput-object v2, p0, Lpko;->j:Ljava/util/List;

    nop

    nop

    nop

    iget-object p1, p0, Lpko;->e:Lpdf;

    nop

    invoke-interface {p1}, Lpdf;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    throw p1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "WARNING: Failed to finalize outputs for "

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final declared-synchronized d(Lprh;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, " is Closed."

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lpko;->c:Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lows;->d(Lpci;)V

    invoke-virtual {p0}, Lpko;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lprh;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v1, 0x1c

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    const-string v1, " failed to configure."

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lpko;->c:Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lows;->d(Lpci;)V

    invoke-virtual {p0}, Lpko;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop
.end method

.method public final declared-synchronized f(Lprh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0, p1}, Lpko;->3fd9578e124c68aa49885b22b61b4ec8m(Lprh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method final declared-synchronized g()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpko;->l:Z

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    invoke-static {v0}, Lqrg;->B(Z)V

    iput-boolean v1, p0, Lpko;->l:Z

    nop

    iget-object v0, p0, Lpko;->i:Lprh;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, v0}, Lpko;->3fd9578e124c68aa49885b22b61b4ec8m(Lprh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v0, 0x1

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

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    goto/32 :goto_b

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_c
    monitor-exit p0

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

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop
.end method

.method final h()V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpko;->e:Lpdf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_25

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_f

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lpko;->a:Lplc;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lpko;->e:Lpdf;

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

    :goto_e
    iget-object v0, p0, Lpko;->e:Lpdf;

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lplc;->g()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2

    nop

    nop

    :goto_12
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    nop

    const-string v2, "Encountered an error while shutting down "

    nop

    nop

    nop

    invoke-static {p0, v2}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v1, v2, v0}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v3, "#shutdown"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    iget-object v1, p0, Lpko;->e:Lpdf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xe

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-enter p0

    nop

    :try_start_2
    iget-object v0, p0, Lpko;->i:Lprh;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpko;->i:Lprh;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpko;->j:Ljava/util/List;

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    iput-boolean v1, p0, Lpko;->k:Z

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lpko;->c:Lows;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_3
    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    invoke-virtual {p0}, Lpko;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shutdown"

    nop

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "RequestProcessor#disconnect"

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    const-string v2, "captureSession#stopRepeating"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {v0}, Lprh;->e()V

    iget-object v1, p0, Lpko;->e:Lpdf;

    nop

    nop

    nop

    nop

    const-string v2, "captureSession#abortCaptures"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {v0}, Lprh;->c()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lprg; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    throw v0

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public final declared-synchronized i()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v1, " is Active."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized j()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :cond_0
    :goto_1
    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    :goto_5
    monitor-exit p0

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

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :cond_1
    :try_start_2
    iput-object v1, v0, Lplc;->c:Lpjv;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lplc;->d:Lpjv;

    nop

    iput-boolean v2, v0, Lplc;->f:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lplc;->f()Lpjy;

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v2, v0, Lplc;->b:Lpcu;

    nop

    const-string v3, "Failed to submit queued requests."

    nop

    nop

    nop

    invoke-interface {v2, v3, v1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lplc;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1b

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, " is Ready."

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lpko;->f:Lpcu;

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lpko;->a:Lplc;

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Lpfi; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-boolean v1, v0, Lplc;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    iget-boolean v1, v0, Lplc;->f:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    :cond_3
    iget-object v1, v0, Lplc;->d:Lpjv;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iput-boolean v2, v0, Lplc;->f:Z

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const-string v1, "CaptureSession-"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v0, 0x15

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lpko;->g:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop
.end method
