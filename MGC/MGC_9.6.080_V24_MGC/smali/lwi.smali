.class public final synthetic Llwi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Llwi;->a:I

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    :goto_3
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

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

    :goto_6
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    const/16 v2, 0x190

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lqse;->a()Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, La;->aR()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Luqj;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "PhenotypeProcessReaper"

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Llwi;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Lpvp;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, La;->aR()Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    const-string v0, ""

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v0, v1, v2}, Loch;-><init>(Ljava/lang/String;J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_21
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ge p0, v2, :cond_2

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    nop

    :goto_23
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

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

    nop

    nop

    :goto_24
    invoke-static {}, La;->aR()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    sget-wide v3, Lqqy;->a:J

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_7
    .end packed-switch

    :goto_27
    goto/32 :goto_1

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p0, Luqj;

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

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p0, :cond_3

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

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    throw v0

    nop

    nop

    :goto_2e
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Loch;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    const v1, 0x12

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, v0}, Lpvp;-><init>(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    const-class p0, Lqqy;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    nop

    nop

    :goto_34
    goto/32 :goto_9

    nop

    nop

    :goto_35
    invoke-static {}, La;->aR()Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string p0, "medres-([0-9]+)\\.jpg"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_37
    invoke-static {p0}, Lsgj;->I(Ljava/util/concurrent/ScheduledExecutorService;)Lsul;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_38
    cmp-long p0, v3, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    monitor-enter p0

    nop

    nop

    :try_start_1
    sget-wide v3, Lqqy;->a:J

    nop

    nop

    nop

    nop

    cmp-long v0, v3, v1

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    const/high16 v0, 0x42700000    # 60.0f

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    nop

    nop

    nop

    nop

    float-to-double v3, v0

    nop

    nop

    nop

    nop

    nop

    div-double/2addr v1, v3

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    double-to-long v0, v0

    nop

    sput-wide v0, Lqqy;->a:J

    nop

    nop

    nop

    nop

    nop

    move-wide v3, v0

    nop

    nop

    :cond_4
    monitor-exit p0

    nop

    nop

    nop

    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v2, "Failed to retrieve memory state, not killing process."

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_d

    nop

    nop

    :goto_40
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_41
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_42
    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_f

    nop

    nop

    :goto_44
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_45
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {}, La;->aR()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

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

    :goto_48
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_27

    nop

    :goto_4b
    goto/32 :goto_13

    nop

    nop
.end method
