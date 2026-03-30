.class public final Lnlv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnmu;


# instance fields
.field private final a:Ltxm;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ltxm;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnlv;->a:Ltxm;

    nop

    nop

    goto/32 :goto_4

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

    :goto_2
    iput p3, p0, Lnlv;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lmyz;Ltxm;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

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

    :goto_2
    iput p3, p0, Lnlv;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lnlv;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Ltxm;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p3, p0, Lnlv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnlv;->a:Ltxm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public constructor <init>(Ltxm;Lkyl;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnlv;->a:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lnlv;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

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
    iput-object p2, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 11

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v7, v9, v10}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_1
    invoke-interface {v1, v2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lrss;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1}, Lmyz;->g(Landroid/view/ViewStub;)V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v6}, Lfwv;->i()Lows;

    move-result-object v6

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v6, v7, v9, v10}, Lnuc;-><init>(Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;Lowu;Lnar;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v1, Landroid/view/ViewStub;

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_9
    iput-object v6, v5, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_a
    const v2, 0x7f0b0210

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lnar;

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lnjn;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v6, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_11
    iget-object v6, v5, Lnuj;->c:Lrss;

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v9, Lnao;

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;->setVisibility(I)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v6, Lmer;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v7, v6}, Lows;->d(Lpci;)V

    :goto_17
    goto/32 :goto_e9

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_19
    invoke-interface {v2, v6, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v7, v5}, Lnuh;-><init>(Lnuj;)V

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_1b
    sget-object v10, Lstd;->a:Lstd;

    nop

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

    :goto_1c
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, v1, Lkol;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    check-cast p0, Lgzq;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v6}, Lmer;->b()Lrss;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_24
    iget-object v1, v5, Lnuj;->g:Loyn;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v3, Lmss;->a:Landroid/animation/ValueAnimator;

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

    :goto_26
    const v1, 0x7f0b0380

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_27
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v6}, Lmer;->b()Lrss;

    move-result-object v6

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_29
    check-cast v0, Lcom/google/android/apps/camera/aizoom/animation/AiZoomPreviewUserEducationView;

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_2a
    new-instance v4, Lmsq;

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_2b
    iget-object v7, v5, Lnuj;->a:Lhco;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v7, v5, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v7, v5, v2}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    :pswitch_1
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_31
    iget-object v2, v5, Lnuj;->q:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v2, Lfzo;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v10, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_83

    nop

    nop

    :goto_35
    const-wide/16 v4, 0xc8

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v7, v9, v10}, Lhco;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v7

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

    :goto_37
    iget-object v6, v5, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_38
    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5b

    nop

    :goto_3a
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3c
    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

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

    nop

    :goto_40
    iput-object v6, v5, Lnuj;->n:Lnup;

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_f5

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v7, v5, Lnuj;->e:Loyn;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_34

    nop

    nop

    :goto_47
    iget-object v2, v3, Lmss;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_49
    iput-object v0, p0, Lgzq;->a:Landroid/view/View;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, v3, Lmss;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_4b
    check-cast p0, Lnbg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_4c
    check-cast v0, Lpic;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v1, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Lpic;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v7, v5, Lnuj;->h:Loyd;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, v1, Lkol;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v2, 0x2

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_54
    check-cast v3, Lmss;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_55
    check-cast v0, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_56
    move-object v3, p0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, v1}, Lmyz;->g(Landroid/view/ViewStub;)V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v1, 0x7f0b00a8

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v0, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_5f
    invoke-virtual {v6}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object v6

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_60
    move-object v6, v4

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v9, v5, v10}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v4, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v3, Lstd;->a:Lstd;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v6, Lmer;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_66
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_69
    iget-object v1, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_6c
    check-cast v2, Lmyz;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_6d
    new-instance v7, Lnug;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {v2, v0, v3}, Lfzo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v0, p0, Lgzq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_70
    invoke-virtual {v6, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_ab

    nop

    nop

    :goto_71
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_73
    invoke-virtual {v2, v1}, Lmyz;->g(Landroid/view/ViewStub;)V

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_75
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {p0, v2, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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

    :goto_78
    iget-object v1, v5, Lnuj;->s:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v6, v9, v10}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7b
    iget-object v2, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast v6, Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v6, v7, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_80
    new-instance v6, Lnuc;

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

    :goto_81
    invoke-virtual {v6}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object v6

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_83
    iget-object v0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v6}, Lnuk;->a()V

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_85
    invoke-static {v2, v6}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v2

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v6}, Lfwv;->i()Lows;

    move-result-object v6

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_89
    iget-object v6, v5, Lnuj;->s:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v1, v4}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->m(Landroid/view/View;)V

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_8d
    invoke-virtual {v7}, Lfwv;->i()Lows;

    move-result-object v7

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v5, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_90
    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_91
    const v1, 0x7f0b0099

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_92
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v1, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_94
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_95
    check-cast v6, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_96
    new-instance v6, Lnao;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_98
    const/4 v1, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_99
    const v2, 0x7f0b020c

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9a
    invoke-direct {v6, v5, v3}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_63

    nop

    nop

    :goto_9b
    check-cast v1, Landroid/view/ViewStub;

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_9c
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v6, v5, Lnuj;->i:Loyd;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_9e
    iget-object v6, v5, Lnuj;->l:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v1, Lmsr;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_a0
    iget-object v2, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v6}, Lfwv;->i()Lows;

    move-result-object v6

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_a2
    const/16 v3, 0x12

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_a3
    check-cast v4, Lpic;

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a7
    iget-object v6, v6, Lhwy;->c:Ljava/lang/Object;

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

    :goto_a8
    invoke-interface {v7, v9, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iput-object v0, v1, Lkol;->e:Ljava/lang/Object;

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

    nop

    nop

    :goto_aa
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_ab
    iget-object v6, v5, Lnuj;->s:Lfwv;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    :cond_3
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_ae
    iget-object v1, p0, Lgzq;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-direct {v7, v5, v8}, Lobm;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_b0
    const v1, 0x7f0b0057

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_b2
    check-cast v4, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_b3
    iget-object v7, v5, Lnuj;->s:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct {v9, v5, v10}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    return-void

    nop

    :pswitch_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v6, v7}, Lmfh;->a(Lmgc;)V

    :goto_b7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v2, v3, Lmss;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_b9
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v2, v1}, Lmyz;->g(Landroid/view/ViewStub;)V

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_bc
    check-cast v5, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_bd
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v2, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_bf
    const/16 v10, 0x13

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    check-cast v0, Lnjn;

    nop

    nop

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

    :goto_c1
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    new-instance v7, Lobm;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v2, Lmyz;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_c4
    const v1, 0x12

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

    nop

    :goto_c5
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_c6
    invoke-direct {v4, p0, v0, v1}, Lmsq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v10, v5, Lnuj;->t:Lnar;

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

    :goto_c9
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const/16 v7, 0xc8

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    check-cast v6, Lmfh;

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_cd
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_ce
    check-cast v5, Lnuj;

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

    :goto_cf
    return-void

    nop

    :goto_d0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d1
    new-instance v9, Lnao;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_d2
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

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

    nop

    :goto_d3
    const/16 v10, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_d4
    check-cast p0, Llrr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    new-instance v9, Lnug;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_d6
    check-cast v0, Lnar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_d8
    check-cast v0, Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_24

    nop

    nop

    :goto_da
    check-cast v0, Lnjn;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v7, v5, Lnuj;->s:Lfwv;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_dc
    check-cast v1, Lpic;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_de
    check-cast v1, Lpic;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_df
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_e0
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_e1
    const/16 v7, 0x10

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v0, v3}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_e3
    check-cast v2, Lmyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_e4
    const v2, 0x7f0b020b

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_e5
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v6, v5, Lnuj;->d:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e7
    new-instance v6, Llnm;

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

    :goto_e8
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_e9
    iget-object v6, v5, Lnuj;->s:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_ea
    new-instance v7, Lnuh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_eb
    invoke-direct {v9, v5, v1}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_ee
    iget-object v1, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

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

    :goto_f0
    iget-object v2, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_f1
    const/4 v3, 0x7

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_f3
    iget-object p0, p0, Lgzq;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_f4
    sget-object v2, Lstd;->a:Lstd;

    nop

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

    nop

    :goto_f5
    iget-object v6, v5, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_f6
    sget-object v10, Lstd;->a:Lstd;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_f7
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-direct {v6, v7}, Llnm;-><init>(I)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v0, p0, Lnlv;->a:Ltxm;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {p0, v0}, Llrr;->d(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_fc
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v1, v1, Lkol;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_ff
    check-cast v1, Landroid/view/ViewStub;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-direct {v2, p0, v3}, Lgfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    check-cast v0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_102
    iget-object v6, v5, Lnuj;->n:Lnup;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v6, v7}, Lhwy;->p(Lfwv;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_105
    invoke-direct {v9, v5, v8}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_106
    iget-object v9, v5, Lnuj;->b:Lowu;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_107
    check-cast v0, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_108
    new-instance v7, Lnui;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_109
    iget v0, p0, Lnlv;->b:I

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast v1, Lfwv;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_10b
    iget-object v1, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_10c
    invoke-direct {v1, v3, v0}, Lmsr;-><init>(Lmss;Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    check-cast v1, Lkol;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_111
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_113
    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_114
    const v2, 0x7f0b020f

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iget-object p0, p0, Lnlv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_116
    invoke-direct {v7, v5}, Lnui;-><init>(Lnuj;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_117
    iput-object v2, v3, Lmss;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_118
    new-instance v2, Lgfs;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_119
    check-cast v0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    check-cast v1, Lpic;

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_11f
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_120
    iget-object v0, p0, Lnlv;->a:Ltxm;

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

    :goto_121
    check-cast v0, Lnjn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_122
    new-array v2, v2, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iput-object v6, v5, Lnuj;->l:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_124
    new-instance v9, Lnug;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v6, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_129
    iget-object v6, v5, Lnuj;->d:Ltxm;

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

    :goto_12a
    iget-object v1, v5, Lnuj;->s:Lfwv;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    const v5, 0x7f0b00f6

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    return-void

    nop

    nop

    :pswitch_7
    goto/32 :goto_aa

    nop

    nop

    :goto_12d
    const v3, 0x7f0b00db

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_130
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_131
    check-cast v2, Lmyz;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_132
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_133
    check-cast v0, Lnjn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_134
    iget-object v1, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v4, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_136
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop
.end method
