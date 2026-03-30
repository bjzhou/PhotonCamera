.class public final synthetic Lgjd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgjd;->a:Ljava/lang/Object;

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

    :goto_1
    iput-object p1, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lgjd;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lgjd;->c:I

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 8

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lmei;->a()Lqou;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lmbp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4
    sget-object v1, Lnne;->c:Lnne;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_6
    sget-object v3, Lnne;->b:Lnne;

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

    :goto_7
    instance-of v1, v0, Lgiu;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i(Lmeh;Lmei;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_b
    sget-object v7, Lnne;->k:Lnne;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2}, Lqou;->h(Lryy;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lkof;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_f
    iget-object v0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iput-object v0, v2, Lqou;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_11
    invoke-static {v3, v4, v5, v6, v7}, Lryy;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Lqou;->g(Lryy;)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :pswitch_0
    goto/32 :goto_7b

    nop

    nop

    :goto_14
    iget-object p0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_16
    invoke-static {}, Lmei;->a()Lqou;

    move-result-object v2

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

    :goto_17
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    iput-object v1, v0, Lqou;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v2, Lsbt;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v3, v4}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

    nop

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

    :goto_1c
    iget-object p0, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v6, Lnne;->c:Lnne;

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

    :goto_1e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v5, Lnne;->k:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Lgiu;->b()Lsui;

    move-result-object v0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "VideoBoost5xZoom"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    iget v0, v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->f:F

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

    :goto_23
    rem-int v0, v0, v1

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

    :goto_24
    iget-object p0, p0, Lgjd;->a:Ljava/lang/Object;

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

    nop

    :goto_25
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    :goto_26
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2}, Lqou;->f()Lmei;

    move-result-object v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lgjd;->b:Ljava/lang/Object;

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

    :goto_2c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_2d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :goto_2e
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Lkof;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v1, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i(Lmeh;Lmei;)V

    goto/32 :goto_5d

    nop

    nop

    :goto_31
    iget-object v0, p0, Lgjd;->a:Ljava/lang/Object;

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

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_34
    iget-object p0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_35
    invoke-interface {p0}, Lmiu;->run()V

    :goto_36
    goto/32 :goto_58

    nop

    nop

    :goto_37
    invoke-virtual {p0, v0}, Lmbp;->d(Loyd;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v4, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v2}, Lqou;->g(Lryy;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v1, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, v0}, Lkof;->a(Lkob;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v1, p0, v2}, Lghf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v4, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-void

    nop

    :pswitch_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lgiu;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    invoke-static {}, Lmei;->a()Lqou;

    move-result-object v2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v3, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, v3}, Lqou;->h(Lryy;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_49
    iget-object v1, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4a
    new-instance v2, Lsbt;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v1, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i(Lmeh;Lmei;)V

    goto/32 :goto_13

    nop

    nop

    :goto_4c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_50
    iput-object v1, v0, Lqou;->c:Ljava/lang/Object;

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

    :goto_51
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    :goto_52
    sget-object v3, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->OAAtckVf:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2, v3}, Lqou;->h(Lryy;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_54
    invoke-static {v3, v4}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

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

    :goto_55
    new-instance v1, Lghf;

    nop

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

    :goto_56
    invoke-virtual {v2}, Lqou;->f()Lmei;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    :pswitch_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2, v1}, Lqou;->j(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v1, Lmeh;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_5c
    check-cast v0, Lkob;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    :pswitch_7
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v6, Lnne;->q:Lnne;

    nop

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

    :goto_5f
    check-cast v0, Lmlu;

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

    :goto_60
    check-cast p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_61
    new-instance v2, Lsbt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_62
    const v1, 0xd

    nop

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

    :goto_63
    invoke-virtual {v2, v3}, Lqou;->g(Lryy;)V

    goto/32 :goto_2

    nop

    nop

    :goto_64
    iget-object v0, p0, Lgjd;->b:Ljava/lang/Object;

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

    :goto_65
    invoke-direct {v2, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v3, v4, v5, v6}, Lryy;->I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v3

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_67
    const-string v1, "VideoBoostANS"

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_68
    check-cast p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

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

    :goto_69
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_6b
    invoke-direct {v2, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v2, Lsbt;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0, v0}, Lkof;->a(Lkob;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Lqou;->f()Lmei;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_70
    return-void

    nop

    :pswitch_8
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2, v3}, Lqou;->g(Lryy;)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_72
    const/4 v1, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget v0, p0, Lgjd;->c:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2, v1}, Lqou;->i(Z)V

    goto/32 :goto_59

    nop

    nop

    :goto_75
    sget-object v4, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lgjd;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0}, Lqou;->f()Lmei;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_78
    iget-object p0, p0, Lgjd;->a:Ljava/lang/Object;

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

    :goto_79
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v0, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {}, Lmei;->a()Lqou;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Lgjd;->a:Ljava/lang/Object;

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

    :goto_7d
    iput-object v3, v2, Lqou;->c:Ljava/lang/Object;

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

    :goto_7e
    invoke-virtual {v0, v2}, Lqou;->h(Lryy;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_80
    iget-object v1, p0, Lgjd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_81
    check-cast v0, Lkob;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lgjd;->b:Ljava/lang/Object;

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

    :goto_83
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast v0, Lmee;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_86
    invoke-virtual {p0, v0, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->i(Lmeh;Lmei;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v0, Lrss;

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

    nop

    :goto_88
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_89
    if-lez v0, :cond_2

    nop

    goto/32 :goto_6a

    nop

    :cond_2
    goto/32 :goto_69

    nop

    :goto_8a
    sget-object v1, Lpog;->b:Lpog;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v2, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    sget-object v5, Lnne;->p:Lnne;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop
.end method
