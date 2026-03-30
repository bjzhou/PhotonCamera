.class public final Lknu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfwv;Landroid/hardware/camera2/CameraManager;Lpnv;Ljava/util/concurrent/Executor;)V
    .locals 3

    goto/32 :goto_35

    nop

    nop

    :goto_0
    invoke-direct {p2, p4}, Lsut;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lknu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, p4, v1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p3, p0, p4, p2}, Lkns;-><init>(Lknu;Lpnx;Lryy;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p3, v1}, Ljsv;-><init>(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    if-nez v1, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p4, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p3, p0, Lknu;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_f
    check-cast p2, Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Lknu;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_11
    iput-object p4, p0, Lknu;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    const v1, 0x13

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_39

    nop

    :goto_14
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    :goto_16
    new-instance p3, Lknt;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    invoke-interface {p3, p4}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    new-instance p3, Lkns;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1b
    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p3, Lixc;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

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

    nop

    :goto_1e
    check-cast v1, Lpnx;

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

    :goto_1f
    check-cast v2, Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v1, Lkns;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p2, Lpnt;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p3, p0, Lknu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    const/16 p4, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    :goto_25
    iget-object p2, p0, Lknu;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    move-object p4, v0

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p3, p2}, Lpnv;->h(Lpog;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    move-object v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v1, p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2b
    if-nez p4, :cond_2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_2d
    iget-object p3, p0, Lknu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2e
    new-instance p2, Lsut;

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

    :goto_2f
    invoke-direct {p3, p0, v1, p4, p2}, Lknt;-><init>(Lknu;Lkns;Lpnx;Lryy;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p4, Lpnx;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p4, p0, Lknu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_32
    move-object p2, p4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    sget-object p2, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_34
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_35
    const v0, 0xf

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_36
    invoke-interface {p3, p4}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object p3, Lrvj;->b:Lj$/util/stream/Collector;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    :goto_39
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p3, p0, p2, p4, v0}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v1}, Lpnu;->N()Z

    move-result v1

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

    nop

    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3d
    iget-object p2, p2, Lpnt;->b:Lryy;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3f
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    move-object v1, p4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance p3, Ljsv;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_44

    nop

    nop

    :goto_44
    iput-object p2, p0, Lknu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, p3}, Lows;->d(Lpci;)V

    :goto_46
    goto/32 :goto_38

    nop

    nop

    :goto_47
    check-cast p3, Landroid/hardware/camera2/CameraManager;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmse;Lfdo;Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    iput-object p3, p0, Lknu;->a:Ljava/lang/Object;

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

    nop

    :goto_3
    sget-object p0, Lhms;->a:Lhmo;

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

    :goto_5
    iput-object v0, p0, Lknu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lknu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lknu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object v0, p0, Lknu;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpnx;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lknu;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lknu;->c:Ljava/lang/Object;

    nop

    if-eqz v1, :cond_2

    nop

    move-object v0, v1

    nop

    check-cast v0, Lkns;

    nop

    nop

    iget-object v0, v0, Lkns;->b:Lsuu;

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    new-array v0, v0, [Lsui;

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lkns;

    nop

    iget-object v2, v2, Lkns;->b:Lsuu;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    aput-object v2, v0, v3

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object v0

    nop

    nop

    nop

    new-instance v2, Lesh;

    nop

    nop

    const/16 v3, 0x12

    nop

    nop

    nop

    invoke-direct {v2, v1, v3}, Lesh;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Lstd;->a:Lstd;

    nop

    invoke-virtual {v0, v2, v1}, Lkjj;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lpnx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x19

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

    :goto_13
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const v3, 0x7f1403f6

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    iget-object v0, p0, Lknu;->e:Ljava/lang/Object;

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

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

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

    :goto_6
    iget-object v2, p0, Lknu;->a:Ljava/lang/Object;

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

    nop

    :goto_7
    const v3, 0x7f1403fb

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lmse;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    check-cast v2, Landroid/content/Context;

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

    :goto_e
    new-instance v1, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lknu;->a:Ljava/lang/Object;

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

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v2, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    const v4, 0x7f1405b6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lfdo;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lfdo;->I(Ljava/lang/String;)I

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroid/content/Context;

    nop

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

    :goto_19
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v2, v3, v1}, Lmse;->m(IILandroid/view/View;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lknu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lknu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1f
    invoke-virtual {v0, v3, v2}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lknu;->e:Ljava/lang/Object;

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

    :goto_21
    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_23
    iget-object v1, p0, Lknu;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v4, 0x7f1405b4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v3, v2}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Landroid/view/View;

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

    nop

    nop

    :goto_27
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    const v2, 0x7f0b02cf

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lknu;->d:Ljava/lang/Object;

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

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lknu;->e:Ljava/lang/Object;

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

    nop

    :goto_2f
    iget-object v2, p0, Lknu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_30
    const v2, 0x7f0b02d0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v2, 0x7f0e00c6

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

    :goto_32
    check-cast v2, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_33
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v1, p0, Lknu;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_37
    const-string v0, "micro_tutorial_dismiss"

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

    :goto_38
    check-cast v1, Landroid/view/View;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_39
    const v3, 0x7f1403f5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop
.end method
