.class public final synthetic Ljbl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

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
    iput p2, p0, Ljbl;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljay;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljsd;->c()Ljsc;

    move-result-object p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Ljpg;->a(Ljpv;)V

    goto/32 :goto_80

    nop

    nop

    :goto_5
    invoke-interface {p1, p0}, Ljpg;->a(Ljpv;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0}, Lmhm;->g(IF)V

    :goto_7
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, v4}, Ljbc;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Ljtd;->o(Ljsc;)Lj$/util/OptionalInt;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :pswitch_2
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ljay;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljpv;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lj$/util/OptionalInt;->isPresent()Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p1, v1}, Ljbl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Lj$/util/OptionalInt;->ifPresent(Ljava/util/function/IntConsumer;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    move-object v0, p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Ljbs;->n(Ljay;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_19
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_1a
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Ljrw;->d:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1, v2, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->c(Ljsc;ZZ)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_97

    nop

    nop

    :goto_1e
    invoke-interface {p1, p0}, Ljbr;->b(Ljay;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljbl;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

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

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p0, Ljay;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Ljtd;

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

    :goto_27
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2a
    check-cast p0, Lizn;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1, v1}, Ljrw;->v(Ljse;Z)V

    :goto_2c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1, v2, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->c(Ljsc;ZZ)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0, v1, p1}, Lizn;->b(Lnne;ILsmf;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Ljtd;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1}, Lmxw;->w(Lmxz;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Ljcb;

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

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5a

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1}, Ljtd;->o(Ljsc;)Lj$/util/OptionalInt;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

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

    :goto_38
    check-cast p1, Ljpg;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_39
    iget-boolean v0, p0, Ljbs;->m:Z

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_3a
    instance-of v0, p1, Ljoh;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3b
    new-instance v0, Ljsz;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_3c
    check-cast p0, Ljrw;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_3e
    iput-object p1, p0, Lizn;->c:Lsmf;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v0, 0xd

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

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_ac

    nop

    nop

    :goto_41
    check-cast p0, Landroid/content/res/Configuration;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v1, Llpe;->a:Llpe;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_1
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Ljsc;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p1, Ljpv;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, p1, v2, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->c(Ljsc;ZZ)V

    goto/32 :goto_cc

    nop

    nop

    :goto_47
    if-ne v0, v2, :cond_2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Ljsg;->g:Lnkn;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_49
    sget-object v2, Llpe;->a:Llpe;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4a
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sget v0, Ljov;->e:I

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p1, v0}, Ljou;-><init>(I)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_c6

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_51
    check-cast p1, Ljse;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_53
    iget-object v0, p0, Ljrw;->e:Loyd;

    nop

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

    :goto_54
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

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

    :goto_55
    iget-object p0, p0, Ljbs;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_56
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_57
    invoke-interface {p1, p0}, Ljpg;->a(Ljpv;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_58
    check-cast p1, Ljsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sget v0, Ljph;->l:I

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Ljtd;->q()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_b4

    nop

    nop

    :pswitch_9
    goto/32 :goto_94

    nop

    nop

    :goto_5f
    check-cast p0, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Ljbx;->u:Ljbh;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-void

    nop

    :pswitch_a
    goto/32 :goto_58

    nop

    nop

    :goto_62
    iget p1, p1, Ljbf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_63
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_64
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_6a

    nop

    nop

    :goto_66
    check-cast p1, Ljoj;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const v1, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_68
    check-cast p1, Ljpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1, p0}, Ljcb;->b(Ljbh;)V

    goto/32 :goto_6c

    nop

    nop

    :goto_6a
    return-void

    nop

    :pswitch_b
    goto/32 :goto_6f

    nop

    nop

    :goto_6b
    goto/16 :goto_b4

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_6d
    check-cast p1, Ljbf;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Ljrw;->e:Loyd;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_72
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p0, Lrxw;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0, p1, v2}, Ljrw;->v(Ljse;Z)V

    :goto_76
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast p1, Ljse;

    nop

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

    :goto_79
    instance-of v0, p1, Ljoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_7a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_ce

    nop

    nop

    :cond_3
    goto/32 :goto_cd

    nop

    :goto_7b
    invoke-direct {v0, p0, v2}, Ljsz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_d
        :pswitch_b
        :pswitch_5
        :pswitch_1
        :pswitch_10
        :pswitch_e
        :pswitch_12
        :pswitch_14
        :pswitch_f
        :pswitch_13
        :pswitch_7
        :pswitch_11
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_15
        :pswitch_8
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :goto_7d
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object p0, Lsmf;->b:Lsmf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Ljay;->ordinal()I

    move-result p0

    nop

    packed-switch p0, :pswitch_data_1

    goto/32 :goto_54

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    :pswitch_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_81
    check-cast p1, Ljoh;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_82
    check-cast p0, Ljrw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_83
    return-void

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_84
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_85
    check-cast p0, Ljbs;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p1}, Ljsd;->c()Ljsc;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_87
    return-void

    nop

    :pswitch_10
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_88
    invoke-interface {p1, p0}, Ljoj;->l(Landroid/content/Intent;)V

    :goto_89
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast p1, Ljsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8c
    const/4 v2, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast p1, Ljpv;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_8e
    new-instance p1, Ljou;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8f
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_90
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_4
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_91
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_92
    iget v1, p0, Lizn;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_93
    sget v0, Ljov;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_94
    sget-object p0, Lsmf;->c:Lsmf;

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

    :goto_95
    invoke-interface {p1, p0}, Ljoh;->j(Landroid/content/res/Configuration;)V

    :goto_96
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_97
    iget-object p0, p0, Ljtd;->k:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_98
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_75

    nop

    nop

    :goto_99
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p0, p1}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    check-cast p1, Ljbr;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_9d
    return-void

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_9e
    invoke-interface {p0, p1}, Ljpg;->a(Ljpv;)V

    goto/32 :goto_83

    nop

    nop

    :goto_9f
    check-cast p0, Ljrw;

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

    :goto_a0
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v3, Ljbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_a2
    new-instance v0, Ljqf;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p0}, Ljtd;->n()Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast p0, Ljbx;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast p1, Ljpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {p0, p1}, Lnkn;->h(Lnkn;F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast p1, Ljsd;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-direct {v0, p1, v1}, Ljqf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_ae
    iget-object p0, p0, Ljtd;->k:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/16 v4, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b0
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_b1
    if-nez v0, :cond_7

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

    :cond_7
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast p1, Lmxz;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b3
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_36

    nop

    nop

    :goto_b5
    check-cast p0, Ljbs;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    return-void

    nop

    :pswitch_14
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    check-cast p1, Ljsd;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b8
    check-cast p0, Ljsg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object p0, p0, Ljtd;->k:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_ba
    if-ne v1, v0, :cond_8

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_bb
    sget-object p0, Lsmf;->d:Lsmf;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast p1, Lsmf;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_be
    iget v0, p0, Ljbl;->b:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_bf
    int-to-double v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_c0
    iget-object v0, p0, Lizn;->b:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object p0, p0, Ljbs;->r:Lmhm;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

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

    nop

    :goto_c3
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_9
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_c5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {p0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

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

    nop

    :goto_c9
    check-cast p0, Ljtd;

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_ca
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

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

    :goto_cb
    invoke-virtual {p0, v0, v1}, Lmxw;->h(D)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_15
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_be

    nop

    nop

    :goto_cf
    check-cast p1, Lizn;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_b4

    nop

    nop

    nop

    nop

    :pswitch_16
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object p0, p0, Ljbl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Ljbl;->b:I

    nop

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

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1

    nop

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

    :pswitch_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_b

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
        :pswitch_4
        :pswitch_c
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_d
        :pswitch_b
        :pswitch_2
        :pswitch_e
        :pswitch_9
        :pswitch_1
        :pswitch_f
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_a
    .end packed-switch

    :goto_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_18

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

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    :pswitch_c
    goto/32 :goto_d

    nop

    nop

    :goto_1c
    return-object p0

    nop

    :pswitch_d
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_f

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

    :pswitch_11
    goto/32 :goto_29

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

    goto/32 :goto_15

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

    nop

    :pswitch_12
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    :goto_2a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method
