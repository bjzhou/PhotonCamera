.class public final synthetic Lfym;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


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

    nop

    :goto_0
    iput-object p1, p0, Lfym;->a:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    :goto_2
    iput p2, p0, Lfym;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

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
.method public final close()V
    .locals 7

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljaj;->b()V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lmra;->d:Lmra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lgjw;->v:Lnne;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Loyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    iput v2, v5, Lskd;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgjw;->z:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lgfy;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :cond_0
    :goto_c
    :try_start_0
    sget-object p0, Lgek;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v1, 0x103

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Mode not started, or already ended."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lhzq;->d()Z

    move-result v1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljaj;

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

    nop

    :goto_11
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_13
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lgjw;->k()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_16
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lgfy;->b:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lfzw;->n()V

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lgjw;->x:Lows;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v2, Lskd;->d:I

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_1e
    move-object v5, v4

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

    :goto_1f
    or-int/2addr v2, v3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lgmc;->k:Ljdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_22
    return-void

    nop

    :pswitch_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

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

    nop

    :goto_24
    iget-object p0, p0, Lgjw;->H:Lfdo;

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x0

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v2}, Lgjw;->o(Z)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lfzw;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lgmc;->j:Ljdc;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v2, v2, Lskc;->aG:I

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

    :goto_31
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x7

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

    nop

    :goto_33
    or-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v1, p0, Lfyo;->m:Lfyb;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_36
    iput-object v1, p0, Lfzr;->a:Loyd;

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

    :goto_37
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lgjw;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v3}, Lglm;->n(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_57

    nop

    :goto_3c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p0, Lglm;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v0, Ltkb;->b:Ltkg;

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

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_9a

    nop

    nop

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

    :pswitch_5
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_41
    iget v0, p0, Lfym;->b:I

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

    :goto_42
    invoke-interface {p0}, Lmiy;->b()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v3}, Lglm;->l(Z)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v2, v5, Lskd;->b:I

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

    :goto_47
    sget-object p0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, p0, Lgjw;->o:Ltud;

    nop

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

    :goto_49
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lgjw;->G:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_b

    nop

    nop

    :goto_4d
    return-void

    nop

    :pswitch_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lgbm;->m:Ljdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, v1}, Lgdc;->d(Lneh;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v5, Lskd;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c()V

    :goto_55
    goto/32 :goto_a0

    nop

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_6
        :pswitch_2
        :pswitch_13
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_12
        :pswitch_b
        :pswitch_4
        :pswitch_11
        :pswitch_3
        :pswitch_1
        :pswitch_c
        :pswitch_7
    .end packed-switch

    :goto_57
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

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

    :goto_5a
    check-cast p0, Lgdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v0, Lgek;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_5d
    check-cast p0, Lmrb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v2}, Lglm;->m(Z)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {p0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_61
    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p0, Lfzr;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v1, p0, Lgjw;->r:Lcom/google/android/apps/camera/ui/views/ToggleUi;

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

    :goto_64
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Lfuu;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_66
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    :pswitch_c
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v2, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lgbm;->g:Ljdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p0}, Lfxp;->c()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_6e
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_2
    goto/32 :goto_7e

    nop

    nop

    :goto_70
    check-cast p0, Lgbm;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_71
    invoke-virtual {p0, v0}, Ljdc;->g(Ljdb;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0, v0}, Lmrb;->l(Lmra;)V

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_73
    check-cast p0, Lfyo;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_74
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_75
    const v0, 0x14

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_76
    rem-int v0, v0, v1

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

    :goto_77
    iget v2, v5, Lskd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_78
    move-object p0, v0

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast p0, Lglm;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v4, v0, Ltkb;->b:Ltkg;

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

    :goto_7e
    invoke-virtual {p0, v2, v3}, Lgjw;->i(ZZ)V

    :goto_7f
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0, v0}, Lgfy;->d(Lj$/util/Optional;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v0, v0, Lmxw;->a:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_3f

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_87
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_88
    monitor-enter v0

    nop

    nop

    :try_start_2
    move-object p0, v0

    nop

    check-cast p0, Lgek;

    nop

    nop

    iget-object p0, p0, Lgek;->e:Lows;

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    check-cast v1, Lgek;

    nop

    nop

    iget-boolean v1, v1, Lgek;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lgek;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgek;->c:Ljava/util/Map;

    nop

    nop

    new-instance v2, Lglj;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v3}, Lglj;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    move-object v1, v0

    nop

    nop

    nop

    check-cast v1, Lgek;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgek;->i:Ltkb;

    nop

    nop

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsli;

    nop

    nop

    nop

    nop

    iget v2, v2, Lsli;->b:I

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v2, v3

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    check-cast v2, Lgek;

    nop

    nop

    iget-object v2, v2, Lgek;->h:Ltkb;

    nop

    nop

    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    check-cast v1, Lsli;

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_5

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_5
    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v2, Lslj;

    nop

    nop

    sget-object v4, Lslj;->a:Lslj;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lslj;->h:Lsli;

    nop

    nop

    nop

    nop

    iget v1, v2, Lslj;->b:I

    nop

    nop

    or-int/lit8 v1, v1, 0x20

    nop

    iput v1, v2, Lslj;->b:I

    nop

    nop

    :cond_6
    move-object v1, v0

    nop

    nop

    check-cast v1, Lgek;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgek;->h:Ltkb;

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_7
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lslj;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lslj;->a:Lslj;

    nop

    nop

    nop

    nop

    nop

    iget v6, v2, Lslj;->b:I

    nop

    nop

    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v6, v2, Lslj;->b:I

    nop

    nop

    nop

    iput-wide v4, v2, Lslj;->e:J

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    check-cast v1, Lslj;

    nop

    invoke-virtual {p0}, Lows;->close()V

    move-object p0, v0

    nop

    nop

    nop

    check-cast p0, Lgek;

    nop

    nop

    nop

    nop

    iput-boolean v3, p0, Lgek;->f:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0, v0}, Ljdc;->g(Ljdb;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object v2, Lskc;->aD:Lskc;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_8e
    invoke-direct {v1, v0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_90
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_91
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_95
    iget-object p0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_96
    iput v1, v2, Lskd;->d:I

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_97
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_9c

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_98
    check-cast v1, Lhzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_99
    return-void

    nop

    :pswitch_12
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_9a
    iget-object v0, p0, Lfym;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0, v0}, Lfdo;->t(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V

    :goto_9c
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a1

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lgjw;->C:Lmxw;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast p0, Lgmc;

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

    :goto_a0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_3
    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lgjw;

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Lgjw;->A:Z

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iput-object v1, v2, Lskd;->aE:Lslj;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a2
    const/high16 v3, -0x80000000

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast p0, Lfuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_a4
    return-void

    nop

    :pswitch_13
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-lez v0, :cond_9

    nop

    goto/32 :goto_3c

    nop

    :cond_9
    goto/32 :goto_3b

    nop

    :goto_a6
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object p0, v0, Lgek;->g:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
