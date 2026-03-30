.class public final synthetic Lngp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lngp;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lngp;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

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

    :goto_4
    iput-object p2, p0, Lngp;->a:Ljava/lang/Object;

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
.end method

.method public constructor <init>(Loxv;Lowo;I)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    iput-object p2, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput p3, p0, Lngp;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lngp;->b:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 5

    goto/32 :goto_6f

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

    :pswitch_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2
    iget-object p0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    iget-object v2, v2, Lngt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lngp;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_5
    check-cast p0, Loyr;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lngp;->b:Ljava/lang/Object;

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

    :goto_8
    check-cast v0, Ljdc;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lpkl;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->t:Ljdf;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lpln;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_48

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_1
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Loyr;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

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

    :goto_17
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

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

    :goto_1b
    goto/32 :goto_35

    nop

    :goto_1c
    return-void

    nop

    :pswitch_3
    goto/32 :goto_74

    nop

    nop

    :goto_1d
    return-void

    nop

    :pswitch_4
    goto/32 :goto_44

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    move-object p0, v1

    nop

    nop

    check-cast p0, Lrbh;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lrbh;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lpkl;->d:Lpln;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_22
    check-cast v2, Lngt;

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

    :goto_23
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    :goto_29
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :goto_2a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2e
    check-cast p0, Lnrw;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_30
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_4
        :pswitch_b
        :pswitch_2
    .end packed-switch

    :goto_31
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_36
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

    :goto_37
    check-cast p0, Lnar;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_39
    check-cast p0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0, v1, v2}, Lpke;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Lpkl;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, p0}, Ljdc;->h(Ljdf;)V

    :goto_3f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_16

    nop

    nop

    :goto_42
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_1
    move-object p0, v2

    nop

    nop

    nop

    check-cast p0, Lpfe;

    nop

    iget-object p0, p0, Lpfe;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    nop

    nop

    nop

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

    monitor-exit v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_43
    monitor-enter v2

    nop

    nop

    :try_start_2
    move-object v3, v0

    nop

    nop

    nop

    nop

    check-cast v3, Lngt;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lngt;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lngt;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lngt;->aG()Z

    move-result p0

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

    nop

    new-instance p0, Ljic;

    nop

    nop

    const/16 v3, 0x13

    nop

    nop

    nop

    invoke-direct {p0, v3}, Ljic;-><init>(I)V

    move-object v3, v0

    nop

    nop

    nop

    check-cast v3, Lngt;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v3, v4, v4, v1, p0}, Lngt;->aF(ZZZLjava/lang/Runnable;)V

    check-cast v0, Lngt;

    nop

    nop

    invoke-virtual {v0, v4, v4}, Lngt;->aE(ZZ)V

    :cond_4
    monitor-exit v2

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_45
    monitor-enter v1

    nop

    nop

    nop

    :try_start_3
    iget-object p0, p0, Lpln;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v0, Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_49
    throw p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    :pswitch_a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1d

    nop

    nop

    :goto_4d
    throw p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_6e

    nop

    nop

    :goto_4e
    const/4 v1, 0x1

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v0, p0, Lngp;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p0, Lltr;

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

    :goto_52
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_53
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_54
    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    :pswitch_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p0, Loxv;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0, v0}, Lnrw;->b(Lnrv;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

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

    nop

    :goto_5b
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_5c
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v0}, Lltr;->b(Lltq;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_5e
    check-cast p0, Landroid/net/ConnectivityManager;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    :goto_60
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_61
    iget-object p0, p0, Loxv;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    throw p0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_65
    new-instance v0, Lpam;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v1, p0, Lngp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_68
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v0, Landroid/view/ViewTreeObserver;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

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

    nop

    :goto_6e
    new-instance v0, Lpke;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const v0, 0x19

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lngp;->b:Ljava/lang/Object;

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

    :goto_71
    iget-object p0, p0, Lpkl;->i:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_50

    nop

    nop

    :goto_74
    iget-object v0, p0, Lngp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_75
    iget-object p0, p0, Lngp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_77
    move-object v2, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method
