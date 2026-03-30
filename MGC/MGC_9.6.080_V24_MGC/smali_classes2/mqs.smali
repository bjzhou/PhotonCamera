.class public final synthetic Lmqs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p2, p0, Lmqs;->b:I

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

    :goto_2
    iput-object p1, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

.method public constructor <init>(Lmts;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lmqs;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_1
    const/16 v4, 0x12d6

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_2
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_af

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v4}, Lfdo;->I(Ljava/lang/String;)I

    move-result v2

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

    nop

    :goto_5
    check-cast v2, Lscz;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lmyl;->n()V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lnam;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_74

    nop

    :goto_b
    goto/32 :goto_6e

    nop

    nop

    :goto_c
    check-cast p0, Lmqy;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setVisibility(I)V

    goto/32 :goto_57

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

    nop

    nop

    :pswitch_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->M:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_12
    const/4 v2, 0x0

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

    :goto_13
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_53

    nop

    nop

    :goto_15
    sget-object v1, Lnan;->a:Lnan;

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

    :goto_16
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

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

    :goto_17
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lmyl;

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

    :goto_1b
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_1d
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

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_24
    if-nez v2, :cond_3

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lmym;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lmtp;->c()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lmyl;->m()V

    goto/32 :goto_77

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lmse;->c:Lrga;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->h:Lnam;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_2d
    return-void

    nop

    :pswitch_5
    goto/32 :goto_98

    nop

    nop

    :goto_2e
    if-eq v2, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    :pswitch_6
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lrga;->cancel()V

    goto/32 :goto_72

    nop

    nop

    :goto_33
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_34
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    :goto_35
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_36
    check-cast p0, Lmqt;

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_37
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_3b
    invoke-interface {p0}, Lngo;->b()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Lmyl;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Lfdo;->I(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_3e
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d4

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

    :pswitch_7
    goto/32 :goto_97

    nop

    nop

    :goto_40
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    goto/32 :goto_1d

    nop

    nop

    :goto_41
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Lnam;->e:Lhoh;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v1, Lnan;->e:Lnan;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_9d

    nop

    nop

    :goto_45
    check-cast p0, Lmse;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1, v3}, Lmzm;->b(Landroid/content/Context;I)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

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

    :goto_49
    check-cast p0, Lmqy;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lnam;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v3}, Lmqy;->k(Z)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lnam;->e:Lhoh;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lmqu;

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

    :goto_51
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->M:Z

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

    :goto_52
    invoke-virtual {p0, v2}, Lmqy;->k(Z)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_53
    iget v0, p0, Lmqs;->b:I

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->c:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->invalidate()V

    :goto_56
    goto/32 :goto_2f

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c()V

    :goto_59
    goto/32 :goto_c2

    nop

    nop

    :goto_5a
    const-string v4, "Set visual effect style %s"

    nop

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

    :goto_5b
    check-cast p0, Lfdo;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_5c
    if-eq v1, v2, :cond_8

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

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_5e
    sget-object v1, Lnan;->d:Lnan;

    nop

    nop

    :goto_5f
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->e:Landroid/content/Context;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_64
    const-string v2, "hotshot_prompt_edu"

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

    :goto_65
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_67
    iget-object v1, v0, Lmzm;->d:Lfdo;

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

    nop

    :goto_68
    check-cast p0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

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

    nop

    :goto_69
    invoke-virtual {p0}, Lfdo;->i()V

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_6a
    const/4 v3, 0x1

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->B:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_59

    nop

    nop

    :goto_6d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_6f
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->setVisibility(I)V

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_71
    const-wide/16 v1, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_72
    const v0, 0x7f0b00b9

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_74
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_75
    iput-boolean v3, p0, Lnam;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_76
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_9
    goto/32 :goto_61

    nop

    nop

    :goto_77
    return-void

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2, v1}, Lnan;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_79
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    :cond_a
    goto/32 :goto_54

    nop

    nop

    :goto_7a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->sendAccessibilityEvent(I)V

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_7b
    check-cast p0, Lmyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/16 v0, 0x12dd

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_5f

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_42

    nop

    nop

    :goto_80
    invoke-virtual {p0}, Lmqt;->h()V

    goto/32 :goto_bd

    nop

    nop

    :goto_81
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_83
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const v0, 0xc

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_85
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_87
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_89
    iput-object p0, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Lnac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_8a
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_8b
    const-string v4, "hotshot_first_time_edu"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    sget-object v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lsdb;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_8f
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_90
    sget-object v2, Lhmv;->c:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    return-void

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_8d

    nop

    nop

    :goto_93
    check-cast p0, Lmtp;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_94
    const/4 v2, 0x5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_b
    goto/32 :goto_1b

    nop

    nop

    :goto_96
    invoke-interface {v2, v4, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_97
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

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

    nop

    :goto_98
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_99
    iget-object v2, v0, Lmzm;->d:Lfdo;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    return-void

    nop

    nop

    :pswitch_e
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_9d
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_9e
    return-void

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p0}, Lmup;->u()Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v0, p0, v1}, Lmzm;->b(Landroid/content/Context;I)V

    :goto_a1
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iput-boolean v3, v0, Lmzm;->b:Z

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p0}, Lmqu;->close()V

    goto/32 :goto_a6

    nop

    nop

    :goto_a6
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_a9
    if-nez v0, :cond_c

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_c
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_aa
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_ab
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_d
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_ae
    check-cast p0, Lmym;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_af
    iput-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Lnan;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    :cond_e
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->l()V

    goto/32 :goto_91

    nop

    nop

    :goto_b2
    iget-object p0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b3
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setVisibility(I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b4
    iget-boolean v0, v0, Lnam;->c:Z

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_b5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_8

    nop

    nop

    :goto_b8
    iget-object p0, p0, Lmzq;->a:Lngo;

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

    :goto_b9
    const-string v0, "startHotshot, view is not present."

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_ba
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->R:Lmzm;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {p0, v0}, Lel;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_bc
    iget-object p0, p0, Lmym;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

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

    :goto_bd
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_12
        :pswitch_9
        :pswitch_10
        :pswitch_1
        :pswitch_8
        :pswitch_c
        :pswitch_13
        :pswitch_2
        :pswitch_f
        :pswitch_b
        :pswitch_5
        :pswitch_a
        :pswitch_7
        :pswitch_d
        :pswitch_4
        :pswitch_6
        :pswitch_e
        :pswitch_3
        :pswitch_11
    .end packed-switch

    :goto_be
    goto/32 :goto_70

    nop

    nop

    :goto_bf
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c0
    iget-object p0, p0, Lmyl;->b:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_c1
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p0, v3}, Lnam;->c(Z)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_c4
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-nez p0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_cb
    sget-object v2, Lhmv;->b:Lhmn;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->r()Z

    move-result v0

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_ce
    check-cast p0, Lmup;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_cf
    iget-object v1, v0, Lnam;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_d0
    check-cast p0, Lmzq;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    if-nez v0, :cond_10

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    nop

    :goto_d4
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

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

    nop

    :goto_d6
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->e:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_d7
    iget-object p0, p0, Lmqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    return-void

    nop

    :pswitch_13
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop
.end method
