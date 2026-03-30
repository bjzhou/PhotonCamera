.class public final Lgt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lgt;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p2, p0, Lgt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_0
    iget-object p1, v0, Ldp;->o:Landroid/os/Message;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/32 :goto_3b

    nop

    nop

    :goto_4
    invoke-virtual {p1, v3, v2}, Lfdo;->J(Ljava/lang/String;I)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lgcj;

    nop

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

    :goto_7
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_64

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgjw;->l:Loyd;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lgjw;->c:Loyn;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->a:Lrss;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_d
    check-cast v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_f
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lgjw;->B()Z

    move-result v0

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_13
    iget-object v1, v0, Ldp;->m:Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lhhg;->a()V

    goto/32 :goto_6a

    nop

    nop

    :goto_18
    iput-object v2, v1, Lmsy;->c:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2, v3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1f
    iget-object v1, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    nop

    :goto_20
    iget v0, p0, Lgt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lgjw;->v:Lnne;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lmsy;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v2, :cond_2

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

    :cond_2
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lhhg;->b()V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_28
    if-eq p1, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Landroid/view/View;

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_2d
    goto/16 :goto_36

    nop

    nop

    :pswitch_5
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    xor-int/2addr v0, v4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

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

    :goto_32
    check-cast p0, Ldp;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Lglm;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v2, Lnne;->k:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_35
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_36
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->b:Lrss;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lgjw;->l:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lgcj;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_2c

    nop

    nop

    :goto_40
    goto/32 :goto_73

    nop

    :goto_41
    iget-object p1, p0, Lgcj;->A:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_42
    return-void

    nop

    :pswitch_8
    goto/32 :goto_d2

    nop

    nop

    :goto_43
    check-cast p0, Lglm;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

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

    :goto_46
    invoke-interface {p0, v5}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p0, Lgfj;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lhhg;->j()V

    goto/32 :goto_19

    nop

    nop

    :goto_49
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a4

    nop

    nop

    :goto_4a
    check-cast p0, Lglm;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez p1, :cond_6

    nop

    goto/32 :goto_ae

    nop

    :cond_6
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p0, Lgcj;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, v0, v1}, Lgjw;->D(ZI)V

    :goto_4f
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_50
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_51
    iget-object v0, v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->b:Lrss;

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

    nop

    :goto_52
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_53
    invoke-virtual {p0, v4}, Lgfh;->a(Z)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0}, Lhhg;->g()V

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_55
    iget-object v1, v0, Ldp;->l:Landroid/os/Message;

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

    :goto_56
    invoke-virtual {p0}, Lhhg;->c()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_59
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast p0, Lglm;

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

    nop

    :goto_5b
    iget-object p0, p0, Lgfj;->f:Lgfh;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5c
    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eq p1, v1, :cond_7

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    :pswitch_b
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p0, Landroid/support/v7/widget/Toolbar;

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

    :goto_62
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_66
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_8
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_3f

    nop

    nop

    :goto_68
    iget-object v0, v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->a:Lrss;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_69
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_6b
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez p1, :cond_9

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_9
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0, v4}, Lgcj;->l(I)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lgjw;->c:Loyn;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_71
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_d1

    nop

    :goto_73
    goto/32 :goto_20

    nop

    nop

    :goto_74
    invoke-interface {p0, v5}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    :goto_76
    iget-object p1, p0, Lgjw;->c:Loyn;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_77
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast p0, Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_7b
    check-cast p0, Lglm;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_7c
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7e
    if-nez v0, :cond_b

    nop

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

    :cond_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast p0, Lglm;

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

    :goto_80
    iget-object v0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_81
    iget-object p0, p0, Ldp;->b:Lel;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_83
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_84
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, v4, p1}, Lgjw;->p(ZLneh;)V

    :goto_87
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    check-cast p1, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_8a
    const-string v3, "step_by_step_bottom_sheet_skip_instructions"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8b
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast p0, Lgds;

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0, v4, v4}, Lgjw;->h(ZZ)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    return-void

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p1, p0, Ldp;->G:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_91
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_92
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_93
    return-void

    nop

    nop

    :pswitch_f
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_94
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    :cond_c
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object p1, p0, Lgcj;->A:Lfdo;

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

    :goto_96
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_98
    check-cast p0, Lglm;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_99
    return-void

    nop

    :pswitch_11
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p0}, Lgcj;->p()Z

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9d
    iget-object v1, v0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->b:Landroid/view/View$OnClickListener;

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

    :goto_9e
    invoke-virtual {p1, v3, v2}, Lfdo;->J(Ljava/lang/String;I)V

    goto/32 :goto_9a

    nop

    nop

    :goto_9f
    iput-object v1, v0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->a:Landroid/graphics/drawable/Animatable;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_a0
    iget-object p1, p0, Lgjw;->F:Lhoh;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object p0, v0, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->a:Landroid/graphics/drawable/Animatable;

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

    :goto_a2
    invoke-virtual {v0, v4}, Lmsy;->e(Z)V

    :goto_a3
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-nez p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a0

    nop

    nop

    :goto_a5
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_a7
    if-eqz p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0}, Lgcj;->e()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_ac
    return-void

    nop

    :pswitch_12
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_ae
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p0}, Lhhg;->h()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p0}, Lhhg;->i()V

    goto/32 :goto_60

    nop

    nop

    :goto_b1
    iget-object p0, p0, Lgcj;->l:Loyn;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast v0, Ldp;

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object p1, p0, Lgjw;->n:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_b5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_b6
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    check-cast p0, Lglm;

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

    :goto_b8
    check-cast p0, Lglm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_bb
    check-cast v0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p0}, Lfb;->f()V

    goto/32 :goto_ce

    nop

    nop

    :goto_bd
    sget-object v0, Lhnc;->j:Lhmn;

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

    :goto_be
    check-cast p0, Lgcj;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_bf
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {p0}, Lkjj;->h(Landroid/view/View;)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast p1, Lneh;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const v1, 0xd

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object p0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object p1, v0, Ldp;->p:Landroid/widget/Button;

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {p0}, Lhhg;->a()V

    goto/32 :goto_58

    nop

    nop

    :goto_c7
    if-lez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_72

    nop

    :goto_c8
    check-cast p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

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

    :goto_c9
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    :goto_ca
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    if-nez p0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_ce
    return-void

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_12
        :pswitch_d
        :pswitch_10
        :pswitch_9
        :pswitch_13
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_11
        :pswitch_3
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_e
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :goto_d1
    goto/32 :goto_40

    nop

    nop

    :goto_d2
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast v1, Lmsy;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d4
    const/4 p1, 0x0

    nop

    nop

    :goto_d5
    goto/32 :goto_4b

    nop

    nop

    :goto_d6
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_d7
    iget-object p0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_d8
    move-object v0, p0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {p0}, Lhhg;->f()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {p0, v1}, Lgcj;->l(I)V

    goto/32 :goto_b1

    nop

    nop

    :goto_dc
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_a6

    nop

    nop

    :goto_dd
    iget-object v1, v0, Ldp;->j:Landroid/widget/Button;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_de
    invoke-virtual {p0}, Lgjw;->B()Z

    move-result v0

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    check-cast v1, Landroid/graphics/drawable/Animatable;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_e1
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_e2
    iget-object v0, p0, Lgt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_e3
    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e4
    check-cast p0, Landroid/view/View$OnClickListener;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_e6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_e7
    invoke-virtual {p0}, Lgds;->d()V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_e8
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop
.end method
