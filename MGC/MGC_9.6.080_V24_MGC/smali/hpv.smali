.class public final synthetic Lhpv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lhpv;->c:I

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

    :goto_1
    iput-wide p1, p0, Lhpv;->a:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-wide p2, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Lhpv;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 12

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Lnsr;->q()V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    sget-object v2, Lqhh;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lqhg;

    nop

    nop

    nop

    nop

    iget-wide v6, v6, Lqhg;->a:J

    nop

    nop

    nop

    cmp-long v6, v6, v3

    nop

    if-gtz v6, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lntu;

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

    :goto_4
    iget-object p0, p0, Lhsz;->a:Lhta;

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

    :goto_5
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_1
    move-object v4, p0

    nop

    nop

    check-cast v4, Lkhi;

    nop

    iget-object v4, v4, Lkhi;->a:Lkhm;

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    invoke-static {v2, v0}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, v4, Lkhm;->d:Lsay;

    nop

    nop

    nop

    check-cast p0, Lkhi;

    nop

    nop

    nop

    iget-object p0, p0, Lkhi;->b:Lkhq;

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_57

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lhpv;->a:J

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_8
    if-lt v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b2

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkwh;->h:Lpdf;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8e

    nop

    nop

    :goto_f
    const/16 v3, 0xa65

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_10
    iget-wide v3, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-wide v8, v0

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

    :goto_13
    sget-object v4, Lqhh;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_14
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_82

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v0, v1}, Lhta;->e(J)V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_18
    check-cast v4, Lscz;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lgsp;->a:Lgsr;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_1f
    sget-object v2, Ljvk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_21
    invoke-interface/range {v4 .. v9}, Lscz;->A(Ljava/lang/String;JJ)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_24
    check-cast p0, Lkid;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "/cuttleface_remaining_time_second"

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v4, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    sget-object v4, Lkhq;->a:Lsdb;

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

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_8b

    nop

    nop

    :goto_2a
    check-cast p0, Lntu;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_70

    nop

    :catch_0
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v3, Lkwh;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xc39

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const-string v3, "Error waiting for frame %d"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    :goto_2c
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_2d
    move-wide v6, v10

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v3, Lkhi;->a:Lkhm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v2, v0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Ljvj;->h:Lsuu;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lhsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    invoke-static {v0, v1}, Lrrf;->J(J)[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v0, Lhpw;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_39
    check-cast p0, Ltcv;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Ltcv;->d:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3c
    iget-wide v3, p0, Lhpv;->a:J

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_3d
    invoke-interface {v0, v1, v2}, Lmyj;->i(J)V

    goto/32 :goto_a1

    nop

    nop

    :goto_3e
    invoke-direct {v2, p0, v0, v1, v3}, Lhpv;-><init>(Ljava/lang/Object;JI)V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_41
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_42
    iget-object p0, p0, Ljuq;->f:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_43
    if-gtz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v5, "MomentsMicrovideoSession got ann invalid range: %d to %d"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_46
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v2, Lhpv;

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

    :goto_48
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_49
    sub-long/2addr v1, v3

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_4a
    const-string v2, "/night_sight_shooting_duration_ms"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v3, "Trying to correct timestamp to %d but it was already set as %d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_4c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a7

    nop

    :goto_4d
    iget-object v0, v0, Lgsr;->a:Lmyj;

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

    :goto_4e
    iget-object v2, p0, Ljvj;->h:Lsuu;

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_4f
    goto/16 :goto_1c

    nop

    nop

    :goto_50
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_54
    const-string v3, "Couldn\'t submit frame %s."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_55
    cmp-long v4, v10, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_56
    check-cast v2, Lscz;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_57
    throw p0

    nop

    :pswitch_3
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v5, 0x45c

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5a
    iget v0, p0, Lhpv;->c:I

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_41

    nop

    nop

    :goto_5b
    const-wide/16 v2, 0x3a98

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

    nop

    :goto_5c
    const-string v2, "Microvideo ended at <"

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p0, v1, v2}, Lmyj;->i(J)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5e
    const-wide/16 v5, 0x3e8

    nop

    nop

    nop

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_61
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_62
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_16

    nop

    nop

    :goto_63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_64
    invoke-static {v0, v1, v2, v3}, Lmf;->b(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_65
    cmp-long v5, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_66
    goto/16 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_69
    invoke-virtual {v4, v0, v1, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v3, Lkhi;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v1, v0, Ljuq;->j:Ltud;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6e
    if-eqz v5, :cond_6

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_66

    nop

    nop

    :goto_6f
    return-void

    nop

    :goto_70
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_71
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

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

    :goto_72
    sget-object v0, Ljfi;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_73
    throw v0

    nop

    :pswitch_7
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v2, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p0, Ljvj;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    nop

    :goto_78
    invoke-static {v3, v4}, Lqhh;->a(J)I

    move-result p0

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

    :goto_79
    invoke-direct {v0, p0}, Lrtt;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_7a
    iget-object v2, v2, Lkhm;->d:Lsay;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_7b
    move-object v3, p0

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

    nop

    :goto_7c
    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    return-void

    nop

    nop

    :goto_7f
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v3, v3, Lkhi;->b:Lkhq;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_83
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v2, :cond_7

    nop

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

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    :goto_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_86
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

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

    :goto_87
    sget-object v1, Lqhh;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_88
    return-void

    nop

    :pswitch_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v4, v4, Lkhq;->e:Lpcu;

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

    :goto_8b
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8c
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :goto_8d
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_8e
    new-instance v0, Lrtt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_90
    add-long/2addr v0, v2

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_91
    check-cast p0, Lkwh;

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

    :goto_92
    invoke-static {v0, v1}, Lrrf;->J(J)[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_93
    iget-wide v0, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_94
    check-cast v1, Lnsr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    move-object v2, p0

    nop

    nop

    check-cast v2, Lkwh;

    nop

    nop

    nop

    iget-object v2, v2, Lkwh;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "waitUntilFrame"

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lkwh;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkwh;->d:Lkot;

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v4, 0xa5

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    nop

    nop

    iget-object v5, v2, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_96
    :try_start_5
    iget-wide v5, v2, Lkot;->c:J

    nop

    nop

    nop

    nop

    cmp-long v5, v5, v0

    nop

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    nop

    if-gez v5, :cond_a

    nop

    nop

    cmp-long v5, v3, v6

    nop

    nop

    if-lez v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Lkot;->b:Ljava/util/concurrent/locks/Condition;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

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

    :goto_98
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v0, Lgsp;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9b
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_9c
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v3, 0x5

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v0, Ljuq;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_9f
    iget-object p0, v0, Ljuq;->c:Lmyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p0, v2, v0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-lez p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-ltz v5, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c2

    nop

    nop

    :goto_a5
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

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

    :goto_a6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_8d

    nop

    :goto_a8
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_6
    iget-object v2, v2, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    cmp-long v2, v3, v6

    nop

    nop

    nop

    nop

    if-gtz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lkwh;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    const/16 v3, 0xc38

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Timeout waiting for frame %d"

    nop

    nop

    invoke-interface {v2, v3, v0, v1}, Lscz;->u(Ljava/lang/String;J)V

    goto/16 :goto_2c

    nop

    nop

    nop

    :catchall_1
    move-exception v3

    nop

    iget-object v2, v2, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

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

    :goto_aa
    iget-object v4, v3, Lkhi;->b:Lkhq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_ad
    iget-wide v1, p0, Lhpv;->a:J

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object p0, p0, Ljvj;->h:Lsuu;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_af
    iget-object p0, p0, Lhpv;->b:Ljava/lang/Object;

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

    :goto_b0
    const-string v3, ">"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b1
    throw v0

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    :try_start_7
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_b2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b3
    sget-boolean p0, Lqhh;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_b4
    iget-wide v2, p0, Ljvj;->e:J

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const-string v1, "Leaks detected: %d objects counted."

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-interface {v0, v3, v1, v2}, Lscz;->u(Ljava/lang/String;J)V

    goto/32 :goto_1d

    nop

    nop

    :goto_b7
    invoke-static {v1, v5, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_b8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const/16 v5, 0xb8b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p0, v0, v1}, Lkid;->d(J)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_bb
    const-string v1, "Thread interrupted. Wrapping up... "

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_bd
    const/16 v1, 0x8bf

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_be
    sget-object v2, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-interface {v2, v3, v0, v1, p0}, Lscz;->B(Ljava/lang/String;JLjava/lang/Object;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_c0
    invoke-virtual {v2}, Lsuu;->isDone()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {v3, v4}, Lqhh;->a(J)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-wide v1, p0, Lhpv;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_c4
    check-cast p0, Ljuq;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c6
    check-cast p0, Lkwh;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_a8

    nop

    nop
.end method
