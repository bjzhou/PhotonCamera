.class public final synthetic Liqe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
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

    nop

    :goto_1
    iput p1, p0, Liqe;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget p0, Ljov;->e:I

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

    :goto_1
    iget-boolean p0, p1, Lizn;->e:Z

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1c

    nop

    nop

    :goto_3
    iget-object p0, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lizn;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v1}, Lizn;->a(I)V

    goto/32 :goto_26

    nop

    nop

    :goto_8
    check-cast p1, Llum;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljof;->a()V

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_c
    return-void

    nop

    :pswitch_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_30

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljaa;->h()V

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlex/gcam/GrayImageS16;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Ljcb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v1}, Lizn;->a(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Llum;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->b(Z)V

    goto/32 :goto_4c

    nop

    nop

    :goto_1b
    check-cast p1, Ljpv;

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

    nop

    :goto_1c
    check-cast p1, Lcom/google/googlex/gcam/RawReadView;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1d
    instance-of p0, p1, Llum;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_1f
    sget p0, Lryb;->d:I

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

    nop

    nop

    :goto_20
    iget-object p0, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :pswitch_5
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Lizn;->a(I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_54

    nop

    nop

    :goto_28
    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Ljbx;->a:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v1}, Lizn;->a(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Ljaa;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_2e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    invoke-direct {p1, v0}, Liqe;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_67

    nop

    nop

    :goto_32
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, v1}, Liqe;-><init>(I)V

    goto/32 :goto_62

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    :goto_35
    goto/32 :goto_70

    nop

    nop

    :goto_36
    check-cast p1, Lizn;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Liqe;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Lizn;->a(I)V

    :goto_3a
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3b
    iget-object p1, p0, Ljaa;->j:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :pswitch_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Ljcb;->i:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Ljcd;->f()V

    goto/32 :goto_6f

    nop

    nop

    :goto_3f
    check-cast p1, Limo;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_3f

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :pswitch_d
    goto/32 :goto_5e

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_36

    nop

    nop

    :goto_44
    check-cast p0, Ljcb;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/16 v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_46
    sget-object p0, Lsbh;->a:Lryb;

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

    :goto_47
    check-cast p1, Ljcd;

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

    :goto_48
    iget-object p0, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_49
    check-cast p1, Lggn;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4a
    check-cast p1, Lcom/google/googlex/gcam/RawReadView;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4b
    return-void

    nop

    :pswitch_f
    goto/32 :goto_6d

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_61

    nop

    nop

    :goto_4d
    return-void

    nop

    :pswitch_11
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object p0, Ljbx;->a:Lryh;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Lizn;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_50
    check-cast p1, Lizn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_51
    check-cast p1, Lizn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Lcom/google/googlex/gcam/RawReadView;->a()V

    goto/32 :goto_3c

    nop

    nop

    :goto_53
    invoke-interface {p1, v0, v0, p0, v0}, Limo;->f(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;Lcom/google/googlex/gcam/CyclopsParameters;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_54
    check-cast p1, Lcom/google/googlex/gcam/GrayImageS16;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1}, Lggn;->a()V

    goto/32 :goto_31

    nop

    nop

    :goto_57
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lcom/google/googlex/gcam/RawReadView;->a()V

    goto/32 :goto_4d

    nop

    nop

    :goto_59
    rem-int v0, v0, v1

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

    :goto_5a
    return-void

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_2d

    nop

    nop

    :goto_5b
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5c
    instance-of p0, p1, Ljof;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Lcom/google/googlex/gcam/GrayImageS16;->b()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5f
    check-cast p1, Ljof;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget p0, p0, Liqe;->a:I

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget p0, Ljcb;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v0, 0x1

    nop

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

    :goto_66
    new-instance p1, Liqe;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_68
    sget p0, Ljov;->e:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6a
    iget-object p0, p0, Ljcb;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6b
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_6d
    check-cast p1, Lnje;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez p0, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_12
        :pswitch_13
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :goto_71
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_72
    check-cast p1, Ljpv;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p1, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->b(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_a

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

    :pswitch_2
    goto/32 :goto_17

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_5
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :pswitch_3
    goto/32 :goto_5

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

    :pswitch_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_1d

    nop

    nop

    nop

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

    :pswitch_6
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_13
        :pswitch_b
        :pswitch_4
        :pswitch_d
        :pswitch_8
        :pswitch_c
        :pswitch_2
        :pswitch_3
        :pswitch_11
        :pswitch_1
        :pswitch_12
        :pswitch_e
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_7
        :pswitch_f
    .end packed-switch

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_28

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

    :pswitch_a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_9

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

    :pswitch_c
    goto/32 :goto_18

    nop

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

    :pswitch_d
    goto/32 :goto_6

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_1a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_16

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_20
    return-object p0

    nop

    nop

    :pswitch_10
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    :pswitch_11
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    :goto_27
    iget v0, p0, Liqe;->a:I

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    :pswitch_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method
