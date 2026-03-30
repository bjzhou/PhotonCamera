.class public final Lfus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ltxm;Ltxm;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p3, p0, Lfus;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;I[C)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lfus;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfus;->b:Ltxm;

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
    .locals 8

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_1
    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_2
    goto/16 :goto_62

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0}, Lkav;->p(Landroid/hardware/camera2/CaptureRequest$Key;Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lfyl;->b()Lfxw;

    move-result-object v1

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lnnn;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Loyd;

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_14
    new-instance p0, Lher;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_15
    const v0, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

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

    :goto_17
    check-cast p0, Lixo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lnnn;->b()Lnnm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a7

    nop

    nop

    :goto_1b
    check-cast p0, Lkqb;

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

    :goto_1c
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    check-cast v1, Lfyo;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Loyd;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_20
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b1

    nop

    nop

    :goto_22
    iget-object v0, p0, Lgvb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Lhlw;->b(Lhoh;)Z

    move-result v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v1, v1, Lfyk;->a:Z

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aput-object p0, v2, v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lkqb;->b()Lkog;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Ljep;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lgvb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1, v0, p0}, Lfyl;-><init>(Lfyo;Lhoh;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lpoh;->G()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_34
    new-instance v1, Lfur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lhlt;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_96

    nop

    :goto_38
    check-cast v0, Lowu;

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

    :goto_39
    new-instance v2, Lfzd;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_3a
    goto/16 :goto_8a

    nop

    :goto_3b
    goto/32 :goto_e3

    nop

    nop

    :goto_3c
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3e
    check-cast v6, Lkuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v4, Loyd;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

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

    :goto_44
    invoke-virtual {v1}, Lfyo;->g()V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_47
    invoke-static {v0}, Loxz;->a(Loyd;)Loyd;

    move-result-object v0

    nop

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

    :goto_48
    iget-object v2, v1, Lfyo;->a:Lfyq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_122

    nop

    nop

    :goto_4a
    return-object v7

    nop

    nop

    :pswitch_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lggp;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_4d
    check-cast v2, Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_4e
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v2, Lnrp;

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

    :goto_50
    invoke-direct {p0, v3}, Lfwx;-><init>(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_75

    nop

    :goto_53
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_54
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Lnnd;->b()Lnne;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, p0}, Lpia;->a(Lphj;)Lphh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_58
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_59
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v4, Lfzd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_5b
    check-cast p0, Lggp;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lggp;->b:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5d
    sget-object v4, Lnyn;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5e
    new-instance v0, Landroid/util/ArraySet;

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v0}, Loxz;->a(Loyd;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_60
    check-cast p0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_61
    move-object p0, v0

    nop

    :goto_62
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p0, Lfyl;

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

    :goto_64
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_123

    nop

    nop

    nop

    :goto_65
    aput-object v0, v2, v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {v2}, Loyi;->c([Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_68
    iget-object v1, v0, Lpik;->a:Lpia;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_69
    new-instance v1, Lfxg;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_6a
    new-array v2, v2, [Loyd;

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

    nop

    :goto_6b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_6c
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_6e
    iget-object v1, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v2, v3}, Lfzd;-><init>(I)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_71
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_74
    move-object p0, v0

    nop

    :goto_75
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v7, Lgay;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_78
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_7a
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_7b
    return-object v1

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    :goto_7d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v0, v2, v1}, Ljep;-><init>(II)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_80
    return-object v1

    nop

    nop

    :pswitch_4
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto :goto_7d

    nop

    :goto_82
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {p0, v0}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_84
    invoke-direct {v3, v2}, Lfzd;-><init>(I)V

    goto/32 :goto_11a

    nop

    nop

    :goto_85
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v1, v0, p0}, Lfxe;-><init>(Lfxc;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_87
    return-object v1

    nop

    :pswitch_5
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_88
    return-object v1

    nop

    :pswitch_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast p0, Lmiu;

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_a4

    nop

    nop

    :goto_8b
    sget-object p0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8c
    sget-object v0, Lnyn;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v1, Loyg;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_8e
    invoke-static {v0, v4}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    sget-object v0, Lnrn;->f:Lnrn;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast v0, Lfzq;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, p0, Lgvb;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_94
    new-instance v1, Lfyl;

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

    nop

    :goto_95
    check-cast v0, Lhon;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_98
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_99
    check-cast v0, Lfyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast p0, Lggp;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v4, v5}, Lfzd;-><init>(I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    new-instance v1, Loxv;

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_9f
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a1
    new-instance v1, Liof;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a6
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_a7
    new-instance p0, Lfwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-direct {v1, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_a9
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v1, v0, p0}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Lfzq;Lnnm;)V

    goto/32 :goto_e9

    nop

    nop

    :goto_ab
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_ad
    invoke-static {v0, v2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_ae
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_72

    nop

    nop

    :goto_af
    new-instance v1, Loxv;

    nop

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

    :goto_b0
    new-instance v0, Lsbt;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_b1
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v1, v0, p0}, Lfzq;-><init>(Lowu;Lfyx;)V

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-direct {v2, p0, v1, v0}, Lnrp;-><init>(Lnro;Loyd;Lnrn;)V

    goto/32 :goto_64

    nop

    nop

    :goto_b4
    check-cast v0, Loyd;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    check-cast p0, Lfyx;

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    const/16 v5, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {v0}, Lfxw;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_b9
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

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

    :goto_ba
    invoke-direct {v0, p0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v0, p0, Lfus;->a:Ltxm;

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

    :goto_bc
    check-cast v2, Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v0}, Lkmy;->b()Lkmx;

    move-result-object v0

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

    :goto_be
    iget-boolean v0, v0, Lfzm;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_bf
    invoke-virtual {p0}, Lgaz;->b()Lgvb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_c0
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_c1
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    :goto_c4
    iget-object p0, p0, Lgvb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_c5
    check-cast p0, Loyn;

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_c6
    return-object p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    move-object v2, v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v0, p0}, Lpik;->d(Lphh;)Lpgo;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-direct {v0, p0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_ca
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_3
        :pswitch_5
        :pswitch_13
        :pswitch_7
        :pswitch_11
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_8
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_12
        :pswitch_2
        :pswitch_10
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :goto_cb
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_ce
    return-object v1

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_c0

    nop

    nop

    :goto_cf
    invoke-direct/range {v1 .. v6}, Lher;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_d0
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_d1
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_d3
    new-instance v1, Lfxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_d4
    check-cast p0, Lsui;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d6
    check-cast p0, Lphj;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    const/16 v5, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_d8
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

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

    :goto_d9
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    new-instance v1, Lgiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_db
    invoke-direct {v1, v0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    move-object v2, v0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_dd
    return-object v1

    nop

    nop

    :pswitch_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_df
    if-ne v1, v0, :cond_4

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :cond_4
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-direct {v1, p0, v0}, Lfxg;-><init>(Ljava/lang/ref/WeakReference;Lowu;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/4 v1, 0x1

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v0, p0, Lfyu;->b:Lfyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_e3
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast v0, Lkmy;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_e5
    check-cast v1, Lfyk;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_e7
    check-cast v0, Llad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    new-instance v1, Lgbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_e9
    return-object v1

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a2

    nop

    nop

    :goto_eb
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_ed
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_ef
    check-cast v3, Loyd;

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {p0}, Lixo;->b()Ljava/lang/ref/WeakReference;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object p0, p0, Lggp;->b:Lows;

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    move v2, v3

    nop

    :goto_f3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_f6
    goto/32 :goto_73

    nop

    nop

    :goto_f7
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_f9
    new-instance v0, Lsbt;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_fa
    iget-object p0, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    check-cast v0, Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_fc
    check-cast v0, Lfxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_fd
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_fe
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget v0, p0, Lfus;->c:I

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_100
    invoke-direct {v1, v0, p0}, Lfur;-><init>(Lhon;Lggp;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    sget-object v4, Lgev;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_102
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {v0, p0}, Lkav;->p(Landroid/hardware/camera2/CaptureRequest$Key;Loyd;)Loyd;

    move-result-object p0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_107
    return-object v1

    nop

    nop

    :pswitch_f
    goto/32 :goto_125

    nop

    nop

    :goto_108
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

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

    :goto_109
    invoke-direct {v1, v0, p0}, Lgbs;-><init>(Llad;Lowu;)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_10a
    if-nez v1, :cond_5

    nop

    goto/32 :goto_f6

    nop

    nop

    :cond_5
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_10b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_fe

    nop

    nop

    :goto_10d
    check-cast v0, Lpik;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-direct {v1, v0, p0}, Lgiv;-><init>(Ljava/util/concurrent/Executor;Lsui;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    new-instance v3, Lfzd;

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_110
    invoke-direct {v1, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_f1

    nop

    nop

    :goto_111
    check-cast v0, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_112
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_6
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_115
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_116
    check-cast v0, Loyd;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_117
    check-cast v0, Lfzm;

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v4, p0, Lfus;->b:Ltxm;

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

    nop

    :goto_11a
    invoke-static {v0, v3}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_11b
    new-instance v0, Loyg;

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

    :goto_11c
    rem-int v0, v0, v1

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

    :goto_11d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-direct/range {v1 .. v6}, Lgay;-><init>(Loyd;Loyd;Loyd;Loyd;Lkuc;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    check-cast p0, Lgaz;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_122
    return-object v0

    nop

    :pswitch_11
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v0, p0, Lfus;->a:Ltxm;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_124
    const-string v3, "lslogging"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v0, p0, Lfus;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_126
    check-cast p0, Lgcv;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_128
    check-cast v0, Lnnd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast p0, Lfyu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_12a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_12b
    return-object v1

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_c1

    nop

    nop

    :goto_12c
    return-object v1

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object p0, p0, Lfus;->a:Ltxm;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12e
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-direct {v1, p0, v0, v2, v2}, Liof;-><init>(Ltxm;Ltxm;[B[B)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ae

    nop

    nop

    :goto_131
    new-instance v1, Lfzq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop
.end method
