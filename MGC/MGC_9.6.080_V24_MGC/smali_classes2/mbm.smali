.class public final Lmbm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lmbm;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 8

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lmbl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    new-instance v0, Llzc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_4
    check-cast p0, Llyv;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v7}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lmbl;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lpte;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v7}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "file_name"

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    :goto_e
    check-cast p0, Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ac

    nop

    nop

    :goto_10
    invoke-virtual {v0, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lsui;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

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

    :goto_14
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lnpg;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_3f

    nop

    :goto_19
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Llzc;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1d
    check-cast p0, Lmip;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    :pswitch_1
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lpte;->d(I)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v1, Llyr;->t:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_23
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

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

    :goto_24
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Landroid/media/SoundPool$Builder;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lhon;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lpte;->b()V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lpte;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v0

    nop

    :pswitch_2
    goto/32 :goto_8b

    nop

    nop

    :goto_2c
    return-object v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3a

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v1}, Llyv;->a(Llyp;)Loyn;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_32
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_33
    invoke-direct {v0, p0}, Lhon;-><init>(Lmjv;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_34
    aput-object v1, v0, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_35
    goto/32 :goto_b9

    nop

    nop

    :goto_36
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0}, Landroid/media/SoundPool$Builder;-><init>()V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_39
    invoke-direct {v0, p0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6e

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xb

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_3c
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_3d
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-array v0, v2, [Loyd;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_41
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0}, Liai;->b()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v0, p0}, Lmhz;-><init>(Landroid/content/pm/PackageManager;)V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_45
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_47
    const/16 v1, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_49
    invoke-direct {v0, p0}, Lnoz;-><init>(Lmbl;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_4b
    sget-object v1, Llyr;->R:Llzf;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_4c
    sget-object v2, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_4d
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Llyv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    aput-object p0, v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v1}, Llyv;->a(Llyp;)Loyn;

    move-result-object p0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_55
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v0, Lmhz;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_57
    invoke-static {v0}, Loyi;->g([Loyd;)Loyd;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_59
    invoke-virtual {v0, p0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5a
    return-object v0

    nop

    :pswitch_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lpte;->f()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_60
    invoke-direct {p0}, Lmeq;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_61
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v7, 0x0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_64
    check-cast p0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast p0, Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_66
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_67
    sget-object v1, Llyr;->Q:Llzf;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_68
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Lpte;->a()Lptf;

    move-result-object p0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_6c
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6e
    return-object v0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_2d

    nop

    nop

    :goto_6f
    sget-object v0, Lqyd;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0, p0}, Lfdo;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0, v1}, Llyv;->a(Llyp;)Loyn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v6}, Lqqm;->d(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_74
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_75
    return-object v0

    nop

    nop

    :pswitch_a
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v0, Lfdo;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0, p0, v3}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v0, p0, v3}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v0, Lhna;->v:Lhmn;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct {v0, p0}, Llzc;-><init>(Loyn;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p0}, Liai;->b()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_7e
    iget-object p0, p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Lmjy;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_80
    check-cast p0, Lhoh;

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

    :goto_81
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0, v0}, Lpte;->h(Landroid/net/Uri;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    rem-int v0, v0, v1

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

    nop

    :goto_84
    invoke-virtual {p0}, Lnpg;->b()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_85
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_87
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_88
    new-instance v0, Lnzk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_89
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    new-instance v0, Loxv;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_8d
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8e
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_90
    check-cast p0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_91
    invoke-virtual {p0}, Lpte;->c()V

    goto/32 :goto_73

    nop

    nop

    :goto_92
    const/4 v3, 0x0

    nop

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

    :goto_93
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_94
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    sget-object v1, Lhmq;->bH:Lhmn;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_96
    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {p0}, Lptf;->a(Landroid/content/Context;)Lpte;

    move-result-object p0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_98
    new-instance v0, Lnoz;

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

    nop

    :goto_99
    invoke-virtual {p0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-direct {v0, p0}, Llzc;-><init>(Loyn;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    sget-object v1, Llyr;->k:Llze;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9d
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9e
    invoke-static {v2}, Lqqm;->d(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_a0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_c2

    nop

    nop

    :goto_a1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_a2
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast p0, Ljava/lang/Float;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p0, v0}, Lpte;->e(I)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_a5
    const-string v0, "restore_path"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    new-instance v0, Landroid/media/SoundPool$Builder;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_aa
    check-cast p0, Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_ab
    check-cast p0, Liai;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_ac
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_ae
    check-cast p0, Liai;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_b0
    return-object p0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object p0, p0, Lfdo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v0, p0}, Lnzk;-><init>(Lhoh;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_b3
    invoke-virtual {p0, v0}, Lpte;->g(Landroid/net/Uri;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget v0, p0, Lmbm;->a:I

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

    :goto_b6
    sget-object v0, Lqyd;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_4
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_f
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_e
        :pswitch_3
        :pswitch_1
        :pswitch_c
        :pswitch_11
        :pswitch_8
    .end packed-switch

    :goto_b9
    goto/32 :goto_4e

    nop

    nop

    :goto_ba
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {p0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

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

    :goto_bc
    return-object p0

    nop

    nop

    :pswitch_11
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_bd
    invoke-static {p0}, Lcom/google/android/apps/camera/stats/Instrumentation;->d(Lcom/google/android/apps/camera/stats/Instrumentation;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_be
    return-object p0

    nop

    :pswitch_12
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c0
    new-instance p0, Lmeq;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_c1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_24

    nop

    nop

    :goto_c2
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-direct {v0, p0}, Lmbl;-><init>(Lhoh;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_c5
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {p0, v1}, Llyv;->a(Llyp;)Loyn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_c8
    check-cast p0, Llyv;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c9
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_cb
    check-cast p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_cc
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v0, p0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p0

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

    :goto_cf
    new-instance p0, Landroid/media/SoundPool$Builder;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d1
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_d3
    iget-object p0, p0, Lmbm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop
.end method
