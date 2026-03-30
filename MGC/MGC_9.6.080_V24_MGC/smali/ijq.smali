.class public final Lijq;
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

    :goto_0
    iput p2, p0, Lijq;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lijq;->b:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lips;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;-><init>()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v2}, Liks;-><init>(Lcom/google/googlex/gcam/Gcam;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Liof;

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_8
    new-instance p0, Lsbt;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lltx;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_21

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lhml;->i:Lhmn;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "Falcon"

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

    :goto_12
    new-instance v0, Liks;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lkct;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_f
        :pswitch_11
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_1
        :pswitch_13
        :pswitch_12
        :pswitch_4
        :pswitch_10
    .end packed-switch

    :goto_15
    goto/32 :goto_c4

    nop

    nop

    :goto_16
    invoke-direct {v1, p0, v2, v3, v4}, Lltx;-><init>(Ljava/lang/String;IJ)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lghy;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

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

    nop

    :goto_18
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v1

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lkqa;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

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

    :goto_1d
    new-instance p0, Liqw;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lrss;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Llvw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-wide v2, v0, Llub;->c:J

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

    :goto_23
    int-to-byte v2, v2

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_24
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_25
    new-instance v0, Lcom/google/android/apps/camera/hdrplus/fusion/focusstack/jni/NativeFusionFocusStack;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lows;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1}, Loyh;-><init>(Loxv;)V

    goto/32 :goto_ca

    nop

    nop

    :goto_29
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_98

    nop

    :goto_2d
    iput-object v2, v0, Llub;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2f
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v0}, Lrss;->b(Lrsk;)Lrss;

    move-result-object p0

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

    :goto_31
    new-instance v0, Loyh;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_33
    check-cast p0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p0, Llle;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_38
    or-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lkqa;->a:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3b
    new-instance v0, Llub;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_3c
    iget-object p0, v0, Llub;->a:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v0, p0, v2}, Lisa;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    xor-int/2addr p0, v1

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_40
    return-object v0

    nop

    :pswitch_2
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_41
    const-wide/16 v2, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Lrsx;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_43
    invoke-direct {v0, p0}, Linx;-><init>(Lkct;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_45
    invoke-static {p0, v0, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_46
    iget-wide v3, v0, Llub;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_47
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_49
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_d3

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v2, v0, Llub;->b:I

    nop

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

    :goto_4b
    new-instance v2, Loyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v2, v0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_4d
    iget-byte p0, v0, Llub;->d:B

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p0, Lsuu;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object p0, Lnyj;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_51
    const/4 v1, 0x3

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_52
    new-instance v1, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v0, Lisa;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Ljjf;->b()Lrss;

    move-result-object p0

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

    :goto_56
    check-cast p0, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_57
    check-cast p0, Ljjf;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_58
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_be

    nop

    nop

    :goto_59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5a
    return-object p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_5b
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {p0}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object p0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eq p0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_63
    return-object v0

    nop

    :pswitch_7
    goto/32 :goto_3a

    nop

    nop

    :goto_64
    return-object v1

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v1, p0, v0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_67
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p0}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_6c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_6e
    check-cast p0, Liob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_70
    check-cast p0, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_71
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast p0, Lghy;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0, v2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_77
    new-instance v0, Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_78
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_79
    return-object v0

    nop

    :pswitch_a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

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

    nop

    :goto_7b
    check-cast p0, Lhoh;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v0, Linn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_7d
    invoke-virtual {p0, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0}, Lips;->b()Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {p0}, Liqw;-><init>()V

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_80
    return-object v0

    nop

    nop

    :pswitch_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_81
    sget-object v2, Lhml;->g:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_82
    throw p0

    nop

    :goto_83
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

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

    :goto_85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v2, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez p0, :cond_5

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-byte v2, v0, Llub;->d:B

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

    :goto_89
    const v2, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_8a
    const/4 v1, 0x1

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

    :goto_8b
    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_8c
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {p0}, Liyl;->a(Ltxm;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    return-object p0

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_8f
    return-object p0

    nop

    :pswitch_d
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v0, p0}, Llub;->a(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_91
    new-instance v1, Loxv;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const/16 v1, 0x8

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_93
    invoke-direct {v0, v1}, Linn;-><init>(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_94
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_95
    iget-object p0, p0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_97
    if-nez p0, :cond_6

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

    :cond_6
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_9a
    sget-object p0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_44

    nop

    nop

    :goto_9c
    invoke-static {p0}, Liyl;->a(Ltxm;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_9d
    invoke-static {p0}, Loxz;->a(Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_9e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-direct {v0, p0}, Liof;-><init>(Llvw;)V

    goto/32 :goto_40

    nop

    nop

    :goto_a0
    invoke-static {p0}, Loxz;->a(Loyd;)Loyd;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_a2
    invoke-direct {v2, v0, v3}, Lhjc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7d

    nop

    nop

    :goto_a3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8e

    nop

    nop

    :goto_a4
    invoke-virtual {p0}, Ltuu;->b()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_a7
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    new-instance v1, Lpha;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_a9
    check-cast p0, Lhoh;

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

    nop

    :goto_aa
    const/16 v3, 0xf

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_ac
    invoke-static {p0}, La;->au(Z)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_ae
    iget v0, p0, Lijq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_af
    new-instance v2, Lhjc;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const-string v1, "lastPslFrame"

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v0, p0}, Lijg;-><init>(Lhoh;)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_b3
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct {p0, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_9b

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_24

    nop

    nop

    :goto_b7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const v0, 0x6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast p0, Ltuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0, v2}, Llub;->a(I)V

    goto/32 :goto_41

    nop

    nop

    :goto_bb
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {p0}, Liyl;->a(Ltxm;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_be
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_bf
    check-cast p0, Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_c0
    iput-byte v2, v0, Llub;->d:B

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c1
    iget v1, v0, Llub;->e:I

    nop

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

    nop

    :goto_c2
    new-instance v0, Linx;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_c5
    new-instance v0, Lijg;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    return-object p0

    nop

    nop

    :pswitch_12
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object p0, v0, Llub;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_c9
    check-cast p0, Lfdn;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    sget-object v2, Lstd;->a:Lstd;

    nop

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

    nop

    :goto_cb
    iput v1, v0, Llub;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const-string p0, "aGRyX25ldF9rZXk="

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_cd
    check-cast p0, Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {v1}, Loxx;->a(Loyd;)Loyd;

    move-result-object p0

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

    :goto_cf
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_82

    nop

    nop

    :goto_d0
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object p0, p0, Lijq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_d2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_79

    nop

    nop

    :goto_d4
    invoke-direct {v0}, Llub;-><init>()V

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-direct {v1, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8f

    nop

    nop

    :goto_d7
    return-object p0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop
.end method
