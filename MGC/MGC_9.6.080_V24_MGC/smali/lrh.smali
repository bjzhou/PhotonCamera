.class public final Llrh;
.super Llrg;
.source "PG"


# instance fields
.field private final a:Llqx;

.field private final b:Ljrj;

.field private final i:Lpdf;

.field private final j:Llqy;


# direct methods
.method public constructor <init>(Llqw;Ljava/util/concurrent/Executor;Llqo;Llqx;Llxa;Llqy;Ljrj;Lpdf;)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {v0 .. v5}, Llrg;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;ILlxa;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v2, p2

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

    :goto_3
    iput-object p7, p0, Llrh;->b:Ljrj;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Llrh;->a:Llqx;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    move-object v3, p3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    move-object v5, p5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

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

    :goto_c
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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_e
    move-object v0, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p8, p0, Llrh;->i:Lpdf;

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

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p6, p0, Llrh;->j:Llqy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 17

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    monitor-enter v4

    nop

    nop

    :try_start_0
    iget-object v5, v6, Ljrj;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Ljrj;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_91

    nop

    nop

    :goto_1
    iget-object v3, v3, Llqw;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v7, v5, Lsnm;->c:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, v6, Ljrj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lsno;->a:Lsno;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, v2, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    double-to-float v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    cmpg-double v2, v3, v8

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_b
    monitor-enter v6

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v7, v5, Ljrj;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_0

    nop

    nop

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Ljrj;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v5, v5, Ljrj;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_c
    or-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v7, Lsno;

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

    :goto_e
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iget v8, v5, Lsnm;->b:I

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_12
    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_14
    or-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_15
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    or-int/lit8 v8, v8, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_17
    iput v8, v5, Lsnm;->b:I

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move/from16 v16, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v5, Lsnm;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1b
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_1c
    check-cast v3, Lsnm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    new-instance v5, Ljrh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v2, Ljrh;->a:Ljri;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Llrh;->i:Lpdf;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_20
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v5, v4, Lsnm;->b:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v4, Lsnm;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_63

    nop

    :goto_27
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, v0, Llrh;->j:Llqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2a
    throw v0

    nop

    :catchall_1
    move-exception v0

    nop

    :try_start_3
    monitor-exit v6

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2c
    move-object v5, v4

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, v2, Llqy;->b:Lpdf;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v5, v3, v4}, Llqx;->d(Llqw;D)Llqw;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2f
    sget-object v2, Llqy;->a:Lsdb;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_30
    iput v8, v7, Lsno;->b:I

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_32
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v5, v4, Lsno;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_34
    iget v7, v5, Lsnm;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_37
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_38
    iget v7, v2, Ljrh;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-wide v7, v4, Lsnm;->g:J

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

    :goto_3b
    iget-wide v7, v2, Ljrh;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_3c
    iput-wide v2, v4, Lsno;->c:J

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3d
    iget-object v2, v0, Llrh;->h:Llqo;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v5, v0, Llrh;->e:Llqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3f
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Lsno;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v7, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v5, Lprv;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_45
    iget v8, v7, Lsno;->b:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v2, Lrsx;

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

    :goto_47
    sget-object v6, Ljri;->c:Ljri;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_48
    or-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_49
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_4b
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4d
    iget-object v6, v0, Llrh;->b:Ljrj;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v7, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/16 v5, 0xf74

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v7, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v4, :cond_4

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

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v5, v6, v2, v8, v9}, Ljrh;-><init>(Ljri;FJ)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v11

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_55
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7e

    nop

    nop

    :goto_56
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v3, v0, Llrh;->e:Llqw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v2}, Lpdf;->g()V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_5c
    sub-long/2addr v8, v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5d
    move-object v5, v4

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

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

    :goto_5f
    float-to-double v3, v3

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_60
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v2, v5}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_62
    throw v0

    nop

    :goto_63
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v7, v5, Lsnm;->b:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_65
    iget v13, v3, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_66
    const v1, 0x10

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

    :goto_67
    or-int/lit8 v8, v8, 0x8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static/range {v8 .. v16}, Lcom/google/android/apps/camera/processing/imagebackend/ImgUtilNative;->measureSharpnessOnEdgeGivenCropNative(IILjava/lang/Object;IIIIII)F

    move-result v3

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_6b
    iput v7, v5, Lsnm;->b:I

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

    :goto_6c
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_6e
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v2, Ljrh;

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

    :goto_71
    iput v7, v5, Lsnm;->d:F

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_73
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput v7, v5, Lsnm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v3, Lsnm;->a:Lsnm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_76
    iput v7, v5, Lsnm;->e:F

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

    nop

    :goto_77
    invoke-virtual {v2, v1, v3}, Llqo;->b(Lprw;Ljava/util/concurrent/Executor;)V

    :goto_78
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_79
    const-string v5, "invalid metric value from LS metric calculation."

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v2, Lscz;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v2, v2, Llqy;->b:Lpdf;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_7c
    or-int/lit8 v7, v7, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_7d
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_7f
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget v5, v4, Lsnm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_81
    iget-object v4, v3, Ltkb;->b:Ltkg;

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

    nop

    :goto_82
    invoke-interface {v4}, Lprw;->g()Ljava/util/List;

    move-result-object v5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_83
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_84
    iget-object v1, v0, Llrh;->i:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    or-int/lit8 v5, v5, 0x10

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_87
    invoke-interface {v4}, Lprw;->b()I

    move-result v9

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iput-wide v5, v7, Lsno;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_89
    iput v7, v5, Lsnm;->f:F

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_8a
    iput v5, v4, Lsno;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v5, Lsnm;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8c
    iget-object v6, v5, Ljrj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget v15, v3, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_90
    iget-object v1, v1, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_91
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_93
    check-cast v4, Lsno;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget v14, v3, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_95
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget v7, v5, Lsnm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_97
    iget-object v1, v0, Llrh;->a:Llqx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_99
    const-string v2, "LuckyShot"

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

    nop

    :goto_9a
    iget-object v4, v3, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_9b
    invoke-interface {v4}, Lprw;->c()I

    move-result v8

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_9d
    invoke-interface {v2, v5}, Lscz;->s(Ljava/lang/String;)V

    :goto_9e
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iput v7, v5, Lsnm;->b:I

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v5, "LuckyShotScore"

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v3, v0, Llrh;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_a3
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_a4
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_a5
    const-wide/16 v8, 0x0

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

    :goto_a6
    check-cast v5, Lsnm;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-lez v2, :cond_9

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const/4 v7, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast v5, Lsnm;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_aa
    iget-object v5, v0, Llrh;->b:Ljrj;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_ab
    if-eqz v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_72

    nop

    nop

    nop

    nop
.end method
