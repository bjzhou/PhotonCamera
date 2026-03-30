.class final Ljda;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Ljdc;


# direct methods
.method public constructor <init>(Ljdc;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljdb;

    nop

    nop

    invoke-interface {v1, p2}, Ljdb;->c(Z)V

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p1

    nop

    nop

    nop

    :try_start_1
    iget-object p0, p0, Ljdc;->e:Ljava/util/Set;

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    if-eqz p2, :cond_1

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    iget-object p2, p2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lnft;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lnft;->e()V

    goto :goto_3

    nop

    :cond_1
    monitor-exit p1

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_38

    nop

    nop

    nop

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

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    if-nez p2, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    :goto_a
    sget-object p1, Ljdc;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p1

    nop

    :try_start_2
    iget-object p2, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    nop

    iget-object p2, p2, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljdb;

    nop

    nop

    invoke-interface {v1, v0}, Ljdb;->c(Z)V

    goto :goto_e

    nop

    nop

    :cond_4
    monitor-exit p1

    nop

    goto/16 :goto_6

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

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_22

    nop

    nop

    :goto_f
    iget-object p0, p0, Ljda;->a:Ljdc;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p1, Ljdc;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p1, Ljdc;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Ljdc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_14
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    :goto_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_19
    monitor-enter p1

    nop

    nop

    :try_start_3
    iget-object v0, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljdb;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p2}, Ljdb;->f(Z)V

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    nop

    nop

    goto/16 :goto_6

    nop

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

    monitor-exit p1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    const-string p1, "key_value"

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    :pswitch_4
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1c

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

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    iget-object p1, p1, Ljdc;->f:Ljava/lang/Object;

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

    nop

    :goto_2c
    const/16 p2, 0x850

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, p2}, Ljdc;->k(Z)V

    goto/32 :goto_1b

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :goto_2f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p1, p1, Ljdc;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_45

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

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p2, p1, Ljdc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_34
    iget-object p2, p1, Ljdc;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    iget-object p1, p1, Ljdc;->f:Ljava/lang/Object;

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

    :goto_37
    const v1, 0x1a

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_39
    monitor-enter p1

    nop

    nop

    :try_start_4
    iget-object v0, p0, Ljda;->a:Ljdc;

    nop

    iget-object v0, v0, Ljdc;->b:Ljava/util/Set;

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljdb;

    nop

    nop

    invoke-interface {v1, p2}, Ljdb;->b(Z)V

    goto :goto_3a

    nop

    nop

    nop

    :cond_8
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v0, p0, Ljda;->a:Ljdc;

    nop

    iget-object v0, v0, Ljdc;->b:Ljava/util/Set;

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljdb;

    nop

    nop

    invoke-interface {v1, p2}, Ljdb;->g(Z)V

    goto :goto_3c

    nop

    nop

    nop

    :cond_9
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    :catchall_5
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3d
    if-nez p2, :cond_a

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

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3f
    monitor-enter p2

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iget-object p1, p1, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    if-eqz v0, :cond_b

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljdb;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljdb;->d()V

    goto :goto_40

    nop

    nop

    nop

    nop

    :cond_b
    monitor-exit p2

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :catchall_6
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_43
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_45
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_7
    iget-object v0, p0, Ljda;->a:Ljdc;

    nop

    iget-object v0, v0, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_c

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljdb;

    nop

    nop

    nop

    invoke-interface {v1, p2}, Ljdb;->h(Z)V

    goto :goto_46

    nop

    nop

    :cond_c
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_47
    iget-object p1, p0, Ljdc;->f:Ljava/lang/Object;

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

    :goto_48
    monitor-enter p2

    nop

    nop

    nop

    nop

    :try_start_8
    iget-object p1, p1, Ljdc;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_d

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljdb;

    nop

    invoke-interface {v0}, Ljdb;->e()V

    goto :goto_49

    nop

    :cond_d
    monitor-exit p2

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception p0

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v0, "com.google.android.apps.camera.remotecontrol.remotekey"

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4b
    const-string v1, "key_down"

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p0, Ljda;->a:Ljdc;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_50
    if-eqz p2, :cond_e

    nop

    goto/32 :goto_6

    nop

    :cond_e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object p2, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->ofHKIDNlfeLgi:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_52
    iget-object v0, p1, Ljdc;->j:Lmjv;

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

    nop

    :goto_53
    throw p0

    nop

    :pswitch_8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_55
    iput v1, v0, Lmjv;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
