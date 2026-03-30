.class public final Lmho;
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
    iput p1, p0, Lmho;->a:I

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "trk-roi"

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lmjw;-><init>()V

    goto/32 :goto_48

    nop

    nop

    :goto_3
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    new-instance p0, Lptw;

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

    :goto_5
    new-instance p0, Lqei;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

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

    :goto_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_34

    nop

    nop

    :goto_a
    invoke-static {}, Lnzk;->bi()Lmle;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Llto;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lcom/google/android/apps/camera/stats/Instrumentation;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_10
    const v0, 0x1b

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

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    goto/32 :goto_b

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

    nop

    nop

    :pswitch_4
    goto/32 :goto_19

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lmkx;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_13
        :pswitch_11
        :pswitch_c
        :pswitch_8
        :pswitch_d
        :pswitch_3
        :pswitch_9
        :pswitch_10
        :pswitch_e
        :pswitch_f
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_12
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :goto_17
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

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

    :goto_19
    new-instance p0, Landroid/media/SoundPool$Builder;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0}, Lqei;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lows;

    nop

    nop

    nop

    goto/32 :goto_41

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

    :pswitch_6
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lmmn;->a:Lmmn;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Loxv;

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

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_a

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    :pswitch_c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x1

    nop

    nop

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

    :goto_30
    invoke-direct {p0}, Landroid/media/SoundPool$Builder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_31
    new-instance p0, Llto;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    new-instance p0, Lmjw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0}, Lptw;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_51

    nop

    nop

    :goto_36
    const-string p0, "trk-analysis"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_37
    new-instance p0, Lmlc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3c
    const-string p0, "CheetahExecutor"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    new-instance p0, Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

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

    :goto_3f
    const v1, 0x1e

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_40
    return-object p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0}, Lows;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_42
    return-object p0

    nop

    nop

    :pswitch_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_46
    const/16 v0, 0x14

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

    :goto_47
    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    :pswitch_11
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {}, La;->az()Loyn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    sget-object p0, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->qeThtWeyVWdyhvv:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    :goto_4e
    invoke-static {p0}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

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

    :goto_4f
    invoke-direct {p0}, Lmlc;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_50
    iget p0, p0, Lmho;->a:I

    nop

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_51
    new-instance p0, Lmkx;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {}, La;->aB()Loyn;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_53
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_54
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_55
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_45

    nop

    nop
.end method
