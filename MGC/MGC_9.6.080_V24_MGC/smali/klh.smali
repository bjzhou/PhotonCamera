.class public final Lklh;
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

    :goto_0
    iput p1, p0, Lklh;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "DynamicSensorOrientationExecutor"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "CameraEx"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lolx;->aZ(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

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

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lknm;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    nop

    :goto_6
    new-instance p0, Lhwy;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, v0}, Lgjc;->a(Lsui;Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    :goto_8
    invoke-static {}, Lklh;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

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

    :goto_9
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_e
        :pswitch_5
        :pswitch_13
        :pswitch_10
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_f
        :pswitch_9
        :pswitch_12
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_1
        :pswitch_d
        :pswitch_8
        :pswitch_c
        :pswitch_11
    .end packed-switch

    :goto_a
    goto/32 :goto_45

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lkrk;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lkav;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Loyg;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Lkot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_13
    new-instance p0, Lkrk;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lkni;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, v0}, Lkav;->l(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkqa;

    move-result-object p0

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

    :goto_16
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Lknm;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Lsuu;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    const/16 v0, 0x5f

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, v0}, Lkav;->l(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkqa;

    move-result-object p0

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

    :goto_1f
    new-instance p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    new-instance p0, Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Lmhz;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_20

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_24
    throw v1

    nop

    :pswitch_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    :goto_26
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "OneCameraFistFrameReceived"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Lklf;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    :pswitch_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0}, Lows;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_30
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_31
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_8

    nop

    nop

    :goto_33
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Lkot;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_36
    sget-object v0, Lkpy;->a:Lkpy;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_37
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_12

    nop

    nop

    :goto_38
    return-object p0

    nop

    :pswitch_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_39
    new-instance p0, Lkav;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3b
    return-object p0

    nop

    nop

    :pswitch_d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0, v0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_40
    new-instance p0, Lkpv;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_41
    invoke-direct {p0, v1}, Lmhz;-><init>([B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_43
    invoke-direct {p0, v1}, Lhwy;-><init>([B)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0}, Lkpv;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_45
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v1}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_48
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-object p0

    nop

    nop

    :pswitch_f
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4b
    new-instance p0, Lsuu;

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

    nop

    :goto_4c
    new-instance p0, Lklf;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4d
    const-string v1, "bl9yX21fcXVhbGl0eV9rZXk"

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4e
    sget-object v0, Lkmj;->a:Lkmj;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_6

    nop

    nop

    :goto_50
    new-instance p0, Lows;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_51
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_52
    return-object p0

    nop

    nop

    :pswitch_11
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v0, Lknh;->a:Lkni;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_56
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget p0, p0, Lklh;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_58
    return-object p0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p0, v0}, Lkav;->l(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkqa;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {p0, v1, v1}, Lmhz;-><init>([B[B)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
