.class public final synthetic Lgki;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgv;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgki;->a:Ljava/lang/Object;

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

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput p2, p0, Lgki;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;)V
    .locals 11

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, v0, Lmpy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lkkf;

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_6
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lnne;->l:Lnne;

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

    :goto_a
    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    if-ltz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_2
    :goto_c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1, v3}, Lscz;->s(Ljava/lang/String;)V

    :goto_10
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lfzk;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lnyq;->E:Landroid/hardware/camera2/CaptureResult$Key;

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

    nop

    :goto_14
    iget v0, p0, Lgki;->b:I

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_16
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, v0, Lmpy;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lkkf;->f:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lmpy;->a:Lsdb;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v1, Lmpy;->a:Lsdb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_20
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_23
    goto/16 :goto_a8

    nop

    nop

    nop

    :goto_24
    :try_start_0
    invoke-interface {p1, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    move-object v5, p0

    nop

    nop

    nop

    check-cast v5, Lgqy;

    nop

    iget-wide v5, v5, Lgqy;->c:J

    nop

    sub-long/2addr v3, v5

    nop

    nop

    move-object v5, p0

    nop

    nop

    nop

    nop

    check-cast v5, Lgqy;

    nop

    iget-object v5, v5, Lgqy;->a:Lpak;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    nop

    check-cast p0, Lgqy;

    nop

    nop

    nop

    iget-boolean p0, p0, Lgqy;->b:Z

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr p0, v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v1, v3, v4, p0}, Lpak;->o(Lprw;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    invoke-interface {p1}, Lpge;->close()V

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_25
    cmp-long v3, v5, v7

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

    :goto_26
    invoke-direct {v1, p0, v4}, Lmom;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_89

    nop

    nop

    :goto_27
    iget-object v1, v0, Lmpy;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne v0, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lkkf;->h:Lpuq;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Lljo;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    :cond_6
    goto/32 :goto_b9

    nop

    nop

    :goto_30
    if-ne v0, v2, :cond_7

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_7
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_31
    sget-object v1, Lnyq;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    const-string v3, "metadata is null"

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    :catchall_0
    move-exception p0

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

    :goto_36
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_37
    new-array v0, v2, [Lpci;

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

    nop

    nop

    :goto_38
    aput-object p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_39
    invoke-direct {v4, v5, v2, v0, v1}, Loxm;-><init>(Loxn;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;I)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    cmp-long v3, v5, v7

    nop

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

    :goto_3b
    invoke-direct {v0, p0, p1, v1}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_8
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v0}, Lpuq;->a(Lpro;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, p1}, Lljo;->b(Lpge;)Z

    goto/32 :goto_61

    nop

    nop

    :goto_41
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_42
    iget-object v1, p0, Lkkf;->c:Lpcm;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v1}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_9

    nop

    invoke-interface {v0}, Lpro;->b()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v1

    nop
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_44
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v1, :cond_a

    nop

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

    :cond_a
    :try_start_3
    invoke-interface {p1}, Lpge;->close()V

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, v0, Lmpy;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v2, v0, v4, v3}, Lodu;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_48
    check-cast p0, Lgkk;

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_49
    sget v3, Lkkf;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    :goto_4b
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v0, p0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Lfzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d

    nop

    nop

    :goto_50
    move-object v5, p0

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_51
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_28

    nop

    nop

    :goto_52
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v3, v4, v2, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_54
    goto/32 :goto_18

    nop

    nop

    :goto_55
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto :goto_54

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_57
    cmp-long v3, v5, v7

    nop

    nop

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

    :goto_58
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_59
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v0, Lmpy;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v1, Lmom;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v3, v0, Lmpy;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_61
    return-void

    nop

    :goto_62
    goto/32 :goto_3f

    nop

    nop

    :goto_63
    iget-object v5, v5, Lljl;->f:Loxn;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v1, p0, Lkkf;->e:Lgkg;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v3, v0, Lmpy;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_66
    if-eqz v1, :cond_c

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    return-void

    nop

    :goto_68
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_4
    invoke-interface {p1}, Lpge;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v3, "Error getting physical camera ID"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v3, :cond_d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_6e
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_71
    if-gtz v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_72
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_74
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_75
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v1

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

    :goto_76
    const v1, 0x11

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_77
    sget-object v1, Lnyq;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_78
    const v3, 0x3ce56042    # 0.028f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-ne v0, v3, :cond_11

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_10

    nop

    nop

    :goto_7d
    goto/32 :goto_6e

    nop

    nop

    :goto_7e
    const/16 v3, 0x1217

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7f
    monitor-enter v0

    nop

    nop

    nop

    :try_start_5
    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lgqy;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgqy;->e:Lphh;

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_80
    const/4 v1, 0x0

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

    :goto_81
    iget-object v0, v0, Lgqy;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_84
    invoke-virtual {v1}, Lows;->b()Z

    move-result v1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object p1, v0, Lmpy;->h:Lowu;

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

    nop

    nop

    :goto_86
    const/16 v0, 0xbc3

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v0, Lgqy;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_89
    invoke-virtual {p1, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_8b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p1, v0, Lmpy;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8d
    if-lez v0, :cond_12

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_12
    goto/32 :goto_2

    nop

    :goto_8e
    check-cast p0, Lfzk;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-gtz v3, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_13
    :goto_92
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_93
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {v0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_95
    iget-object v3, v0, Lmpy;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v0, Lgkj;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    cmp-long v3, v5, v9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_99
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9a
    new-instance v2, Lodu;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9b
    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v3, 0x2

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

    :goto_9d
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_9e
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const-string v0, "metadata is null"

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    add-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v3, v0, Lmpy;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v1, v3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    return-void

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a6
    goto :goto_a7

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a7
    throw p0

    nop

    :goto_a8
    monitor-exit v0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a9
    if-ne v0, v3, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v1, v0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {v1, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_7c

    nop

    nop

    :goto_ae
    const/16 v4, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v1, v0}, Lgkg;->a(Lnne;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b0
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_b2
    return-void

    nop

    nop

    :goto_b3
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_b4
    if-ne v0, v3, :cond_15

    nop

    goto/32 :goto_62

    nop

    :cond_15
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_b5
    new-instance v0, Llcc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    check-cast v5, Lljl;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_b7
    invoke-direct {v0, p0, p1}, Lgkj;-><init>(Lgkk;Lpge;)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_b8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    sget-object p0, Lkkf;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_ba
    const/16 v4, 0xbc4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-direct {v0, p0, p1, v1, v3}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_bd
    const/16 v3, 0x1218

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_be
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_b2

    nop

    nop

    :goto_c0
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_c1
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_c2
    const-string v3, "timestamp not exist"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c3
    sget-object v2, Lkkf;->a:Lsdb;

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

    :goto_c4
    new-instance v4, Loxm;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_c5
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    cmp-long v3, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_c8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_c9
    iget-object p0, p0, Lgki;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-interface {v2, v1, v0}, Likv;->p(Lpnx;Lpro;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v2, p0, Lkkf;->g:Loyn;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object p0, p0, Lgkk;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_cd
    iget-object v2, p0, Lkkf;->d:Likv;

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_ce
    mul-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_cf
    return-void

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_d1
    if-nez v1, :cond_16

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop
.end method
