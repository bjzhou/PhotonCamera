.class public final synthetic Lgzp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lhja;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

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

    nop

    nop

    :goto_3
    iput p2, p0, Lgzp;->b:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lgzp;->b:I

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

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lhbd;->e:Ltud;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lhja;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lgzq;->b()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lhbd;->i:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Ljaa;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p0, v0}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Liof;->w()V

    goto/32 :goto_19

    nop

    nop

    :goto_d
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_10
    goto/16 :goto_2b

    nop

    :pswitch_2
    goto/32 :goto_2a

    nop

    nop

    :goto_11
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    sget-object p1, Llyd;->c:Llyd;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "list_pref_extra"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v1, Lhja;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Ljaa;->n(Ljar;)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lhwd;->e:Lkyw;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lhwd;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :pswitch_3
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lhbq;->b()Z

    move-result p1

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lgzo;->b()V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v0, "pref_make_setting_page_root"

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhja;->g:Lluq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lgzv;->a()V

    goto/32 :goto_81

    nop

    nop

    :goto_20
    iget-object v0, p0, Lhbq;->j:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lgzq;

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

    :goto_23
    check-cast p0, Ljaa;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljad;->a()V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_27
    iput-boolean v2, p0, Lhbq;->m:Z

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Ligc;->a()V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p1, Llyd;->b:Llyd;

    nop

    nop

    :goto_2b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Lhbq;->j:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p0, Lhbq;->h:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lhbd;->h:Landroid/view/View;

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

    :goto_30
    invoke-virtual {p0}, Ljad;->a()V

    goto/32 :goto_ae

    nop

    nop

    :goto_31
    iget-object v0, p0, Lhbq;->k:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_32
    iput-boolean v1, p0, Lhbd;->o:Z

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Lhbq;->k:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_35
    check-cast p0, Liof;

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

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_37
    goto/16 :goto_e4

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p1}, Lhdu;->m(Lnne;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_3a
    iget p1, p1, Llyd;->f:I

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Lidu;

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lhbd;->c()Z

    move-result p1

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

    :goto_3e
    iget-object v0, p0, Lhwd;->d:Loyn;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance p1, Landroid/content/Intent;

    nop

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

    nop

    :goto_41
    iget-object p0, p0, Ljaa;->g:Lj$/util/Optional;

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

    :goto_42
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Lhbd;->m:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lhbd;->l:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v2, p0, Lhbq;->i:Landroid/view/View;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Liof;->p()V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object p1, Llyd;->a:Llyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_8d

    nop

    nop

    :goto_4c
    iput-boolean v1, p0, Lhbd;->n:Z

    nop

    nop

    :goto_4d
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lidu;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lhbd;->m:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_51
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_52
    iget-object v2, p0, Lhbq;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p1, p0, Lhbd;->c:Loyn;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_54
    check-cast p0, Lhja;

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

    :goto_55
    check-cast p0, Lhja;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, p0, Lhbq;->g:Landroid/view/View;

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

    :goto_57
    iget-boolean p1, p0, Lhbd;->o:Z

    nop

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

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_7
        :pswitch_15
        :pswitch_a
        :pswitch_5
        :pswitch_e
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_b
        :pswitch_9
        :pswitch_11
        :pswitch_14
        :pswitch_8
        :pswitch_f
        :pswitch_c
        :pswitch_10
        :pswitch_16
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_13
        :pswitch_d
    .end packed-switch

    :goto_59
    goto/32 :goto_af

    nop

    nop

    :goto_5a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_49

    nop

    :goto_5b
    sget-object p1, Ljar;->b:Ljar;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {p1, v0, v2}, Lnzk;->bc(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Ljad;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v0, Liof;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget p1, p1, Llyd;->f:I

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

    nop

    :goto_60
    iget-object p1, p0, Lhbd;->j:Landroid/view/View;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v1, p0, Lhbd;->h:Landroid/view/View;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Lhjb;->a()V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p1, p0, Lhbd;->a:Lmse;

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_65
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_67
    check-cast p0, Lhbd;

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

    :goto_68
    check-cast p0, Lhbd;

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

    :goto_69
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p1, p0, Lhbd;->f:Ltxm;

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_eb

    nop

    nop

    :goto_6d
    const-string v0, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p1, p0, Lhbd;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_6f
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p1, p1, Lhja;->f:Lrss;

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_72
    invoke-virtual {p1}, Lmlt;->a()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_73
    iput-boolean v1, p0, Lhbq;->m:Z

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_76
    const/16 v0, 0xb

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p0, p1, v0, v2, v3}, Lhbd;->b(Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;)V

    goto/32 :goto_99

    nop

    nop

    :goto_78
    check-cast p0, Lhbd;

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lhwd;->b:Lmse;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_7a
    iget-object v1, p0, Lhbq;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_7c
    invoke-virtual {p0, p1, v0}, Ljaa;->f(Ljar;Ljaq;)V

    goto/32 :goto_b2

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v0, 0x5

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast p1, Lmlt;

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

    :goto_80
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_a9

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

    :pswitch_8
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_83
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iput-boolean v2, p0, Lhbd;->n:Z

    nop

    :goto_87
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    return-void

    nop

    :pswitch_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v0, p0, Lhbd;->p:Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8a
    check-cast p0, Lgzo;

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

    :goto_8b
    iget-object p1, p1, Lhja;->b:Lhjb;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8c
    return-void

    nop

    :pswitch_b
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v1, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lhbm;->a()V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const-string v0, "Invalid beautification option"

    nop

    goto/32 :goto_9c

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

    :pswitch_c
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_91
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_93
    check-cast p0, Lgzv;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_3b

    nop

    nop

    :pswitch_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_96
    check-cast p1, Lhja;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_97
    sget-object p1, Ljar;->b:Ljar;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const-string p1, "VesperBottomSheet"

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object p1, p0, Lhbd;->l:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object p1, p0, Lhbq;->l:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

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

    :goto_9f
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p0, v2, v1}, Lhut;->m(ZZ)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v0, p0, Lhbd;->i:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p0, p1, v0, v1, v3}, Lhbq;->a(Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;)V

    goto/32 :goto_9b

    nop

    nop

    :goto_a4
    new-instance p1, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast p0, Lhut;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    sget-object p1, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_a7
    invoke-virtual {p1}, Lkyw;->ordinal()I

    move-result p1

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_1

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_a8
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

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

    :goto_aa
    iget-object v0, p0, Lhbq;->h:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_ab
    sget-object v2, Lkyq;->o:Lkyq;

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast p0, Ligc;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_ad
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_ae
    return-void

    nop

    :pswitch_f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_b0
    sget-object p1, Llyd;->a:Llyd;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v0, p0, Lhbq;->l:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_b2
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_b3
    const/4 v2, 0x1

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_d1

    nop

    nop

    :goto_b5
    iget-object v1, v1, Lhja;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_9a

    nop

    nop

    :goto_b7
    iget-object p0, p0, Ljaa;->f:Ljad;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object p1, p0, Lhbq;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast p1, Lhja;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_ba
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_bb

    nop

    nop

    :goto_bb
    iget-object p1, p0, Lhbq;->g:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v2, p0, Lhbd;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_bd
    iget-object v3, p0, Lhbd;->k:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_be
    check-cast p0, Lhbq;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-interface {p1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

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

    :goto_c1
    invoke-virtual {v0}, Liof;->p()V

    goto/32 :goto_e1

    nop

    nop

    :goto_c2
    return-void

    nop

    nop

    :pswitch_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_c4
    iget-object v0, p0, Ljaa;->B:Ljbb;

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_c5
    invoke-virtual {p0}, Lhut;->h()V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v0, p0, Ljaa;->f:Ljad;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v0, v0, Lhja;->f:Lrss;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p0, p1, v0}, Ljaa;->f(Ljar;Ljaq;)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {p1, v0, v2}, Lnzk;->bc(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast p0, Lhbq;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_cc
    iget-object v1, p0, Lhbd;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_cd
    goto/16 :goto_2b

    nop

    :pswitch_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v2, p0, Lhbd;->j:Landroid/view/View;

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_cf
    check-cast p0, Lhbm;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast p0, Ljaa;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    nop

    :pswitch_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d2
    check-cast p0, Ljaa;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {p0, p1, v0, v2, v3}, Lhbq;->a(Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {p1}, Lmse;->h()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {p0, p1}, Lluq;->c(Landroid/content/Intent;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d6
    sget-object p1, Ljar;->c:Ljar;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-nez p1, :cond_6

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

    nop

    :cond_6
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object p0, p0, Lhja;->f:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_d9
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6a

    nop

    nop

    :goto_da
    invoke-virtual {p0, v1}, Lhut;->j(Z)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_db
    iget-boolean p1, p0, Lhbd;->n:Z

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_dc
    return-void

    nop

    :pswitch_15
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget p1, p0, Lgzp;->b:I

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_de
    iget-object v0, p0, Lhbd;->k:Lcom/google/android/apps/camera/util/ui/GcaTextView;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_df
    check-cast p0, Liof;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e0
    check-cast p1, Lkyf;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_e1
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v1, p0, Lidu;->a:Landroid/content/Context;

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

    :goto_e3
    invoke-interface {p1, v0}, Loyn;->a(Ljava/lang/Object;)V

    :goto_e4
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-static {p1, v0, v1}, Lnzk;->bc(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const-string v1, "pref_camera_catcher_key"

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-static {p1, v0, v1}, Lnzk;->bc(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_e9
    invoke-virtual {p0, p1, v0, v1, v3}, Lhbd;->b(Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;Landroid/view/View;Lcom/google/android/apps/camera/util/ui/GcaTextView;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_ea
    iget-boolean p1, p0, Lhbq;->m:Z

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

    nop

    nop

    :goto_eb
    return-void

    nop

    nop

    nop

    nop

    :pswitch_16
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_ec
    new-instance p1, Lijv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object p0, p0, Lgzp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {p1, v0, v2}, Lkyf;->G(ILkyq;)V

    goto/32 :goto_32

    nop

    nop

    :goto_ef
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_f0
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    const/16 v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {p0}, Lmse;->h()V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop
.end method
