.class public final synthetic Lglj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lglj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lglj;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Lcom/google/android/apps/camera/bottombar/SideButtonContainer;

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

    :goto_2
    sget-object v0, Llhg;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v1, p2, Lslf;->b:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lglk;

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

    :goto_5
    check-cast p2, Lphj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    move v5, v2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_9
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_c
    check-cast p1, Lkyf;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_d
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v4, Landroid/view/View;

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

    :goto_f
    iget-object p2, p0, Lsli;->d:Ltkv;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p2}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object p2

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_12
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lkzu;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_14
    const/4 v3, 0x1

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->l(Lglk;Lglr;)V

    :goto_18
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Llhg;->a:Lsdb;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lkyf;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_1b
    if-ne v3, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_2
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_93

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_1e
    iget p1, v2, Lslf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->l(Lglk;Lglr;)V

    :goto_20
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_24
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_26
    or-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lkyw;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :cond_4
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->n:Ljava/util/EnumMap;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2b
    iput p1, p2, Lslf;->d:I

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v3}, Lkyf;->H(I)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    :goto_30
    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_5
    goto/32 :goto_125

    nop

    nop

    :goto_32
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p2, Lkyw;->ay:Lkyw;

    nop

    nop

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

    :goto_34
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_35
    check-cast p2, Lmqz;

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

    :goto_36
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :cond_6
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object p2, Lsli;->a:Lsli;

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

    :goto_39
    goto/32 :goto_57

    nop

    :goto_3a
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v7, 0x7f1402dd

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_122

    nop

    nop

    :goto_3e
    check-cast v1, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p1, Llhv;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_44
    move v1, v3

    nop

    nop

    :goto_45
    goto/32 :goto_a

    nop

    nop

    :goto_46
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

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

    :goto_49
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4a
    invoke-virtual {v4, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_4c
    check-cast v4, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_4d
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_4e
    or-int/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_50
    const/16 v5, 0x8

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p2, Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_52
    check-cast p0, Lsli;

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

    :goto_53
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_54
    check-cast p1, Llhv;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    :cond_7
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_9
    .end packed-switch

    :goto_57
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v0, p0, Lglj;->b:I

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v7, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_8
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p2, Lphj;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v2, p0}, Lkyf;->r(ZLkyr;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_5f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-ne p1, p0, :cond_9

    nop

    goto/32 :goto_20

    nop

    :cond_9
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object v2, Lkyw;->t:Lkyw;

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_62
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-boolean v3, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->u:Z

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

    :goto_64
    check-cast p1, Lslh;

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_65
    move v5, v2

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_66
    check-cast v6, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_67
    const v6, 0x7f0801f1

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_68
    sget-object v1, Lkyw;->az:Lkyw;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_69
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_6b
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v4, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

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

    nop

    nop

    :goto_6d
    invoke-virtual {p0, p2}, Lkyw;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v4, Ljava/util/List;

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

    nop

    :goto_6f
    check-cast p0, Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_70
    iput-object p2, p0, Lsli;->d:Ltkv;

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_72
    check-cast p1, Lkyf;

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_73
    check-cast p1, Lslf;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    :pswitch_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v1, Lglr;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_77
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v0, Lkyw;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast p0, Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_7a
    move v5, v2

    nop

    nop

    :goto_7b
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v4, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_7d
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7e
    sget-object v9, Lkyq;->m:Lkyq;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_80
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_ad

    nop

    nop

    :goto_82
    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const/4 v1, 0x2

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_84
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_85
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_87
    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->n:Ljava/util/EnumMap;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_88
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_89
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_8a
    move-object v4, p1

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_8c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8d
    invoke-interface {p2, p0}, Lmqz;->d(Lmra;)V

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_8e
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_91
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_92
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p2, v1}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_94
    if-eqz v0, :cond_b

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_95
    invoke-static {v0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBar;->s(Landroid/view/View;Z)V

    :goto_96
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_99
    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast p2, Ltxm;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9d
    iput p1, v2, Lslf;->c:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9e
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_44

    nop

    nop

    :goto_a0
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_a1
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a2
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_a3
    return-void

    nop

    :pswitch_6
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    check-cast p1, Llhv;

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_a5
    const-string v8, "CaptureResolution"

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_a6
    sget-object v0, Llhv;->z:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {p2}, Ltkv;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_aa
    check-cast v7, Landroid/view/View;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->k:Ljava/util/EnumMap;

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_ad
    sget-object p0, Lkzt;->a:Lkzt;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_ae
    invoke-virtual/range {v4 .. v9}, Lkyf;->s(ZIILjava/lang/String;Lkyq;)V

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_7b

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    sget-object v0, Lslf;->a:Lslf;

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_b4
    iput p1, v2, Lslf;->b:I

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

    :goto_b5
    invoke-interface {p0, p1}, Ltkv;->add(Ljava/lang/Object;)Z

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_b6
    check-cast v7, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_b7
    check-cast v2, Lslf;

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_b9
    if-nez p2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_8f

    nop

    nop

    :goto_ba
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c3

    nop

    nop

    :goto_bb
    if-nez v0, :cond_e

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_e
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p1, v1}, Lkyf;->H(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast p0, Lgek;

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-static {v0, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->s(Landroid/view/View;Z)V

    :goto_bf
    goto/32 :goto_53

    nop

    nop

    :goto_c0
    invoke-static {p0, p1, p2}, Lhhg;->x(Loyn;Lkyf;Ljava/lang/Boolean;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_c3
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    check-cast p2, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_c5
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object p0, p0, Lsli;->d:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual/range {v4 .. v9}, Lkyf;->s(ZIILjava/lang/String;Lkyq;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_c9
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-interface {p2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    if-nez p0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    :cond_f
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object p0, p0, Lglj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_ce
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_cf
    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_d0
    if-eqz v4, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_da

    nop

    nop

    :goto_d3
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v7

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

    :goto_d5
    check-cast p2, Lslf;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_d6
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->n:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_d8
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->l:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_db
    return-void

    nop

    :pswitch_9
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v0, v2}, Lkyw;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    check-cast v0, Lkyw;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object p0, p0, Lgek;->i:Ltkb;

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move v5, v3

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_e1
    if-nez p0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_e3
    const-string v8, "CaptureResolution"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast p1, Lglk;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v4, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->k:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_e6
    check-cast p2, Lphj;

    nop

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

    :goto_e7
    goto/16 :goto_30

    nop

    nop

    :goto_e8
    goto/32 :goto_86

    nop

    nop

    :goto_e9
    if-nez p0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_eb
    goto :goto_e8

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_9b

    nop

    nop

    :goto_ed
    if-nez v0, :cond_14

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_ee
    goto :goto_e8

    nop

    :goto_ef
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    if-eqz v4, :cond_15

    nop

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

    :cond_15
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    check-cast p0, Lmra;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    instance-of v4, v1, Lglr;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez p2, :cond_16

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f4
    return-void

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f5
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast p1, Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    if-eqz p2, :cond_17

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_17
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f8
    if-lez v0, :cond_18

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_18
    goto/32 :goto_39

    nop

    :goto_f9
    iget v2, p2, Lslf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_fa
    if-nez v6, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    :cond_19
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_fb
    const v6, 0x7f0801ef

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_fc
    rem-int v0, v0, v1

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

    :goto_fd
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_fe
    if-nez v0, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    :cond_1a
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_101
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_102
    if-nez v4, :cond_1b

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_104
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_106
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_107
    const v7, 0x7f1402df

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    check-cast v1, Landroid/view/View;

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v0, p1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    if-eqz v2, :cond_1c

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_1c
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-interface {p2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p2

    nop

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

    :goto_10c
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10e
    if-eqz p2, :cond_1d

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-static {p0, p1, p2}, Lhhg;->x(Loyn;Lkyf;Ljava/lang/Boolean;)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_110
    check-cast v1, Lrss;

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

    :goto_111
    sget-object v0, Lkyw;->u:Lkyw;

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_112
    check-cast p1, Lmra;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_113
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_114
    check-cast v0, Lrss;

    nop

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

    :goto_115
    check-cast p0, Lkyw;

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_116
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_117
    invoke-virtual {v6, v7, v5}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->h(Landroid/view/View;I)V

    :goto_118
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget p1, p1, Lslh;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_11a
    if-eq v4, v5, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :cond_1e
    goto/32 :goto_eb

    nop

    nop

    :goto_11b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_11c
    iget-object p0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {v6, v7, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->h(Landroid/view/View;I)V

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_11f
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_120
    check-cast p0, Lkyw;

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

    nop

    nop

    :goto_121
    check-cast v4, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    check-cast p1, Lkyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_123
    sget-object v9, Lkyq;->m:Lkyq;

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_124
    invoke-virtual {p0, v0}, Lkyw;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_125
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_126
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

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

    nop

    nop

    :goto_4
    iget v0, p0, Lglj;->b:I

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_e

    nop

    nop

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
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

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

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_d

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

    :pswitch_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_0

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

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

    :goto_14
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_7

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

    nop

    :pswitch_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
