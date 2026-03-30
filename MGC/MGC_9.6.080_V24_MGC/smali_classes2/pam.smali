.class public final synthetic Lpam;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lpam;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
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
    .locals 18

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, v1, Loyr;->a:I

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3
    iget-object v1, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lpew;

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

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a4

    nop

    nop

    :goto_8
    iget-boolean v1, v0, Lpax;->b:Z

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lpax;

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
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Lpez;->g(Lpdr;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_7e

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :pswitch_0
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lphs;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lphs;->c:Lpgd;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    check-cast v2, Lphs;

    nop

    iget-boolean v2, v2, Lphs;->e:Z

    nop

    nop

    nop

    nop

    move-object v4, v1

    nop

    check-cast v4, Lphs;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    iput-boolean v5, v4, Lphs;->d:Z

    nop

    move-object v4, v1

    nop

    nop

    nop

    check-cast v4, Lphs;

    nop

    iput-boolean v5, v4, Lphs;->e:Z

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_10
    check-cast v0, Lpez;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v2, v0}, Lpcu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_11

    nop

    nop

    :goto_18
    check-cast v0, Lpax;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v2, v0}, Lpcu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_1c
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Lpap;->d:Lsuk;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v7, "FrameServer was closed when updating 3a with locksRetained="

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_cb

    nop

    :goto_21
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    goto/32 :goto_92

    nop

    :cond_2
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lpbd;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, v1}, Lpdz;->c(Lpdr;)V

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_81

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_1c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_29
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_2a
    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Lpdz;->a()V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v2, Lpah;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lpjf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v2, "Interrupted when calling trigger3A."

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
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

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_39

    nop

    nop

    :goto_30
    iget-object v1, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    :try_start_2
    move-object v0, v1

    nop

    nop

    check-cast v0, Lpik;

    nop

    nop

    nop

    iget-object v0, v0, Lpik;->e:Lpig;

    nop

    invoke-static {}, Lphf;->a()Lphe;

    move-result-object v2

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lphe;->c(I)V

    invoke-virtual {v2, v3}, Lphe;->b(I)V

    invoke-virtual {v2, v4}, Lphe;->e(I)V

    invoke-virtual {v2}, Lphe;->a()Lphf;

    move-result-object v2

    nop

    invoke-virtual {v0, v2}, Lpig;->b(Lphf;)V
    :try_end_2
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_3

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :cond_3
    :try_start_3
    move-object v4, v1

    nop

    nop

    check-cast v4, Lphs;

    nop

    nop

    nop

    iget-object v4, v4, Lphs;->a:Lpig;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop
    :try_end_3
    .catch Lpfi; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object v6, v4, Lpig;->c:Lhwy;

    nop

    nop

    nop

    iget-object v7, v4, Lpig;->a:Lpjq;

    nop

    nop

    invoke-virtual {v6, v0, v7}, Lhwy;->E(Lpgd;Lpgd;)Lpgd;

    move-result-object v6

    nop

    nop

    nop

    iget-object v0, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop

    goto/16 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v4

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    :try_start_5
    iget-object v0, v4, Lpig;->b:Lpjd;

    nop

    nop

    nop

    invoke-virtual {v0}, Lpjd;->a()Lpjb;

    move-result-object v7

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    :try_start_6
    invoke-virtual {v7, v6}, Lpjb;->k(Lpgd;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v7}, Lpjb;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    :try_start_8
    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Lpfi; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-static {v6}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v6, Lpjq;->a:Ljava/lang/Boolean;

    nop

    iput-object v7, v0, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    iget-object v7, v6, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iput-object v7, v0, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    iput-object v6, v0, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Lpjp;->c()Lpjq;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Lpig;->c(Lpjq;)V

    monitor-exit v4

    nop

    goto/16 :goto_cd

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit v4

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Lpfi; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_32
    iput-boolean v3, v0, Lpax;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_34
    iget-object v4, v4, Lphs;->b:Lpcu;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_35
    check-cast v0, Loxv;

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_37
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_38
    check-cast v2, Lpah;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_39
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_0
        :pswitch_5
        :pswitch_10
        :pswitch_1
        :pswitch_d
        :pswitch_7
        :pswitch_f
        :pswitch_12
        :pswitch_a
        :pswitch_9
        :pswitch_11
        :pswitch_c
        :pswitch_13
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :goto_3a
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v8, v0

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {v7}, Lpjb;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_11

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_a1

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

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

    :goto_3f
    monitor-enter v1

    nop

    nop

    nop

    :try_start_c
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpba;

    nop

    nop

    nop

    invoke-virtual {v2}, Lpba;->b()V

    check-cast v0, Lpba;

    nop

    nop

    nop

    iget-object v2, v0, Lpba;->d:Ljava/lang/Object;

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    monitor-exit v2

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_40
    move-object v1, v0

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_41
    check-cast v0, Lpax;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Lpd;->c()Lfdn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_43
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lpjf;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    :try_start_f
    check-cast v1, Lpap;

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lpap;->h:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v3, v1, Loyr;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-boolean v2, v1, Lpau;->f:Z

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4b
    monitor-enter v1

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

    :goto_4c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4e
    throw v0

    nop

    :pswitch_6
    goto/32 :goto_30

    nop

    nop

    :goto_4f
    if-eqz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    :cond_6
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_52
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

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

    :pswitch_7
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v1, Lpau;

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

    nop

    :goto_58
    invoke-virtual {v0, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_4d

    nop

    nop

    :goto_59
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_5a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v1, Lpbd;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object/from16 v0, p0

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_5e
    invoke-interface {v1}, Lpah;->h()V

    goto/32 :goto_c7

    nop

    nop

    :goto_5f
    const-string v7, "Interrupted when updating 3a with locksRetained="

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_61
    move-object v1, v0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    return-void

    nop

    :pswitch_8
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_63
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_66
    const-string v3, "Interrupted while waiting for executors to terminate."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v0, Lpap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v2, "MediaCodec could not stop."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6b
    iget-wide v4, v1, Lpau;->g:J

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

    :goto_6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6e
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-boolean v1, v0, Lpax;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_71
    iget-object v0, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_73
    if-lez v0, :cond_8

    nop

    goto/32 :goto_51

    nop

    :cond_8
    goto/32 :goto_50

    nop

    :goto_74
    check-cast v1, Lpba;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_75
    return-void

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    :try_start_10
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_51

    nop

    nop

    :goto_77
    sget-object v1, Lpjf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_78
    check-cast v4, Lphs;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object v4, v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0}, Lpjf;->b()V

    goto/32 :goto_ed

    nop

    nop

    :goto_7c
    check-cast v0, Lpjf;

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

    :goto_7d
    iput-object v2, v1, Loyr;->e:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_b0

    nop

    nop

    :goto_7f
    iget-object v2, v0, Lpap;->b:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_80
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v1, v1, Lpba;->d:Ljava/lang/Object;

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

    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    nop

    :goto_84
    iget-object v1, v1, Lpik;->b:Lpcu;

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

    nop

    nop

    :goto_85
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v3, 0x1

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_87
    return-void

    nop

    :goto_88
    :try_start_12
    move-object v2, v0

    nop

    nop

    check-cast v2, Lpjf;

    nop

    nop

    nop

    iput-boolean v3, v2, Lpjf;->c:Z

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/32 :goto_7c

    nop

    nop

    :goto_89
    iput v3, v1, Loyr;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object v1, Lpdr;->l:Lpdr;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v4, v2, v0}, Lpcu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_cd

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_c1

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_8f
    throw v0

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    :try_start_13
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_90
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v1, Lpah;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_95
    iget-object v1, v0, Lpam;->a:Ljava/lang/Object;

    nop

    :goto_96
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_97
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_14
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lphs;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Lphs;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_9

    nop

    nop

    nop

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lphs;

    nop

    nop

    nop

    nop

    iput-boolean v5, v0, Lphs;->f:Z

    nop

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_9
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_96

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto/32 :goto_8f

    nop

    nop

    :goto_98
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_99
    move-object v7, v0

    nop

    nop

    :try_start_15
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9a
    throw v8

    nop

    nop

    nop
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_16
    monitor-enter v4

    nop
    :try_end_16
    .catch Lpfi; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_3

    :try_start_17
    invoke-static {v6}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v7

    nop

    nop

    iget-object v8, v4, Lpig;->a:Lpjq;

    nop

    invoke-virtual {v4, v8, v6}, Lpig;->e(Lpjq;Lpgd;)Z

    move-result v8

    nop

    nop

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    nop

    nop

    iput-object v8, v7, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    iget-object v8, v4, Lpig;->a:Lpjq;

    nop

    nop

    invoke-virtual {v4, v8, v6}, Lpig;->d(Lpjq;Lpgd;)Z

    move-result v8

    nop

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    nop

    nop

    nop

    iput-object v8, v7, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    iget-object v8, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    invoke-virtual {v4, v8, v6}, Lpig;->f(Lpjq;Lpgd;)Z

    move-result v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iput-object v6, v7, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lpjp;->c()Lpjq;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Lpig;->c(Lpjq;)V

    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_18
    .catch Lpfi; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_3

    :catchall_9
    move-exception v0

    nop

    :try_start_19
    monitor-exit v4

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw v0

    nop

    nop

    nop
    :try_end_1a
    .catch Lpfi; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_3

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1b
    monitor-exit v4

    nop
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    :try_start_1c
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1c
    .catch Lpfi; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_3

    :catch_3
    move-exception v0

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_9b
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v0}, Lsuk;->shutdown()V

    :try_start_1d
    move-object v0, v1

    nop

    nop

    nop

    check-cast v0, Lpap;

    nop

    nop

    iget-object v0, v0, Lpap;->c:Lsuk;

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x3e8

    nop

    nop

    invoke-interface {v0, v3, v4, v2}, Lsuk;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-object v0, v1

    nop

    nop

    nop

    check-cast v0, Lpap;

    nop

    nop

    nop

    iget-object v0, v0, Lpap;->b:Lsuk;

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3, v4, v2}, Lsuk;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpap;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpap;->a:Lsuk;

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-interface {v0, v3, v4, v2}, Lsuk;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-object v0, v1

    nop

    nop

    nop

    check-cast v0, Lpap;

    nop

    nop

    iget-object v0, v0, Lpap;->d:Lsuk;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-interface {v0, v3, v4, v2}, Lsuk;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_6

    goto/32 :goto_fa

    nop

    nop

    :goto_9d
    if-gtz v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_20

    nop

    nop

    :goto_9e
    iget-object v1, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_1e
    move-object v0, v1

    nop

    nop

    nop

    check-cast v0, Lpbd;

    nop

    iget-object v2, v0, Lpbd;->b:Ljava/lang/Object;

    nop

    nop

    monitor-enter v2

    nop
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_4

    :try_start_1f
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpbd;

    nop

    nop

    nop

    iget-object v0, v0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpbd;

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    iput v3, v0, Lpbd;->l:I

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    return-void

    nop

    :catchall_b
    move-exception v0

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :try_start_20
    throw v0

    nop

    nop

    nop
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_4

    :catch_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_9f
    sget-object v2, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->mgHujSrVEXcSqf:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_a0
    move-object v8, v0

    nop

    nop

    :try_start_21
    invoke-virtual {v7}, Lpjb;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_a1
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

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

    nop

    :goto_a2
    check-cast v1, Lpik;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_a3
    invoke-interface {v2}, Lpah;->i()V

    goto/32 :goto_25

    nop

    nop

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a6
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_a7
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a8
    return-void

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v2, v0, Lpap;->c:Lsuk;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_ab
    iget-boolean v1, v0, Lpax;->c:Z

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

    :goto_ac
    move-object v4, v1

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_ad
    return-void

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_af
    invoke-interface {v2}, Lsuk;->shutdown()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_e3

    nop

    nop

    :goto_b1
    check-cast v4, Lphs;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v0, v0, Lpan;->a:Lpap;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_b3
    check-cast v1, Lpah;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_b4
    if-nez v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_b5
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_b6
    invoke-interface {v2}, Lpah;->g()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b7
    check-cast v1, Loyr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iput-boolean v3, v0, Lpax;->b:Z

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_b9
    check-cast v0, Lpax;

    nop

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

    :goto_ba
    invoke-interface {v1}, Lpah;->j()V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

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

    :goto_bc
    check-cast v0, Lpax;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_bd
    invoke-interface {v2}, Lpah;->i()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_be
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_bf
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_22
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpjf;

    nop

    nop

    nop

    nop

    iput-boolean v3, v2, Lpjf;->b:Z

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
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    goto/32 :goto_44

    nop

    nop

    :goto_c0
    move-object v7, v0

    nop

    nop

    :try_start_23
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c1
    throw v8

    nop

    nop

    nop

    nop
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    :catchall_c
    move-exception v0

    nop

    nop

    nop

    :try_start_24
    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_24
    .catch Lpfi; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_3

    :try_start_25
    invoke-static {v6}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v6

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    iget-object v8, v7, Lpjq;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    iput-object v8, v6, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    iget-object v8, v7, Lpjq;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    iput-object v8, v6, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    iget-object v7, v7, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    iput-object v7, v6, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lpjp;->c()Lpjq;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Lpig;->c(Lpjq;)V

    monitor-exit v4

    nop

    nop
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    :try_start_26
    throw v0

    nop

    nop

    nop
    :try_end_26
    .catch Lpfi; {:try_start_26 .. :try_end_26} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_26} :catch_3

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_27
    monitor-exit v4

    nop
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    :try_start_28
    throw v0

    nop

    nop

    nop
    :try_end_28
    .catch Lpfi; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_3

    :catchall_e
    move-exception v0

    nop

    :try_start_29
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    :try_start_2a
    throw v0

    nop

    nop

    :goto_c2
    move-object v4, v1

    nop

    nop

    nop

    nop

    check-cast v4, Lphs;

    nop

    nop

    nop

    iget-object v4, v4, Lphs;->a:Lpig;

    nop

    monitor-enter v4

    nop

    nop
    :try_end_2a
    .catch Lpfi; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_3

    :try_start_2b
    iget-object v6, v4, Lpig;->c:Lhwy;

    nop

    nop

    nop

    iget-object v7, v4, Lpig;->a:Lpjq;

    nop

    nop

    invoke-virtual {v6, v0, v7}, Lhwy;->E(Lpgd;Lpgd;)Lpgd;

    move-result-object v6

    nop

    nop

    nop

    iget-object v0, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop

    goto/16 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :cond_d
    monitor-exit v4

    nop

    nop

    nop
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :try_start_2c
    iget-object v0, v4, Lpig;->b:Lpjd;

    nop

    nop

    nop

    invoke-virtual {v0}, Lpjd;->a()Lpjb;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    :try_start_2d
    invoke-virtual {v7, v6, v3}, Lpjb;->d(Lpgd;Z)Lsui;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    :try_start_2e
    invoke-virtual {v7}, Lpjb;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    :try_start_2f
    monitor-enter v4

    nop

    nop
    :try_end_2f
    .catch Lpfi; {:try_start_2f .. :try_end_2f} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_2f} :catch_3

    :try_start_30
    invoke-static {v6}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v7, v6}, Lpig;->e(Lpjq;Lpgd;)Z

    move-result v7

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    nop

    nop

    nop

    nop

    iput-object v7, v0, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    iget-object v7, v4, Lpig;->a:Lpjq;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v7, v6}, Lpig;->d(Lpjq;Lpgd;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    nop

    iput-object v7, v0, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    iget-object v7, v4, Lpig;->a:Lpjq;

    nop

    nop

    invoke-virtual {v4, v7, v6}, Lpig;->f(Lpjq;Lpgd;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    iput-object v6, v0, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Lpjp;->c()Lpjq;

    move-result-object v0

    nop

    invoke-virtual {v4, v0}, Lpig;->c(Lpjq;)V

    monitor-exit v4

    nop

    nop

    nop

    nop

    goto/16 :goto_cd

    nop

    nop

    nop

    :catchall_f
    move-exception v0

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    :try_start_31
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_31
    .catch Lpfi; {:try_start_31 .. :try_end_31} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_31} :catch_3

    :catchall_10
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c3
    move-object v0, v1

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iput-boolean v3, v0, Lpax;->c:Z

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0}, Lpjf;->b()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0}, Lfdn;->X()V

    goto/32 :goto_9b

    nop

    nop

    :goto_ca
    throw v0

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v4, v2, v0}, Lpcu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_cd
    goto/32 :goto_97

    nop

    nop

    :goto_ce
    goto/16 :goto_101

    nop

    nop

    :goto_cf
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d0
    check-cast v0, Lpap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_d1
    const v0, 0x18

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_d2
    iget-object v1, v1, Lpau;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_d4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v1, v1, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v0, v0, Lpbd;->i:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_d7
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_df

    nop

    nop

    nop

    :goto_d8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_d9
    iget-object v1, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v1, v1, Lpik;->b:Lpcu;

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v0, v0, Lpap;->D:Landroid/os/HandlerThread;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :catchall_11
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_dd
    return-void

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_df
    return-void

    nop

    :goto_e0
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_e1
    iget-object v0, v0, Lpew;->a:Lpd;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v4, v4, Lphs;->b:Lpcu;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_e3
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast v1, Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_e5
    const-string v2, "FrameServer was closed when calling trigger3A."

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    return-void

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v2, v0, Lpap;->a:Lsuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v0, v3}, Loxv;->d(Ljava/lang/Object;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_ea
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_ed
    return-void

    nop

    nop

    nop

    nop

    :catchall_12
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_32
    monitor-exit v1

    nop

    nop
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_12

    goto/32 :goto_4e

    nop

    nop

    :goto_ee
    check-cast v0, Lpan;

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_ef
    iget-object v1, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-interface {v2}, Lsuk;->shutdown()V

    goto/32 :goto_1d

    nop

    nop

    :goto_f1
    iget-object v3, v1, Loyr;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_f3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

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

    :goto_f4
    invoke-interface {v2}, Lsuk;->shutdown()V

    goto/32 :goto_e8

    nop

    nop

    :goto_f5
    const-string v1, "AudioEncoder"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_f6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    cmp-long v2, v4, v6

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_f8
    iget-object v0, v0, Lpap;->E:Lsuu;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_fa
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_fc
    if-nez v3, :cond_f

    nop

    goto/32 :goto_7e

    nop

    :cond_f
    goto/32 :goto_f1

    nop

    nop

    :goto_fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_ff
    sget-object v1, Lpdr;->j:Lpdr;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_102
    const-string v2, "MediaCodec could not stop."

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_103
    const v1, 0x1

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_104
    check-cast v2, Lpah;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_105
    if-nez v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_106
    iget-object v0, v0, Lpam;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_107
    monitor-enter v1

    nop

    nop

    nop

    :try_start_33
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    nop

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpau;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lpau;->a:Ljava/util/Map;

    nop

    invoke-static {v2}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    :goto_108
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    if-eqz v9, :cond_1b

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Lpaj;

    nop

    nop

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    const-wide/32 v11, 0x2dc6c0

    nop

    nop

    if-eqz v10, :cond_15

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    check-cast v10, Lpau;

    nop

    nop

    nop

    iget-object v10, v10, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v10

    nop

    nop

    nop

    nop

    nop
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_15

    :try_start_34
    move-object v13, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lpau;

    nop

    iget-object v13, v13, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    if-nez v13, :cond_11

    nop

    nop

    nop

    monitor-exit v10

    nop

    nop

    goto :goto_108

    nop

    nop

    :cond_11
    move-object v13, v0

    nop

    check-cast v13, Lpau;

    nop

    nop

    iget-object v13, v13, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    nop

    if-nez v13, :cond_12

    nop

    nop

    monitor-exit v10

    nop

    nop

    nop

    goto/16 :goto_108

    nop

    nop

    :cond_12
    move-object v13, v0

    nop

    nop

    nop

    nop

    check-cast v13, Lpau;

    nop

    nop

    iget-object v13, v13, Lpau;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    check-cast v13, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    nop

    nop

    nop

    nop

    cmp-long v14, v14, v6

    nop

    nop

    nop

    nop

    if-nez v14, :cond_13

    nop

    nop

    monitor-exit v10

    nop

    nop

    goto/16 :goto_108

    nop

    nop

    nop

    nop

    :cond_13
    move-object v14, v0

    nop

    nop

    nop

    nop

    check-cast v14, Lpau;

    nop

    iget-wide v14, v14, Lpau;->h:J

    nop

    nop

    nop

    sub-long v14, v4, v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    nop

    nop

    sub-long v14, v14, v16

    nop

    nop

    nop

    nop

    nop

    cmp-long v11, v14, v11

    nop

    nop

    nop

    nop

    if-lez v11, :cond_14

    nop

    nop

    nop

    nop

    move-object v11, v0

    nop

    nop

    nop

    check-cast v11, Lpau;

    nop

    nop

    nop

    iget-object v11, v11, Lpau;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v12, "Track %s is very delayed: %s us"

    nop

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    nop

    nop

    filled-new-array {v9, v13}, [Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    nop

    invoke-static {v9, v11}, Lpau;->h(Lpaj;I)Lpar;

    move-result-object v9

    nop

    nop

    nop

    move-object v11, v0

    nop

    nop

    nop

    nop

    check-cast v11, Lpau;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v9}, Lpau;->a(Lpar;)V

    :cond_14
    monitor-exit v10

    nop

    nop

    goto/16 :goto_108

    nop

    nop

    nop

    nop

    :catchall_13
    move-exception v0

    nop

    monitor-exit v10

    nop

    nop

    nop

    nop

    nop
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_13

    :try_start_35
    throw v0

    nop

    nop

    nop

    nop

    :cond_15
    move-object v10, v0

    nop

    nop

    nop

    check-cast v10, Lpau;

    nop

    iget-object v10, v10, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    monitor-enter v10

    nop
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_15

    :try_start_36
    move-object v13, v0

    nop

    check-cast v13, Lpau;

    nop

    nop

    nop

    iget-object v13, v13, Lpau;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    nop

    if-nez v13, :cond_16

    nop

    nop

    nop

    nop

    monitor-exit v10

    nop

    nop

    goto/16 :goto_108

    nop

    nop

    :cond_16
    move-object v13, v0

    nop

    nop

    nop

    nop

    check-cast v13, Lpau;

    nop

    iget-object v13, v13, Lpau;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    check-cast v13, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    nop

    nop

    if-eqz v13, :cond_17

    nop

    nop

    nop

    nop

    monitor-exit v10

    nop

    nop

    goto/16 :goto_108

    nop

    nop

    nop

    nop

    nop

    :cond_17
    move-object v13, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lpau;

    nop

    nop

    nop

    nop

    nop

    iget-wide v13, v13, Lpau;->h:J

    nop

    nop

    sub-long v13, v4, v13

    nop

    nop

    nop

    nop

    move-object v15, v0

    nop

    check-cast v15, Lpau;

    nop

    nop

    nop

    iget-wide v6, v15, Lpau;->i:J

    nop

    nop

    nop

    nop

    sub-long/2addr v13, v6

    nop

    nop

    nop

    sget-object v6, Lpaj;->a:Lpaj;

    nop

    nop

    nop

    nop

    if-ne v9, v6, :cond_19

    nop

    nop

    nop

    nop

    const-wide/32 v6, 0xf4240

    nop

    nop

    cmp-long v6, v13, v6

    nop

    nop

    nop

    if-lez v6, :cond_18

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lpau;

    nop

    nop

    iget-object v6, v6, Lpau;->d:Ljava/lang/String;

    nop

    nop

    const-string v7, "Audio track not started after %s us"

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    nop

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lpaj;->a:Lpaj;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v3}, Lpau;->h(Lpaj;I)Lpar;

    move-result-object v6

    nop

    nop

    nop

    nop

    move-object v7, v0

    nop

    check-cast v7, Lpau;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Lpau;->a(Lpar;)V

    :cond_18
    monitor-exit v10

    nop

    nop

    nop

    goto :goto_109

    nop

    nop

    nop

    nop

    :cond_19
    cmp-long v6, v13, v11

    nop

    nop

    nop

    if-lez v6, :cond_1a

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    check-cast v6, Lpau;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lpau;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v7, "%s track not started after %s us"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    nop

    nop

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9, v3}, Lpau;->h(Lpaj;I)Lpar;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    move-object v7, v0

    nop

    check-cast v7, Lpau;

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Lpau;->a(Lpar;)V

    :cond_1a
    monitor-exit v10

    nop

    :goto_109
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    goto/16 :goto_108

    nop

    nop

    nop

    nop

    :catchall_14
    move-exception v0

    nop

    nop

    monitor-exit v10

    nop

    nop

    nop

    nop
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_14

    :try_start_37
    throw v0

    nop

    nop

    nop

    nop

    :cond_1b
    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_15
    move-exception v0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    goto/32 :goto_ca

    nop

    nop

    :goto_10a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_10b
    iget v1, v0, Lpam;->b:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
