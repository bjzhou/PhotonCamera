.class public final synthetic Lixb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p3, p0, Lixb;->c:I

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lixb;->a:Ljava/lang/Object;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    :goto_4
    iput p3, p0, Lixb;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 10

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, "Process is Alive! Rescheduling."

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-object p0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lixf;->l()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljjx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7d

    nop

    nop

    :goto_6
    iget-object v1, v0, Llko;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Linb;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    goto/32 :goto_c2

    nop

    :cond_0
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :pswitch_2
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    check-cast p0, Landroid/app/job/JobParameters;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v2, v4, Ljez;->i:Landroid/graphics/Bitmap;

    nop

    nop

    :goto_12
    goto/32 :goto_45

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v5, v0, Lixe;->j:Z

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

    :goto_16
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

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

    nop

    :goto_17
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_18
    iget v2, v0, Ljfi;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_1a
    check-cast p0, Ljfk;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Llxa;->j()Llxm;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lpog;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_1d
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_47

    nop

    nop

    :goto_1f
    iget-object v1, v0, Ljfi;->e:Lpdf;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_20
    check-cast p0, Ljjx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v1, p0

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :pswitch_6
    goto/32 :goto_17

    nop

    nop

    :goto_26
    iget-object v5, v4, Ljez;->i:Landroid/graphics/Bitmap;

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

    :goto_27
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_9f

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Ltcv;

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_c9

    nop

    nop

    :goto_30
    iget-object v0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_32
    iget-object p0, v0, Ljfi;->e:Lpdf;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_33
    monitor-enter v1

    nop

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    move-object v0, p0

    nop

    check-cast v0, Lixe;

    nop

    nop

    invoke-virtual {v0}, Lixe;->e()Lrss;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Lixe;

    nop

    nop

    invoke-virtual {v2, v0}, Lixe;->i(Lixf;)V

    goto :goto_34

    nop

    nop

    :cond_3
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lixe;

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v0, Lixe;->q:Lixf;

    nop

    :goto_34
    check-cast p0, Lixe;

    nop

    nop

    nop

    iput-boolean v3, p0, Lixe;->g:Z

    nop

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v1, Ljdc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_36
    invoke-interface {v1, v2}, Lktp;->a(Ljava/lang/Object;)V

    goto/32 :goto_81

    nop

    nop

    :goto_37
    invoke-static {v0}, Lmhz;->C(Landroid/content/Context;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v3, Lscz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3a
    check-cast p0, Ljjx;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_3b
    const v0, 0x8

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Landroid/app/job/JobParameters;

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Ljfk;->f:Ljava/util/Map;

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_41
    move-object v1, p0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v2, "processPslFrame"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    :pswitch_a
    goto/32 :goto_4f

    nop

    nop

    :goto_46
    invoke-virtual {p0, v3, v0}, Ljjx;->e(ZLpog;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

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

    :goto_48
    new-instance v0, Ljdw;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v5}, Llxa;->j()Llxm;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/16 v4, 0x823

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2, p0, v3}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_4e
    new-instance v1, Ljcl;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v0, v1, v3}, Ljdw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

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

    :try_start_1
    check-cast p0, Ljdc;

    nop

    nop

    nop

    iget-object p0, p0, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v1, Lixe;->a:Ljava/lang/Object;

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

    :goto_53
    if-nez v5, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_55
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_57
    iget-object v5, v5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5a
    if-nez v5, :cond_5

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    :goto_5b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_5d
    iget-object v1, v1, Ljdc;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_5e
    check-cast v4, Ljez;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    :pswitch_d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_61
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Ljez;->d()V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_7b

    nop

    nop

    :goto_65
    invoke-interface {p0}, Lpdh;->a()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_67
    check-cast p0, Ljjx;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, p0, Lixb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_69
    monitor-enter v1

    nop

    nop

    :try_start_2
    check-cast p0, Ljdc;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Ljdc;->d:Ljava/util/TreeSet;

    nop

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0, v0, v1}, Ljfk;->f(Linb;Lrss;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move-object v1, p0

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

    :goto_6c
    invoke-interface {v1}, Lktq;->d()Lktp;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0, v4, v5, v3}, Ljfk;->j(Ljez;Landroid/graphics/Bitmap;Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_6f
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_71
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast v1, Ljdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v4, v2, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->d:Lofu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_74
    check-cast p0, Ljez;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v3, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_78
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0, v0}, Ljph;->e(Ljpv;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v0, Lpog;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7e
    iget-boolean v3, v0, Lixe;->h:Z

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

    :goto_7f
    iget-object v2, v1, Ljdc;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_80
    check-cast v2, Lcom/google/android/apps/camera/keepalive/ProcessGcService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_81
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v1, 0x1

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object p0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v2, p0, v1}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_86
    check-cast p0, Ljfk;

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

    :goto_87
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_88
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8a
    iget-boolean v4, v0, Lixe;->i:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object v1, Lrsa;->a:Lrsa;

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

    :goto_8c
    iget v2, v0, Lixe;->t:I

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

    nop

    :goto_8d
    iget-boolean v1, v0, Ljfi;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_8e
    return-void

    nop

    nop

    :pswitch_e
    goto/32 :goto_97

    nop

    nop

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_90
    move-object v2, v0

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_91
    check-cast v0, Linb;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_92
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v2, v1, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v5, v5, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_96
    sget-object v1, Lixe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_98
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_9a
    goto/32 :goto_4d

    nop

    nop

    :goto_9b
    iget-object v5, v4, Ljez;->b:Linb;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    monitor-enter v1

    nop

    nop

    nop

    :try_start_3
    check-cast p0, Ljdc;

    nop

    nop

    nop

    iget-object p0, p0, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v8, v0, Lixe;->m:Lj$/util/Optional;

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

    :goto_9f
    return-void

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_a1
    throw p0

    nop

    :pswitch_10
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast p0, Lows;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    check-cast v0, Lnjn;

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_a5
    invoke-virtual {v2, p0}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a(I)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface/range {v1 .. v9}, Lixf;->s(IZZZLnbh;Lnbe;Lj$/util/Optional;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0, v3, v0}, Ljjx;->e(ZLpog;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-interface {v0}, Lprw;->close()V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_aa
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v1, Ljdc;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v6, v0, Lixe;->k:Lnbh;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_ae
    const-wide/16 v2, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p0, v3, v0}, Ljjx;->e(ZLpog;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_b1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b2
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_b3
    iget-object v1, p0, Lixb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_b4
    check-cast v1, Ljdc;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_b5
    check-cast p0, Ltcv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_b6
    invoke-virtual {v0}, Linb;->a()I

    goto/32 :goto_1

    nop

    nop

    :goto_b7
    iget-object v1, v1, Ljdc;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v7, v0, Lixe;->l:Lnbe;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_bb
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    check-cast p0, Lixe;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lixe;->d:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    return-void

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v1, v1, Ltcv;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_bf
    check-cast v0, Ljcg;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_c0
    check-cast v0, Lpog;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_9a

    nop

    nop

    :goto_c2
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v4}, Lofu;->g()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_c4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast v1, Ljdc;

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

    nop

    :goto_c7
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_c8
    check-cast v0, Llko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c9
    iget-object v1, v0, Ljfi;->c:Ljfc;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object p0, p0, Ltcv;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_cd
    invoke-direct {v1, v0, v3}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object p0, v2, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_cf
    iget-object p0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {p0, v1, v0}, Ljjx;->e(ZLpog;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d3
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d5
    throw p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3
        :pswitch_10
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_13
        :pswitch_2
        :pswitch_0
        :pswitch_f
        :pswitch_b
        :pswitch_1
        :pswitch_4
        :pswitch_12
        :pswitch_d
        :pswitch_a
        :pswitch_11
        :pswitch_8
        :pswitch_e
        :pswitch_7
    .end packed-switch

    :goto_d6
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v0, p0, Lixb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_d8
    check-cast p0, Ljph;

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

    :goto_d9
    check-cast v1, Ltcv;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v0, Ljfi;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_5
    check-cast p0, Ljdc;

    nop

    iget-object p0, p0, Ljdc;->d:Ljava/util/TreeSet;

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_dc
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-boolean v9, v0, Lixe;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_de
    return-void

    nop

    nop

    :pswitch_12
    goto/32 :goto_3f

    nop

    nop

    :goto_df
    throw p0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v1, v2, p0}, Ljfc;->h(ILtcv;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_e1
    move-object v1, p0

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    add-int v0, v0, v1

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object p0, p0, Lixb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object p0, p0, Lixb;->b:Ljava/lang/Object;

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
.end method
