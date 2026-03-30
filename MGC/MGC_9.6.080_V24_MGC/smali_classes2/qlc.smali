.class public final synthetic Lqlc;
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
    iput-object p1, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lqlc;->b:I

    nop

    nop

    goto/32 :goto_2

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 6

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_0
    const-string v3, "Primes-ttfdd-end-and-length-ms"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lqld;

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

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

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lqsl;->b:Lqph;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lqso;->a:Landroid/app/Application;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, v0, Lqld;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lqso;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lqsp;->s:Lqsl;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lqzk;->c()V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lqsp;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_71

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8d

    nop

    nop

    :goto_17
    check-cast p0, Lqlf;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, p0, v2}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c2

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_e
        :pswitch_4
        :pswitch_f
        :pswitch_a
        :pswitch_9
        :pswitch_11
        :pswitch_1
        :pswitch_c
        :pswitch_3
        :pswitch_8
        :pswitch_13
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_10
        :pswitch_b
        :pswitch_d
        :pswitch_12
    .end packed-switch

    :goto_1a
    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lqlf;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Lqsp;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lqsl;->b:Lqph;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lqso;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v1, p0, Lqnx;->b:I

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

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

    :goto_23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Lqsl;->b:Lqph;

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

    :goto_25
    invoke-virtual {p0, v1}, Lsuu;->cancel(Z)Z

    :cond_2
    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lqlf;->a()V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, v0, Lqld;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lqso;->b:Lqsp;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v1, p0

    nop

    nop

    check-cast v1, Lqtn;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lqtn;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    move-object v2, p0

    nop

    nop

    check-cast v2, Lqtn;

    nop

    nop

    nop

    iget-object v2, v2, Lqtn;->f:Lqop;

    nop

    move-object v3, p0

    nop

    check-cast v3, Lqtn;

    nop

    iget-object v3, v3, Lqtn;->d:Ltud;

    nop

    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lqtl;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lqtl;->b()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    check-cast v3, Lqtn;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lqtn;->d:Ltud;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lqtl;

    nop

    iget v3, v3, Lqtl;->a:F

    nop

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    nop

    :cond_3
    move v3, v0

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v3}, Lqop;->b(F)Lqtu;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_5a

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v0, Lqso;->b:Lqsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_31
    iget-object v2, v0, Lqlh;->a:Ljava/lang/Object;

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

    :goto_32
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

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

    :goto_33
    goto/32 :goto_1a

    nop

    :goto_34
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Lqsp;->p:Lqph;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_38
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_39
    iget-object v0, v0, Lqsl;->b:Lqph;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_3d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v1, Lqld;->i:Z

    nop

    nop

    nop

    if-nez v1, :cond_15

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lqld;->e:Lsuu;

    nop

    invoke-static {v1}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lqld;

    nop

    iput-boolean v2, v1, Lqld;->i:Z

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-class v1, Lqld;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_41
    iget-object v0, p0, Lqsp;->s:Lqsl;

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

    :goto_42
    iget-object v1, v0, Lqso;->b:Lqsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p0, Lqnx;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_44
    const-string v2, "MediaMuxer should be done by now."

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

    :goto_45
    iget-object p0, p0, Lqtn;->f:Lqop;

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_47
    goto/32 :goto_90

    nop

    nop

    :goto_48
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_49
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Lqpk;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_4b
    if-nez v0, :cond_5

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lqsp;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4d
    invoke-virtual {v3}, Lsuu;->isDone()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object v0, p0

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_4f
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    move-object v3, p0

    nop

    nop

    check-cast v3, Lqlh;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v3, v3, Lqlh;->d:Z

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrrf;->x(Z)V

    move-object v3, p0

    nop

    nop

    nop

    nop

    check-cast v3, Lqlh;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lqlh;->c:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    check-cast p0, Lqlh;

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lqlh;->d:Z

    nop

    monitor-exit v2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_6
    monitor-exit v2

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_50
    move v1, v2

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v3}, Lsuu;->isCancelled()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v3, v1, v2}, Lqsp;->b(Ljava/lang/String;J)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_57
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    return-void

    nop

    :catchall_1
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_5b
    const-class v0, Lqld;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5c
    invoke-interface {p0}, Lqkh;->c()V

    goto/32 :goto_54

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance v1, Lqlc;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v2, 0x6

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_60
    iget-object v0, p0, Lqlf;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Lqnx;->h:Lqmf;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-class v1, Lqld;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_63
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v3, v0, Lqld;->e:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v1}, Lqsp;->a(I)V

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_66
    check-cast p0, Lqsp;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lqso;->b:Lqsp;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v3, v0, Lqld;->g:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_69
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_83

    nop

    nop

    :goto_6b
    iput-object v2, v1, Lqsp;->n:Lqph;

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v0, p0

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

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

    :goto_6e
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_7
    goto/32 :goto_a3

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    :try_start_4
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->f:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->f:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->f:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    move-object v0, p0

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-object v0, v0, Lqld;->e:Lsuu;

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    goto/16 :goto_ed

    nop

    nop

    :cond_8
    const-string v0, "MuxerImpl"

    nop

    const-string v3, "Output cancelled since no data written to any track."

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-object v0, v0, Lqld;->g:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->cancel(Z)Z

    move-object v0, p0

    nop

    check-cast v0, Lqld;

    nop

    iget-object v0, v0, Lqld;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1b

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lsui;->isCancelled()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1b

    nop

    move-object v0, p0

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-object v0, v0, Lqld;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lqau;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqau;->a:Ljava/lang/Object;

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_70
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    nop

    :goto_72
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    :try_start_5
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :cond_a
    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_b

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lqlf;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lqlf;->b:Lsuu;

    nop

    invoke-static {v3}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    if-eqz v3, :cond_a

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    goto :goto_74

    nop

    nop

    nop

    nop

    :cond_b
    if-nez v1, :cond_d

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Lqld;->i:Z

    nop

    nop

    nop

    if-nez v0, :cond_c

    nop

    nop

    move-object v0, p0

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-object v0, v0, Lqld;->e:Lsuu;

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    iput-boolean v2, v0, Lqld;->i:Z

    nop

    nop

    nop

    :cond_c
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->f:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lsuu;->cancel(Z)Z

    return-void

    nop

    nop

    nop

    nop

    :cond_d
    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-boolean v0, v0, Lqld;->i:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_e
    move-object v0, p0

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->e:Lsuu;

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    check-cast v1, Lqld;

    nop

    nop

    nop

    iget-object v1, v1, Lqld;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_f
    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_10

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lqlf;

    nop

    iget-object v4, v3, Lqlf;->b:Lsuu;

    nop

    nop

    nop

    invoke-static {v4}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    iget-object v4, v3, Lqlf;->a:Lsui;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Landroid/media/MediaFormat;

    nop

    invoke-virtual {v0, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    nop

    nop

    nop

    move-object v5, p0

    nop

    check-cast v5, Lqld;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lqld;->e:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Landroid/media/MediaMuxer;

    nop

    iput-object v5, v3, Lqlf;->g:Landroid/media/MediaMuxer;

    nop

    nop

    iget-object v3, v3, Lqlf;->c:Lsuu;

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    invoke-virtual {v3, v4}, Lsuu;->e(Ljava/lang/Object;)Z

    goto :goto_75

    nop

    nop

    :cond_10
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    move-object v0, p0

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-object v0, v0, Lqld;->f:Lsuu;

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v0, p0, Lqso;->b:Lqsp;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_77
    check-cast v2, Lqni;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_78
    const-string v0, "MuxerImpl"

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_79
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_7a
    invoke-virtual {p0}, Lqnx;->a()V

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_7b
    if-eqz v3, :cond_11

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_11
    :try_start_6
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    iget-boolean v0, v0, Lqld;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    iget-object v0, v0, Lqld;->e:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Landroid/media/MediaMuxer;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    check-cast p0, Lqld;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lqld;->i:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lqnx;->h:Lqmf;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_7e
    if-eqz v0, :cond_12

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

    :cond_12
    goto/32 :goto_82

    nop

    nop

    :goto_7f
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object p0, p0, Lqld;->f:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v1, p0, Lqld;->g:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_82
    iget-object p0, p0, Lqld;->g:Lsuu;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iput-boolean v1, p0, Lqsp;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_84
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_7

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Lqsp;->s:Lqsl;

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Lqlf;->a()V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_88
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

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

    :goto_89
    check-cast p0, Lqtn;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput-boolean v1, p0, Lqsp;->b:Z

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_8b
    iget-object v1, v1, Lqsp;->n:Lqph;

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

    :goto_8c
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast p0, Lqld;

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

    :goto_8e
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {}, Lqzk;->c()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_90
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_91
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    check-cast p0, Lqso;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_93
    iget-object v0, v0, Lqlh;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_95
    return-void

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    monitor-exit v2

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    return-void

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    move v1, v2

    nop

    nop

    :goto_9d
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const-string v3, "Exception occurred on single-threaded executor"

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

    :goto_9f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_a1
    check-cast p0, Lqld;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v0, :cond_14

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_a5
    iget-object v1, p0, Lqnx;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Lqpk;->a()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a7
    sget v0, Lqsm;->b:I

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

    :goto_a8
    goto :goto_a9

    nop

    :catchall_4
    move-exception v1

    nop

    nop

    nop

    :try_start_8
    move-object v2, p0

    nop

    nop

    check-cast v2, Lqld;

    nop

    nop

    iget-object v2, v2, Lqld;->g:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lsuu;->a(Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_15
    :goto_a9
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    throw p0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    return-void

    nop

    nop

    :pswitch_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_ae
    invoke-static {}, Lqzk;->c()V

    goto/32 :goto_22

    nop

    nop

    :goto_af
    iget-object v1, p0, Lqld;->g:Lsuu;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_b1
    if-nez v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    :cond_16
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {}, Lqzk;->c()V

    goto/32 :goto_e6

    nop

    nop

    :goto_b3
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast v0, Lqso;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v0, v0, Lqsp;->p:Lqph;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b6
    sget v0, Lqsm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/4 v1, 0x0

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_b9
    const-string v1, "MuxerImpl"

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_bb
    iget-object v0, p0, Lqso;->b:Lqsp;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_bc
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v0, p0, Lqld;->g:Lsuu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

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

    :goto_bf
    iput-boolean v2, p0, Lqnx;->c:Z

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_c0
    move-object v0, p0

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto :goto_c4

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    :try_start_9
    move-object v1, p0

    nop

    check-cast v1, Lqld;

    nop

    nop

    nop

    iget-object v1, v1, Lqld;->g:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_17
    :goto_c4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_c6
    move v1, v2

    nop

    nop

    :goto_c7
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v3}, Lsuu;->isCancelled()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_cb
    return-void

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v1, v1, Lqsp;->n:Lqph;

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_ce
    check-cast p0, Lqsp;

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

    :goto_cf
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d0
    iput-object v0, p0, Lqsp;->m:Lqph;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_d2
    iget-object v0, p0, Lqso;->b:Lqsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_d3
    const-string v1, "Error while trying to close media muxer."

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d4
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_d5
    goto/16 :goto_6

    nop

    :catchall_6
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v1, p0, Lqtn;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_d7
    iput-object v0, p0, Lqsp;->o:Lqph;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_d8
    if-lez v0, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_33

    nop

    :goto_d9
    invoke-virtual {p0, v0}, Lqop;->b(F)Lqtu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v2, v0}, Lqni;->k(Lqmf;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v0, v0, Lqsp;->o:Lqph;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_dd
    iput-boolean v1, p0, Lqsp;->d:Z

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

    :goto_de
    return-void

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v0, p0, Lqsp;->s:Lqsl;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    if-eqz v1, :cond_19

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    check-cast p0, Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    check-cast v0, Lqlh;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_e3
    iget-object v1, v0, Lqso;->b:Lqsp;

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_e4
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const-string v2, "SingleTaskExec"

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_e7
    check-cast v0, Lqld;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-wide v1, v1, Lqph;->a:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iput-boolean v1, p0, Lqsp;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-nez v0, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object p0, p0, Lqlc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_ec
    goto :goto_ed

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    :try_start_a
    move-object v1, p0

    nop

    nop

    check-cast v1, Lqld;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lqld;->g:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1b
    :goto_ed
    :try_start_b
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lqld;

    nop

    iget-boolean v0, v0, Lqld;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_17

    nop

    nop

    move-object v0, p0

    nop

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->e:Lsuu;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/media/MediaMuxer;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    move-object v0, p0

    nop

    check-cast v0, Lqld;

    nop

    iput-boolean v2, v0, Lqld;->i:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_ee
    check-cast p0, Lqsp;

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_ef
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object p0, p0, Lqld;->g:Lsuu;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    check-cast p0, Lqld;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    return-void

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_59

    nop

    nop

    :goto_f3
    if-eqz v1, :cond_1c

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_f4
    if-nez v0, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_f5
    iput-boolean v1, p0, Lqsp;->e:Z

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v0, v0, Lqsp;->m:Lqph;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f7
    invoke-static {}, Lqph;->a()Lqph;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v0, p0, Lqsp;->s:Lqsl;

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

    :goto_f9
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-nez v3, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v0, v0, Lqsl;->b:Lqph;

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_fc
    return-void

    nop

    nop

    :pswitch_13
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget v0, p0, Lqlc;->b:I

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

    :goto_fe
    iget-object p0, p0, Lqso;->b:Lqsp;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_ff
    invoke-virtual {p0, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object p0, p0, Lqld;->g:Lsuu;

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

    :goto_101
    if-eqz v1, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1f
    goto/32 :goto_100

    nop

    nop
.end method
