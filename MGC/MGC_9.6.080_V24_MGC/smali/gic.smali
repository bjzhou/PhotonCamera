.class public final Lgic;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lgic;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static final b()Lowv;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Lhoa;->a(Lhoa;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v3, Lowu;->a:Lowv;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lowu;->b:Lowu;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x200

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object v1

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v0}, Lgin;-><init>(Lsuu;)V

    goto/32 :goto_12

    nop

    nop

    :goto_10
    const/16 v0, 0x80

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    invoke-virtual {v1, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Lgin;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    if-ne v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_15
    invoke-direct {v2, v3, v0}, Lgiv;-><init>(Ljava/util/concurrent/Executor;Lsui;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lgim;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lgiv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lhoa;->c:Lhoa;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Lhyq;->b()Lhoa;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v2, v0}, Lgim;-><init>(Lowv;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static c()Lrts;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lrrz;->a:Lrts;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_30

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lsuu;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2
    const-string v0, "Permissions"

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

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

    :goto_4
    new-instance p0, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lgic;->b()Lowv;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_42

    nop

    nop

    :goto_a
    new-instance v0, Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_4
        :pswitch_f
        :pswitch_d
        :pswitch_11
        :pswitch_3
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_b
        :pswitch_13
        :pswitch_2
    .end packed-switch

    :goto_10
    invoke-static {p0, v0}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_12
    const-string p0, "00UiWorker"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_6

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Loxv;

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

    :goto_16
    invoke-static {p0}, Lolx;->aY(Ljava/util/concurrent/Executor;)Loxn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Lrrg;-><init>(Lrts;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lrrg;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Lolx;->bf(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Lgic;->c()Lrts;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    const v0, 0x7f08022a

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

    :goto_20
    const-string v0, "HelperThread"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "FirstInteractivity"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_23
    new-instance p0, Loxv;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    const-string p0, "pck-temporal-binning"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    return-object v0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_29
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v0, v0}, Lfdo;-><init>([B[C)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, p0}, Lowu;-><init>(Lowv;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, v0}, Lfdo;-><init>([S)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget p0, p0, Lgic;->a:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    :pswitch_a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Lolx;->bf(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_33
    sget-object v0, Lgkt;->a:Lgkt;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_34
    throw v0

    nop

    :pswitch_b
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_35
    new-instance v0, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, p0}, Lgih;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object p0, Lght;->b:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_38
    invoke-static {p0, v0}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    :goto_39
    return-object p0

    nop

    :pswitch_c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    throw v0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_45

    nop

    nop

    :goto_3c
    new-instance v0, Lgih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    new-instance p0, Lfdo;

    nop

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

    :goto_3e
    return-object p0

    nop

    :pswitch_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string p0, "GcaFeatureInit"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p0, v0}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_42
    new-instance p0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_43
    const-string p0, "AudioZoomEx"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x0

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    :goto_47
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    :pswitch_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return-object v0

    nop

    nop

    :pswitch_13
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4c
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v0, "CameraDevice"

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
.end method
