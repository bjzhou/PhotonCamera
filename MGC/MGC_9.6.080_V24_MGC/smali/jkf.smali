.class public final synthetic Ljkf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    iput p2, p0, Ljkf;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Ljkf;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkts;FI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ljkf;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Ljkf;->a:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr p0, v1

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

    :goto_1
    sub-float/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ljkf;->a:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lmpw;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_1
    goto/32 :goto_5e

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b1

    nop

    nop

    :goto_a
    div-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_6d

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_b2

    nop

    nop

    :goto_c
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, v2, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->c:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_12
    cmpl-float v5, p0, v5

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Ljkj;->f:Lngo;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    div-float/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_19
    const/4 v5, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const-string v1, "%.1f"

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0, v1, v2}, Lkms;->g(FJ)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Ljkf;->a:F

    nop

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

    nop

    :goto_1e
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:I

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_1f
    sget-object v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a:Lsdb;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v0, v1

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_1
    .end packed-switch

    :goto_22
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "F"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    const-string v3, ""

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_25
    check-cast v0, Lnfr;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lmpw;->l:Lngo;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x1

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

    :goto_28
    int-to-float v1, v1

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

    :goto_29
    iget-object p0, p0, Ljkj;->I:Lmhf;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_2a
    if-gez v6, :cond_4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_81

    nop

    nop

    :goto_2b
    const v0, 0x4051f8a1

    nop

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

    :goto_2c
    iget-object p0, p0, Ljkf;->b:Ljava/lang/Object;

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

    :goto_2d
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_2e
    const-string v0, "C"

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, v2, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->e:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_34
    cmpl-float v0, v0, v1

    nop

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

    :goto_35
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_36
    invoke-interface {v0, p0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-float v6, p0, v6

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v2, :cond_5

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_3c
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lkts;->a:Llxa;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3e
    invoke-interface {p0, v0}, Llxa;->c(Lpcj;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v0}, Ljkg;->a(F)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_42
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v0, "m"

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_47
    iget-object p0, v5, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->f:Landroid/view/View;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_48
    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v1}, Lkbz;->b()V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_6
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4d
    mul-int/lit16 v3, p0, 0x7d0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_4e
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lkms;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-gez v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_7
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_51
    iput-boolean v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->q:Z

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_52
    const/high16 v0, 0x40a00000    # 5.0f

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_53
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:F

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    :pswitch_2
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_55
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

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

    :goto_56
    mul-float/2addr p0, v2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_57
    mul-float/2addr p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_58
    iget-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v1, v1, Ljkj;->g:Lkbz;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_5a
    iget-object v2, v5, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->d:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_5e
    goto/32 :goto_22

    nop

    nop

    :goto_5f
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/high16 v6, -0x3d380000    # -100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_61
    iget v0, p0, Ljkf;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_62
    div-float/2addr p0, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_63
    const/high16 v0, 0x41100000    # 9.0f

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_64
    cmpl-float v1, p0, v1

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

    :goto_65
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_66
    check-cast p0, Ljkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_67
    check-cast v1, Lscz;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_68
    iput p0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v4, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_b4

    nop

    nop

    :goto_6f
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget p0, p0, Ljkf;->a:F

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_71
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_73
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    :pswitch_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_75
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_76
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_77
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_78
    iget-object v0, v0, Ljab;->a:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_7a
    const v1, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v0}, Lpcj;->b(F)Lpcj;

    move-result-object v0

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

    :goto_7c
    const/high16 v0, 0x42000000    # 32.0f

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v1, p0, Ljkg;->a:Ljkj;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v0}, Lngo;->p()V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_7f
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_80
    if-lez v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a6

    nop

    nop

    :goto_81
    cmpg-float v2, p0, v2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_83
    cmpg-float v1, p0, v1

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v5, v0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_86
    mul-float/2addr p0, v0

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

    :goto_87
    iget v0, p0, Ljkf;->a:F

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_88
    iget-boolean v0, v0, Lnfr;->h:Z

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_89
    iget-object p0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Landroid/widget/Scroller;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_8d
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8e
    const-string v0, "ft"

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_8f
    const-string v3, "The currentValue of %f is out of range: [%f, %f]"

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v2, v0, Lnfr;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast v0, Lnfr;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    mul-float/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_93
    const-wide/16 v1, -0x1

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

    :goto_94
    iget v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

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

    :goto_95
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:F

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const/16 v2, 0x14ce

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_97
    invoke-virtual {p0, v0}, Lmhf;->c(I)V

    :goto_98
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_99
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_9a
    const v0, 0x7f130040

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v1, v3, p0, v2, v0}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_9d
    if-gez v1, :cond_a

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

    :cond_a
    goto/32 :goto_94

    nop

    nop

    :goto_9e
    check-cast p0, Lkts;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_9f
    const/high16 v2, 0x43480000    # 200.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a0
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v2, v1, v4, p0, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_a4
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_a5
    iget p0, p0, Ljkf;->a:F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_a6
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_63

    nop

    nop

    :goto_a7
    check-cast v0, Ljab;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_a8
    iget p0, p0, Ljkf;->a:F

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_a9
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_ab
    iget-object v3, v2, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->c:Landroid/widget/TextView;

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

    :goto_ac
    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :goto_ad
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_ae
    float-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_af
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v0, p0, Ljkg;->a:Ljkj;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b1
    iget-object v0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b3
    iget-object p0, p0, Ljkg;->a:Ljkj;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v0, p0, Ljkf;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-interface {p0, v0}, Lngo;->H(I)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-boolean v0, v0, Lnfr;->h:Z

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

    nop

    nop

    :goto_b7
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_b8
    iget p0, p0, Ljkf;->a:F

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_b9
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_ba
    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    float-to-int p0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object p0, v5, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->d:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_bd
    iget v0, p0, Ljkf;->c:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method
