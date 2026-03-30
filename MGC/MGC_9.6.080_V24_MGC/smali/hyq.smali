.class public final Lhyq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iput p1, p0, Lhyq;->a:I

    nop

    goto/32 :goto_0

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

.method public static b()Lhoa;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhoa;->d:Lhoa;

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
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

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

    :goto_7
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Lich;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lidp;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_26

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lico;

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

    nop

    nop

    :goto_10
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    const-string p0, "feature.acmi.imu.frame-gyro"

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

    nop

    :goto_12
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lnyn;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_14
    const-string p0, "feature.acmi.camera.af-stability"

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lnyn;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_19
    const-string p0, "catcher-analysis"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    new-instance p0, Lidp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Libi;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Libi;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p0, "feature.acmi.camera.lens-stability"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

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

    :goto_1f
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_4a

    nop

    nop

    :goto_20
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_2

    nop

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    const-string p0, "feature.acmi.imu.sensor-accelerometer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string p0, "feature.acmi.camera.face-count"

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    const-string p0, "meta-store-exec"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_29
    const-string p0, "feature.acmi.camera.awb-stability"

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

    :goto_2a
    iget p0, p0, Lhyq;->a:I

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

    :goto_2b
    invoke-direct {p0}, Lhhg;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_8
        :pswitch_11
        :pswitch_e
        :pswitch_10
        :pswitch_b
        :pswitch_d
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_c
    .end packed-switch

    :goto_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_34
    new-instance p0, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_35
    const-string p0, "frame-store-resource-manager-exec"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string p0, "catcher-exec"

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

    nop

    :goto_38
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, v0}, Lidp;-><init>(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, v0, v0}, Lfdn;-><init>([C[C)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x0

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

    nop

    :goto_3c
    new-instance p0, Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3d
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3e
    invoke-direct {p0, v0}, Lidp;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    const-string p0, "audio-frame-enc"

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

    :goto_40
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_41
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_42
    return-object p0

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_3f

    nop

    nop

    :goto_43
    invoke-static {p0}, Lolx;->bf(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0}, Lico;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

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

    :goto_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    :pswitch_13
    goto/32 :goto_1d

    nop

    nop

    :goto_4a
    invoke-static {}, Lhyq;->b()Lhoa;

    move-result-object p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0, v0}, Lkav;->l(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkqa;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p0}, Lich;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop
.end method
