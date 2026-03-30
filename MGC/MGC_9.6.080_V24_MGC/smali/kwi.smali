.class public final synthetic Lkwi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lkwi;->c:I

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

    nop

    :goto_3
    iput p1, p0, Lkwi;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_3

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

    nop

    :goto_2
    iput-object p1, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lkwi;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lkwi;->a:I

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
.end method

.method public constructor <init>(Ljava/lang/Object;II[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lkwi;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput p2, p0, Lkwi;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 6

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, v1, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_3
    goto/16 :goto_20

    nop

    nop

    :goto_4
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, v0, Lnfr;->e:Lnfo;

    nop

    :goto_6
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqdv;->b:Lpsc;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_8
    new-instance v1, Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_9
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_b
    const-string p0, "%"

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lkwi;->a:I

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

    :goto_d
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_af

    nop

    nop

    :goto_10
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_11
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

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

    nop

    :goto_12
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Lnfr;->a(Landroid/content/Intent;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :pswitch_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_19
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lkwi;->a:I

    nop

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

    nop

    :goto_1b
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Lnfr;->d:Landroid/view/ViewStub;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lkwi;->a:I

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v4, v1}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lkwi;->a:I

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Lkwi;->a:I

    nop

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

    :goto_23
    iget-object p0, p0, Lphp;->a:Lpuq;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_81

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Lpuq;->bK(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v2}, Lixe;->g(Lixg;)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, v0, Lnfr;->f:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    return-void

    nop

    :pswitch_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    new-instance v1, Lnfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, "/night_sight_shooting_progress"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

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

    :goto_32
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lnds;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Lpuq;->bK(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, v0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_38
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Lpdp;->b:Ljava/util/Set;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_3b
    invoke-virtual {v3, v0}, Lpey;->a(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v1, v0, Lnds;->u:I

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_3d
    iget v1, p0, Lkwi;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v3, v0}, Lkyf;->I(ZI)V

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->scrollTo(II)V

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_40
    iput-object p0, v0, Lnfr;->f:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_43
    iget p0, p0, Lkwi;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

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

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v0, Lnfr;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

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

    :goto_49
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p0, Lkwi;->a:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v1, 0x7f0b0409

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4c
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v0}, Lpuq;->bK(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v1, "Camera audio restriction set to "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_50
    invoke-interface {p0, v0}, Lpcu;->f(Ljava/lang/String;)V

    :goto_51
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_53
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->smoothScrollTo(II)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_57
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v0}, Lrrf;->T(I)[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, v0, Lnfr;->f:Landroid/content/Intent;

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_5a
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_5d
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

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

    :goto_60
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_61
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p0, Lkyf;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    :pswitch_6
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_65
    if-ne p0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_66
    check-cast p0, Lqsp;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b6

    nop

    nop

    :goto_68
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    check-cast p0, Lqdv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6a
    iget-object v2, v0, Lnfr;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_6b
    iput-object v1, v0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6e
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6f
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_72
    iget p0, p0, Lkwi;->a:I

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-gez p0, :cond_5

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

    :cond_5
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_76
    check-cast p0, Lpll;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_77
    iget v0, p0, Lkwi;->c:I

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_78
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast p0, Lntu;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v2, p0, Lpdp;->b:Ljava/util/Set;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, v0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iput-boolean v3, v0, Lnfr;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_7d
    check-cast v3, Lpey;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7e
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0, v0}, Loil;->k(I)V

    goto/32 :goto_17

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
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_83
    goto/32 :goto_59

    nop

    nop

    :goto_84
    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, v0}, Lpuq;->cS(I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p0, Lpdp;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_6
    goto/32 :goto_9e

    nop

    :goto_89
    goto :goto_83

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8b
    const/4 v3, 0x1

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_8e
    iget p0, p0, Lkwi;->a:I

    nop

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

    nop

    :goto_8f
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_90
    iget-object v1, v0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v2, v0, Lnfr;->e:Lnfo;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_10

    nop

    nop

    :goto_93
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const-string v1, "--"

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_96
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    :goto_97
    invoke-virtual {p0, v1, v0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_ab

    nop

    nop

    :goto_98
    iget-object p0, p0, Lphp;->a:Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p0, v0}, Lpll;->a(I)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0, v0}, Lqsp;->a(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9c
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_c
        :pswitch_4
        :pswitch_e
        :pswitch_f
        :pswitch_9
        :pswitch_d
        :pswitch_1
        :pswitch_6
        :pswitch_a
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_10
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :goto_9d
    goto/32 :goto_aa

    nop

    nop

    :goto_9e
    goto/32 :goto_9d

    nop

    nop

    :goto_9f
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    sget-object v2, Lixg;->c:Lixg;

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

    :goto_a2
    invoke-virtual {p0, v0}, Lpuq;->dg(I)V

    goto/32 :goto_a5

    nop

    nop

    :goto_a3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

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

    nop

    :goto_a4
    add-int/2addr v0, v3

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_c7

    nop

    nop

    :goto_a6
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast v1, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast p0, Lphp;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_aa
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_ab
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_4e

    nop

    nop

    :goto_ac
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_ad
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-direct {v1, v2}, Lnfo;-><init>(Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v0}, Lnds;->e()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v4, p0, Lpeu;->a:Lpcu;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    check-cast p0, Lphp;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b4
    const v1, 0x18

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object p0, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_b6
    if-ne v0, v3, :cond_8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b7
    check-cast p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_b9
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v1, p0, Lkwi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {p0, v2}, Lpd;->a(I)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object p0, p0, Lpeu;->b:Lpd;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_bd
    check-cast p0, Loil;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_be
    return-void

    nop

    nop

    :pswitch_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    check-cast p0, Lpeu;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c0
    check-cast v1, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    return-void

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object p0, p0, Lpdp;->a:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_c4
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iput v0, p0, Lpdp;->c:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v1, v0, Lnfr;->j:Lixe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget v0, p0, Lkwi;->a:I

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

    :goto_c8
    add-int v0, v0, v1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_c9
    iget-object v1, v0, Lnfr;->j:Lixe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget v0, p0, Lkwi;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v1, v2}, Lixe;->a(Lixf;)Lpci;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object v4, v0, Lnfr;->i:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_cd
    invoke-interface {p0, v0}, Lpsc;->e(I)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop
.end method
