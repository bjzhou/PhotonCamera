.class public final synthetic Liue;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Liuh;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Liuh;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Liue;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Liue;->a:Liuh;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    nop
.end method


# virtual methods
.method public final run()V
    .locals 18

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v4, v0, Liud;->c:D

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f9

    nop

    nop

    :goto_3
    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_5
    if-eq v5, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6
    new-instance v5, Liwq;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v4, Liwk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v4, v0, v9}, Liwk;-><init>(Liwh;Liwl;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_b6

    nop

    :goto_c
    iget-object v0, v4, Livx;->d:Livl;

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit v4

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v12, 0x10

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

    nop

    :goto_11
    iget-object v6, v2, Liuh;->E:Lits;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lscz;

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

    :goto_13
    iget-object v0, v0, Livc;->i:Liuk;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v8, v7, Livw;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v5, v0, v4}, Liwq;-><init>(Liwn;Liwk;)V

    goto/32 :goto_c9

    nop

    nop

    :goto_16
    iget-object v7, v0, Livx;->l:Litp;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    iget-object v6, v5, Lius;->a:Liwz;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_19
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a3

    nop

    nop

    :goto_1b
    iget-object v5, v5, Lius;->b:Liuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1c
    move-object v0, v10

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v1, Liue;->a:Liuh;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_1f
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v8, Litt;

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

    :goto_21
    const/16 v4, 0x79e

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    iget v5, v0, Livc;->c:I

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

    nop

    :goto_23
    iget-object v0, v2, Liuh;->h:Lngo;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lnpa;->b()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    new-instance v0, Livq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Livq;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-wide v4, v0, Liud;->k:D

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b5

    nop

    :goto_28
    new-instance v6, Liwk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_29
    sget-object v5, Lhmw;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw v0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Liwk;->b()Z

    move-result v5

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v8, v1, Litj;->c:Z

    nop

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

    :goto_2e
    move-object v0, v10

    nop

    :goto_2f
    goto/32 :goto_5f

    nop

    nop

    :goto_30
    goto/16 :goto_e8

    nop

    :goto_31
    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_32
    const-string v9, "%s"

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    iget-object v5, v5, Liuo;->a:Lhoh;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_35
    throw v0

    nop

    nop

    :goto_36
    goto/32 :goto_e2

    nop

    nop

    :goto_37
    iget v5, v0, Livc;->b:I

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v6}, Lits;->b()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0, v6, v11}, Livs;-><init>(Liwk;Livt;)V

    :goto_3b
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v7, :cond_4

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3d
    iput-object v4, v6, Liwz;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v2, Liuh;->E:Lits;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v12, 0x7a5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v10, v7, Livw;->d:Livs;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v5}, Livt;->start()V

    :goto_42
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_43
    add-int v17, v0, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v0, Landroid/media/AudioRecord;

    nop

    const/16 v15, 0x10

    nop

    const/16 v16, 0x2

    nop

    nop

    nop

    nop

    const/4 v13, 0x5

    nop

    nop

    nop

    const v14, 0xac44

    nop

    nop

    nop

    nop

    nop

    move-object v12, v0

    nop

    invoke-direct/range {v12 .. v17}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_95

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Livs;->a()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_45
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Livz;->b()V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, v0, Liud;->l:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_48
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v4, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v2, Liuh;->g:Lpdf;

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v1, v0, Liud;->b:Litj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v7, v5, Liuk;->j:I

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v0, Livw;->b:Liwq;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v0, Livx;->a:Lsdb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v6, v5, Lius;->a:Liwz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v5, v7, Livw;->b:Liwq;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_54
    const/4 v8, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_55
    invoke-static {v5}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v5, v0, Livc;->k:Liuo;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v4, Livs;->a:Lsdb;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Lits;->b()Ljava/lang/String;

    goto/32 :goto_bf

    nop

    nop

    :goto_5b
    iget-object v0, v0, Liud;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v9, v6, v0}, Liwl;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_14

    nop

    nop

    :goto_5d
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v11, v5, v0}, Livt;-><init>(Livq;Landroid/media/AudioRecord;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v0, v4, v5}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_64
    iput-boolean v3, v0, Liwq;->f:Z

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_66
    const-string v4, "No devicePoseManger"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object v5, v10

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput-object v5, v6, Liwz;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6b
    invoke-virtual {v6}, Liwz;->a()V

    goto/32 :goto_9d

    nop

    nop

    :goto_6c
    const/16 v4, 0x7a6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_6d
    invoke-interface/range {v9 .. v14}, Livl;->setMetaData(FIZIZ)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v5, :cond_7

    nop

    goto/32 :goto_31

    nop

    :cond_7
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v0, v4, Livx;->c:Livw;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v4, v4, Livx;->d:Livl;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v5, Ljava/lang/Boolean;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput-object v2, v0, Liud;->s:Liuh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_75
    const/4 v4, 0x2

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_76
    const v0, 0xac44

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_77
    if-ne v4, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_78
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object v5, v0

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_7a
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, v0, Liud;->j:Lptw;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_a
    goto/32 :goto_f5

    nop

    nop

    :goto_7d
    iget-object v7, v0, Livx;->e:Livy;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v0, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v9, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_80
    iput-object v0, v7, Livw;->d:Livs;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_81
    new-instance v6, Liwz;

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_82
    iget-object v0, v2, Liuh;->b:Livx;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_83
    if-eq v0, v5, :cond_b

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v0, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_68

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget v13, v1, Liue;->b:I

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_88
    add-int v0, v0, v1

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v0, v6, Liwk;->b:Liwh;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v7, v8}, Litp;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v6, v7, v5}, Liwz;->c(FF)V

    goto/32 :goto_e4

    nop

    nop

    :goto_8f
    invoke-virtual {v0, v8}, Liud;->i(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_90
    const/16 v14, 0x79f

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v6}, Liwk;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_92
    invoke-static {v0, v12, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_93
    invoke-interface {v0}, Livl;->startCapture()V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v4, v2, Liuh;->b:Livx;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_1d

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_96
    const-string v5, "record#prepareToRecord"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_98
    sget-object v5, Livw;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v5, v5, Livs;->b:Livt;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_9a
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_d
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_9c
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_9d
    iput-object v10, v5, Lius;->a:Liwz;

    nop

    :goto_9e
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget v11, v0, Livu;->c:I

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget v5, v5, Liuk;->k:I

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_a1
    const-string v1, "The drainer does not use the same encoder as the recorder"

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_a3
    iget-object v0, v7, Livw;->c:Liwn;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    sget-object v0, Livs;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_a5
    iget-boolean v0, v0, Livu;->e:Z

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_a6
    new-instance v9, Liwl;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const/4 v10, 0x0

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_a8
    if-nez v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d9

    nop

    nop

    :goto_aa
    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_ab
    const/4 v14, 0x0

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    sget-object v9, Liur;->a:[F

    nop

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

    nop

    :goto_af
    iput-object v4, v0, Liuk;->o:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    monitor-enter v4

    nop

    nop

    :try_start_3
    iput-boolean v3, v4, Livx;->f:Z

    nop

    nop

    nop

    nop

    nop

    iput v8, v4, Livx;->k:I

    nop

    nop

    nop

    nop

    nop

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, v4, Livx;->j:D

    nop

    monitor-exit v4

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iput-wide v4, v1, Litj;->b:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    new-instance v11, Livt;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-direct {v6, v5, v9}, Liwk;-><init>(Liwh;Liwl;)V

    goto/32 :goto_8a

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_8b

    nop

    nop

    :goto_b7
    iput-boolean v3, v5, Livt;->b:Z

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

    nop

    :goto_b8
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_b9
    iget-object v5, v2, Liuh;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v5, v0, Livc;->j:Lius;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move-object v0, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_bc
    if-eqz v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_10
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget v10, v0, Livu;->d:F

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-static {v12, v13, v14, v4, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v0, v2, Liuh;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_c0
    iget-object v5, v4, Liwk;->b:Liwh;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c1
    const-string v4, "record#startCapture"

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    if-nez v5, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_c4
    iget-object v5, v0, Livw;->d:Livs;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_c5
    iput-wide v4, v1, Litj;->a:D

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v0, v2, Liuh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v9, v4, Livx;->d:Livl;

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_c8
    iput-object v6, v5, Lius;->a:Liwz;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c9
    goto :goto_d0

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_cf

    nop

    nop

    :goto_cb
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_cf
    move-object v5, v10

    nop

    :goto_d0
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-static {v9, v11, v12, v5, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_d2
    goto/32 :goto_67

    nop

    nop

    :goto_d3
    iget-object v0, v7, Livw;->d:Livs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_d4
    iput v9, v6, Liwz;->c:I

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_d5
    iput-wide v4, v0, Liud;->m:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d6
    const-string v4, "Audio recorder could not be initialized"

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v4, v2, Liuh;->b:Livx;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_d8
    const-string v5, "ImaxCaptureModule"

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_d9
    int-to-float v7, v7

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

    :goto_da
    iget-object v0, v7, Livw;->b:Liwq;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v0, v2, Liuh;->d:Liud;

    nop

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

    :goto_dc
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_de
    invoke-interface {v4}, Livl;->getPreviewAsTexture()Lcom/google/android/libraries/vision/opengl/Texture;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_df
    const-string v1, "The drainer does not use the same encoder as the recorder"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e0
    const-string v12, "%s"

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e1
    invoke-direct {v6}, Liwz;-><init>()V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_e2
    return-void

    nop

    :goto_e3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    sget-object v5, Liur;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_e5
    iget-object v0, v2, Liuh;->l:Livc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    move v0, v3

    nop

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_e9
    if-nez v0, :cond_12

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {v0}, Lngo;->U()V

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v0, v4, Livx;->b:Livz;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_ec
    const/16 v9, 0x2901

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v7, v0, Livx;->c:Livw;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v0, v2, Liuh;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v4, Livx;->h:Livu;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_f0
    iget-object v0, v7, Livw;->d:Livs;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-nez v5, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-direct {v8, v0, v9, v10}, Litt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iput-boolean v3, v0, Liud;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v0, v2, Liuh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast v0, Lscz;

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

    :goto_f7
    iput v1, v0, Liud;->d:F

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v0, v2, Liuh;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    new-instance v0, Livs;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v0, v2, Liuh;->p:Landroid/os/ConditionVariable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop
.end method
