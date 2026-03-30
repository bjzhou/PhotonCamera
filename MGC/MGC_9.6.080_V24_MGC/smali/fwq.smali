.class public final synthetic Lfwq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lfwq;->b:I

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

    :goto_1
    iput-object p1, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

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

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lfwq;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const-string v1, "com.android.vending"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

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

    :goto_2
    const-string p2, "http://play.google.com/store/apps/details?id=com.google.android.apps.photos"

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "CaptureModule: Out of storage space on device."

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_7
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

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

    :goto_d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_63

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

    :pswitch_0
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Landroid/content/Context;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Lfxc;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Landroid/content/Context;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d6

    nop

    nop

    :goto_15
    iget-object p0, p0, Lfxc;->b:Lfxg;

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

    nop

    :goto_16
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p2, p0, Lfxc;->j:Lfdn;

    nop

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

    :goto_19
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_1a
    new-instance p1, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lluq;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Lkek;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Landroid/content/Intent;

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

    :goto_20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p0, Lfxg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lkek;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p2}, Lluq;->c(Landroid/content/Intent;)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p0, Landroid/preference/ListPreference;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_2b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Lfxg;->a(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    nop

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

    :goto_2e
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_30
    check-cast p0, Lfdn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lgql;

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

    :goto_32
    check-cast p0, Lkek;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Lfxc;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_35
    const-string p2, "android.intent.category.BROWSABLE"

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_3a
    check-cast p0, Ljxk;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p2}, Lgoe;->f()Z

    move-result p2

    nop

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

    nop

    :goto_3c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string p1, "Camera Disabled due to policy"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lmql;->f:Lkyf;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_40
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_42
    iget-object p1, p0, Lmlt;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_43
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v2, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Lkek;->S:Ljhy;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lqpa;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v0, Lnne;->b:Lnne;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_c0

    nop

    nop

    :goto_49
    iget-boolean p1, p1, Ljmu;->r:Z

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

    :goto_4a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p2, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_59

    nop

    nop

    :goto_4d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p2, p0, Lgql;->b:Lndu;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4f
    const-string p2, "android.intent.category.DEFAULT"

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_50
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object p0, Lkek;->a:Lsdb;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string p1, "Photo is being taken, ignoring user\'s request for cancel."

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p2, p0, Lgql;->e:Lghe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_55
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_56
    check-cast v0, Landroid/preference/ListPreference;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_57
    const/16 p1, 0xb37

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_58
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Lmql;->d:Lkzb;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p1}, Lfxg;->a(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_5c
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_52

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string p1, "Google Play Services is not installed, unable to download VrCore."

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    :pswitch_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p0, p0, Lgql;->e:Lghe;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Lfxc;->b:Lfxg;

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_64
    iget-object p1, p0, Lkek;->s:Ljmu;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p2, p0, Lgql;->a:Lgoe;

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

    :goto_66
    invoke-virtual {p0}, Lghe;->d()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p2, p1}, Lfdn;->i(Landroid/content/Intent;)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_69
    const-string p1, "ImageIntent: No write permission to intent media output uri."

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_83

    nop

    :goto_6b
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_6c
    iget-object p0, p0, Lgql;->e:Lghe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p0, p1}, Ljhy;->i(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_72
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p0, Lfxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_1a

    nop

    nop

    :goto_75
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_76
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    nop

    :goto_77
    iget-object p0, p0, Ljxk;->a:Ljava/lang/Object;

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

    :goto_78
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const-string p2, "android.os.storage.action.MANAGE_STORAGE"

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_7a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_7b
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast p0, Lfwl;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_7d
    check-cast p0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_7f
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_f
        :pswitch_d
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_c
        :pswitch_11
        :pswitch_5
        :pswitch_e
    .end packed-switch

    :goto_83
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p0}, Lkek;->e()V

    goto/32 :goto_9e

    nop

    nop

    :goto_85
    iget-object p2, p0, Lmql;->b:Loyn;

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

    :goto_86
    iget v0, p0, Lfwq;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p0, Lgql;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_88
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_89
    iget-object p0, p0, Lfwl;->a:Lfxg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_8a
    const-string p1, "Closing until required permissions are granted."

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v0, Landroid/preference/ListPreference;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8d
    check-cast p0, Lfxg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_8e
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez p2, :cond_3

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

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    :goto_90
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_91
    iget-object p2, p0, Lgql;->a:Lgoe;

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

    :goto_92
    check-cast p0, Lqpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_93
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

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

    nop

    :goto_94
    const-string p1, "Fatal error in Panorama module: 2132018404"

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_95
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_be

    nop

    nop

    :goto_96
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_6

    nop

    nop

    :goto_97
    iget-object p0, p0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {p2}, Lgoe;->p()Z

    move-result p2

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_99
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_5
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_9a
    const-string p2, "package:com.google.android.apps.photos"

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_9b
    invoke-virtual {p0, p1}, Lfxg;->a(Ljava/lang/String;)V

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_9c
    const-string p1, "Required camera permissions were not granted."

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast p0, Lmlt;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast p0, Lkek;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p0, p1}, Lkyf;->n(Lkzb;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_a1
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_a2
    check-cast p0, Lmql;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const-string v0, "package:"

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_a4
    iget-object p0, p0, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {p2, v0}, Lndu;->y(Lnne;)V

    :goto_a6
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_a7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_a9
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_aa
    return-void

    nop

    nop

    :pswitch_e
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_ab
    return-void

    nop

    :catch_0
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    aget-object p2, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_ad
    check-cast p0, Ljxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_ae
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_af
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p2, v4}, Lghe;->l(Z)V

    :goto_b1
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_b2
    new-instance p1, Landroid/content/Intent;

    nop

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

    :goto_b3
    invoke-virtual {p0}, Lghe;->d()V

    :goto_b4
    goto/32 :goto_a7

    nop

    nop

    :goto_b5
    check-cast p0, Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_b6
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_b8
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast p0, Lhdn;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_2f

    nop

    nop

    :goto_bc
    invoke-virtual {p0, p1}, Lfxg;->a(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    :goto_bd
    const-string p2, "android.settings.VR_LISTENER_SETTINGS"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_be
    new-instance p1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_bf
    const-string p2, "market://details?id=com.google.vr.vrcore"

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_c0
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c1
    sget-object p0, Ltra;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

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

    :pswitch_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object p0, p0, Ljxk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_c5
    return-void

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object p0, p0, Lkek;->S:Ljhy;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_c8
    invoke-static {p2}, Lmlr;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object p2, p0, Lmlt;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_ca
    iget-object p0, p0, Ljhy;->K:Lghe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_cb
    iget-object p0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_cc
    invoke-virtual {p0, p1}, Lfxg;->a(Ljava/lang/String;)V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_cd
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {p0, v4}, Lghe;->l(Z)V

    :goto_cf
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/32 :goto_a8

    nop

    nop

    :goto_d1
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_6
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_d2
    iget-object p0, p0, Lmlt;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v0, p0, Lfwq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_d6
    invoke-virtual {p0}, Lkek;->c()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-nez p0, :cond_7

    nop

    nop

    goto/32 :goto_b4

    nop

    :cond_7
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-lez v0, :cond_8

    nop

    goto/32 :goto_6b

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    :goto_d9
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method
