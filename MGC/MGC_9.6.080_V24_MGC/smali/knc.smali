.class public final Lknc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ltxm;I)V
    .locals 0

    goto/32 :goto_3

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
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lknc;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lknc;->b:I

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
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_3
    const/4 v6, 0x0

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

    :goto_4
    aput-object v0, v3, v5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lkoo;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lknb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lpnu;->B()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_c
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v5, 0x2c4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v2, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v5, 0x2cc

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    invoke-static {v0, p0}, Lkav;->p(Landroid/hardware/camera2/CaptureRequest$Key;Loyd;)Loyd;

    move-result-object p0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lkoh;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_18
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Lknc;->b:I

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Lknb;-><init>(Z)V

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v2, Lkoh;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_25
    const/16 v5, 0x2c9

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v5, 0x2c7

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Lpnu;->B()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

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

    :goto_2c
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_30
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lpnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_44

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_34
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_39
    const/16 v5, 0x2c5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_69

    nop

    nop

    :goto_3c
    check-cast p0, Lkop;

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

    :goto_3d
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3f
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

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

    :pswitch_4
    goto/32 :goto_56

    nop

    nop

    :goto_41
    check-cast p0, Lkqa;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Lkqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_46
    const/16 v5, 0x2cb

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_47
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_49
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lknc;->a:Ltxm;

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

    :goto_4b
    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_4c
    const/4 v6, 0x0

    nop

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

    :goto_4d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_2
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_3

    nop

    goto/32 :goto_33

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

    :goto_4f
    invoke-static {v0, p0}, Lkav;->p(Landroid/hardware/camera2/CaptureRequest$Key;Loyd;)Loyd;

    move-result-object p0

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

    :goto_50
    aput-object v0, v3, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v0, p0}, Lkav;->p(Landroid/hardware/camera2/CaptureRequest$Key;Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_54
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_55
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_56
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_57
    check-cast p0, Lmhz;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_58
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_5a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9a

    nop

    :goto_5b
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_5f
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_61
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_63
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_64
    check-cast p0, Lkmu;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_68
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6a
    new-array v3, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v0, Lpha;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_6d
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_6f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_98

    nop

    :goto_71
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_72
    aput-object v2, v3, v5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_73
    check-cast p0, Lkox;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_74
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_75
    new-array v3, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/16 v5, 0x2c6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_77
    check-cast p0, Lfwb;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_78
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast p0, Lkmv;

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

    :goto_7a
    invoke-direct {v0, p0, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/16 v5, 0x2ca

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7c
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_7e
    iget-object p0, p0, Lknc;->a:Ltxm;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7f
    const/16 v5, 0x2c3

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_2d

    nop

    nop

    :goto_81
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_82
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const v0, 0x2

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/16 v5, 0x2c8

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_86
    new-instance v0, Lpha;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_89
    aput-object v0, v3, v5

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object v2, Lkoh;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8c
    sget-object p0, Lkoh;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v5, p0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast p0, Lkqa;

    nop

    :goto_8f
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_90
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    :goto_91
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_92
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v6, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_96
    aput-object p0, v3, v5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_97
    check-cast p0, Lkqa;

    nop

    :goto_98
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

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

    :goto_9a
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9c
    check-cast p0, Lpnu;

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
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_9e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v3, 0x1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_a1
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    new-array v3, v3, [Ljava/lang/Object;

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_a3
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_a4
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    aput-object v0, v3, v5

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

    :goto_a6
    const/16 v5, 0x2cd

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    check-cast p0, Lkqa;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a8
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_a9
    check-cast p0, Lhwy;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_aa
    check-cast p0, Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_9b

    nop

    nop

    :goto_ad
    return-object v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_6d

    nop

    nop

    nop

    nop
.end method
