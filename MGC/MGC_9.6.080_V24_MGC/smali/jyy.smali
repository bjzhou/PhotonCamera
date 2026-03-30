.class public final Ljyy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p1, p0, Ljyy;->a:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_9
        :pswitch_7
        :pswitch_2
        :pswitch_f
        :pswitch_4
        :pswitch_6
        :pswitch_10
        :pswitch_d
        :pswitch_13
        :pswitch_8
        :pswitch_12
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_e
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :goto_1
    sget-object v0, Lkcf;->a:Lkcf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lkay;-><init>()V

    goto/32 :goto_22

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

    :pswitch_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Ljyy;->a:I

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_25

    nop

    nop

    :goto_9
    const-string v0, "mv-timeout-handler"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lgwo;->b:Lgwo;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    new-instance p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-static {}, La;->aB()Loyn;

    move-result-object p0

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

    :goto_10
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    new-instance p0, Landroid/os/HandlerThread;

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

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_17

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljzi;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, La;->aB()Loyn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "feature.acmi.imu.camera-orientation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_e

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    return-object p0

    nop

    :pswitch_6
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lkay;

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

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :pswitch_8
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_12

    nop

    nop

    :goto_21
    new-instance p0, Ljzi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_2c

    nop

    nop

    :goto_23
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_1d

    nop

    nop

    :goto_24
    new-instance p0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    new-instance p0, Loxv;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Lkaa;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

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

    :goto_2c
    new-instance p0, Lkav;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0}, Lkaa;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_39

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string p0, "feature.acmi.imu.camera-pose"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0, v0}, Lkav;-><init>([B)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_35
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_36
    return-object v0

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {}, La;->aB()Loyn;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_38
    invoke-static {p0}, Lhxu;->b(Ljava/lang/String;)Lhxu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_39
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3b
    return-object p0

    nop

    :pswitch_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3f
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop
.end method
