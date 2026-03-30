.class public final synthetic Lixc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lhdn;Lksi;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p2, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p3, p0, Lixc;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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
    iput p3, p0, Lixc;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lixc;->a:Ljava/lang/Object;

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

    nop

    :goto_2
    iput-object p1, p0, Lixc;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_3
    iput p3, p0, Lixc;->c:I

    nop

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

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final close()V
    .locals 7

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lggh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

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

    :goto_3
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v4, p0

    nop

    check-cast v4, Lksi;

    nop

    iget-object v4, v4, Lksi;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_0

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    move-object v6, v0

    nop

    check-cast v6, Lhdn;

    nop

    nop

    iget-object v6, v6, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    nop

    nop

    nop

    :cond_0
    check-cast v0, Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhdn;->a:Ljava/lang/Object;

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lksi;

    nop

    iget-object v4, v4, Lksi;->c:Ljava/util/Map;

    nop

    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    nop

    invoke-static {v4}, Lgvg;->t(Ljava/util/Collection;)Lsui;

    move-result-object v4

    nop

    move-object v5, p0

    nop

    check-cast v5, Lksi;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lksi;->g:Ljava/util/List;

    nop

    nop

    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    nop

    nop

    invoke-static {v5}, Lgvg;->t(Ljava/util/Collection;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    new-array v6, v6, [Lsui;

    nop

    nop

    nop

    aput-object v4, v6, v2

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    aput-object v5, v6, v2

    nop

    nop

    invoke-static {v6}, Lsgj;->L([Lsui;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Litv;

    nop

    nop

    const/16 v5, 0x8

    nop

    nop

    invoke-direct {v4, v0, p0, v5, v1}, Litv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    monitor-exit v3

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lpgh;->m(Lpgg;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lixc;->b:Ljava/lang/Object;

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

    :goto_8
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lixc;->c:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lmfh;

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

    :goto_c
    check-cast v0, Ljut;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkyl;->e:Lnxc;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lixe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1}, Lmfh;->i(Lmgc;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, v0, Ljum;->c:Lrss;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_12
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_15
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

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

    :goto_18
    iget-object v0, v0, Lggh;->g:Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljdc;->h(Ljdf;)V

    :goto_1a
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_1
    goto/32 :goto_59

    nop

    :goto_1c
    check-cast v0, Ljac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v3, Lhdn;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lggh;->c:Lfgr;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5c

    nop

    nop

    :goto_20
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljrw;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_22
    iget-object p0, v0, Ljum;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_43

    nop

    nop

    :goto_24
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget v0, Ljus;->d:I

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v1, Lkwf;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_5
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_f
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_13
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_d
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :goto_28
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v1}, Ljrw;->u(Ljava/lang/Runnable;)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Lpci;->close()V

    :goto_2e
    goto/32 :goto_56

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v3, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lkyl;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v0}, Lixe;->f(Lixf;)V

    goto/32 :goto_6a

    nop

    nop

    :goto_34
    check-cast v0, Lixg;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_35
    check-cast p0, Llwx;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_36
    check-cast p0, Lmfh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_37
    check-cast v0, Ljum;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, v0}, Lhah;->d(Lhal;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lknu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, v0}, Lpqv;->c(Lpqs;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Ljrw;->r:Lhah;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_40
    check-cast p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, p0}, Lmfh;->i(Lmgc;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_44
    invoke-direct {v1, p0, v0, v2}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v3, v3, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_46
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_47
    throw p0

    nop

    :pswitch_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Ljdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_49
    new-instance v1, Ljky;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, v0, Ljum;->c:Lrss;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Ljhy;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

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

    :goto_4e
    iget-object p0, v0, Ljum;->d:Lpci;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v1, v0, Ljut;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lixe;

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

    :goto_51
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_52
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/32 :goto_7d

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    :pswitch_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_57
    check-cast v0, Lmrb;

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

    :goto_58
    check-cast v0, Lknu;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_28

    nop

    nop

    :goto_5a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_5e
    throw p0

    nop

    :pswitch_8
    goto/32 :goto_97

    nop

    nop

    :goto_5f
    check-cast p0, Llab;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p0, Ljrw;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_64
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_65
    return-void

    nop

    :pswitch_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

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

    :goto_67
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_68
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_69
    check-cast p0, Ljuj;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    :pswitch_b
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_6b
    iget-object v0, v0, Ljrw;->l:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, v0}, Llwx;->i(Llxb;)V

    goto/32 :goto_37

    nop

    nop

    :goto_6d
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6e
    goto/32 :goto_5a

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

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

    nop

    :goto_71
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_72
    iget-object p0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_74
    throw p0

    nop

    nop

    :pswitch_d
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_75
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p0, Ljrw;

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

    :goto_77
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_78
    check-cast v0, Lrss;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Ljcb;->b:Ljdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_7a
    invoke-interface {p0, v0}, Lnxc;->H(Lnxb;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_7b
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_7c
    iget-object v1, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    return-void

    nop

    nop

    :pswitch_e
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_7e
    return-void

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v1, v0, Ljum;->e:Lmgc;

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

    nop

    :goto_80
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    :pswitch_10
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_82
    monitor-enter v3

    nop

    nop

    :try_start_1
    invoke-interface {v0, p0}, Lpgh;->m(Lpgg;)V

    check-cast p0, Lkwf;

    nop

    nop

    nop

    iput-boolean v2, p0, Lkwf;->b:Z

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_74

    nop

    nop

    :goto_83
    if-nez p0, :cond_3

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v0}, Lpin;->close()V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0, v0}, Lixe;->h(Lixg;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_87
    return-void

    nop

    :pswitch_11
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, v0, Ljut;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    if-nez p0, :cond_4

    nop

    sget-object p0, Ljut;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 v0, 0xa4b

    nop

    nop

    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string v0, "Detaching perOneCamera resources that were not attached"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    :cond_4
    monitor-exit v1

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

    monitor-exit v1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_47

    nop

    nop

    :goto_89
    iget-object p0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

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

    nop

    :goto_8d
    return-void

    nop

    :pswitch_13
    goto/32 :goto_39

    nop

    nop

    :goto_8e
    invoke-virtual {v0, p0}, Lmrb;->g(Lmrl;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_8f
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_90
    invoke-virtual {p0, v0}, Ljuj;->i(Ljvy;)V

    goto/32 :goto_81

    nop

    nop

    :goto_91
    monitor-enter v1

    nop

    :try_start_3
    move-object p0, v1

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkhq;->e:Lpcu;

    nop

    const-string v2, "removing fallback shot: "

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {p0, v2}, Lpcu;->b(Ljava/lang/String;)V

    move-object p0, v1

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkhq;->l:Ljava/util/Set;

    nop

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

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

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object p0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_93
    check-cast p0, Ljcb;

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

    :goto_94
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_95
    check-cast v0, Lpin;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v0, v0, Ljac;->b:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_97
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

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

    :goto_98
    iget-object v0, p0, Lixc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_99
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_9a
    monitor-enter v1

    nop

    :try_start_4
    move-object p0, v1

    nop

    nop

    nop

    check-cast p0, Lfdo;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop

    return-void

    nop

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

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object p0, p0, Ljhy;->A:Lfhm;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object p0, p0, Llab;->a:Lpqv;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9f
    iget-object v3, v1, Lkwf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_a0
    iget-object v0, p0, Lixc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
