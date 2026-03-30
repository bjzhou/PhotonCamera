.class public final synthetic Lgle;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    nop

    :goto_0
    iput-object p1, p0, Lgle;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lgle;->b:I

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
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgle;->a:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lgle;->b:I

    nop

    nop

    goto/32 :goto_0

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

    nop

    nop
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 17

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_118

    nop

    :goto_1
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v7, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_3
    div-float v6, v6, v16

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_4
    if-nez v13, :cond_0

    nop

    goto/32 :goto_142

    nop

    :cond_0
    goto/32 :goto_71

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_1
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ligc;->c()V

    goto/32 :goto_d8

    nop

    nop

    :goto_7
    invoke-direct {v2, v3, v5, v12, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v3, v7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v0, v3}, Lmqs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v0, Lmse;->f:I

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_f
    iget v6, v0, Lgle;->b:I

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

    :goto_10
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gtz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_2
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    goto/32 :goto_a9

    nop

    :cond_3
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljbx;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_14
    if-nez v10, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    :cond_4
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    :goto_16
    iget-object v1, v0, Lcom/google/android/apps/camera/composezoom/ZoomUi;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_18
    iget v3, v2, Lnes;->e:I

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v8, v0, Lgle;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lmse;->c:Lrga;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_1b
    iget-boolean v10, v10, Lhah;->l:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljbx;->dismiss()V

    goto/32 :goto_37

    nop

    nop

    :goto_20
    goto/16 :goto_102

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_22
    div-int/2addr v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    :goto_24
    iget-object v1, v0, Lmse;->c:Lrga;

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;->b()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v2, v0, Lmse;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2b
    iget-object v15, v0, Lgle;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v14, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v14, :cond_8

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

    :cond_8
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_147

    nop

    nop

    :goto_2f
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_30
    div-int/2addr v13, v11

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

    :goto_31
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sub-float/2addr v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_9

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move/from16 v3, p3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, v0, Ljbx;->g:Lglm;

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v2}, Lglm;->e(Lgln;)V

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v14, v14, Lneu;->m:I

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljcc;->getContentView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_3d
    add-int/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_3f
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    nop

    :goto_42
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->an(I)V

    :goto_44
    goto/32 :goto_17b

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Lneu;->b()Lnes;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_46
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, v0, Lcom/google/android/apps/camera/composezoom/ZoomUi;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v2, Lmqs;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Lmyl;->m()V

    :goto_4a
    goto/32 :goto_70

    nop

    nop

    :goto_4b
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_4e
    const/4 v9, -0x1

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Ljbx;

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eq v2, v11, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_53
    sget-object v2, Lnbe;->a:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_131

    nop

    :goto_55
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v3, Lhah;

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_57
    int-to-float v6, v14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_58
    iget-boolean v11, v2, Lnes;->f:Z

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5a
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_5b
    iget-boolean v13, v2, Lnes;->f:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move/from16 v4, p4

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v0, Lcom/google/android/apps/camera/ui/notificationchip/NotificationChipView;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5e
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    :goto_5f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

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

    :goto_61
    invoke-virtual {v0}, Lcom/google/android/apps/camera/composezoom/ZoomUi;->e()Lhkm;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v0, Lhfk;

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_b
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_d
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :goto_67
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_69
    check-cast v3, Lneu;

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_6b
    div-float v7, v1, v2

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6d
    move/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1}, Lrga;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    :pswitch_4
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v1, v0, Ljbx;->j:Landroid/view/Window;

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_73
    if-gez v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget v3, v3, Lneu;->j:I

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v0, Ljcc;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    move v9, v10

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Lneu;->getContentView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_79
    iput-object v1, v0, Lhkm;->x:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7a
    iput v7, v0, Lgbx;->j:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_7b
    check-cast v3, Lneu;

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

    :goto_7c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Ljcc;->isShowing()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_d
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->an(I)V

    goto/32 :goto_b0

    nop

    nop

    :goto_80
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v10}, Landroidx/core/widget/NestedScrollView;->canScrollVertically(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v1, v0, Lmse;->c:Lrga;

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v0, Lgbb;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_85
    iget-boolean v2, v2, Lnes;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v0, Lmse;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_88
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_89
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_8a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    int-to-float v4, v4

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move v4, v8

    nop

    nop

    :goto_8d
    goto/32 :goto_fd

    nop

    nop

    :goto_8e
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_8f
    check-cast v0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_91
    sget-object v2, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    check-cast v8, Lneu;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v0, Landroid/view/View;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v14, Lneu;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_96
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_97
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1, v8}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_9a
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9b
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

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

    :goto_9c
    iget-object v0, v0, Lhah;->s:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    move/from16 v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9e
    iget-object v2, v0, Ljbx;->w:Landroid/graphics/Rect;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v10, Landroid/graphics/Rect;

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v1, v0, Ljbx;->n:Lnbe;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_a1
    sget-object v5, Lnbe;->a:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_a2
    iget-object v1, v0, Ljbx;->s:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_a3
    iget v14, v14, Lneu;->l:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_a4
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_a5
    iget-boolean v6, v2, Lnes;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_a6
    iget v12, v4, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_a7
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_145

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_aa
    iget v5, v15, Lneu;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    if-nez v2, :cond_e

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_e
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v1}, Lrga;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_ad
    div-int/2addr v5, v11

    nop

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

    :goto_ae
    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_af
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_b2
    move v4, v10

    nop

    nop

    :goto_b3
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    int-to-float v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget v8, v8, Lneu;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_bb
    const v3, 0x7f0700ef

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

    :goto_bc
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_163

    nop

    nop

    nop

    :goto_bd
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_da

    nop

    nop

    nop

    :goto_be
    iput-boolean v10, v0, Ljbx;->x:Z

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_bf
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v0}, Ljbx;->a()I

    move-result v2

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c1
    check-cast v14, Lneu;

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

    :goto_c2
    iget-object v1, v0, Ljbx;->l:Landroid/view/View;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget v8, v15, Lneu;->h:I

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_c4
    iget-object v3, v3, Lneu;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_c5
    move-object/from16 v0, p0

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v0, v0, Lgbb;->m:Lgbx;

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

    nop

    :goto_c7
    new-instance v4, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_c8
    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_e

    nop

    nop

    :goto_c9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_ca
    move/from16 v2, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    add-int/2addr v4, v13

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_ce
    mul-float/2addr v12, v5

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

    :goto_cf
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_d0
    add-int/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_d2
    iget v2, v0, Lmse;->f:I

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

    :goto_d3
    div-float v6, v6, v16

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    :goto_d4
    sget-object v2, Lgln;->d:Lgln;

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_d5
    const/high16 v16, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_d7
    const v10, 0x7f07087c

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

    :goto_d8
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_d9
    check-cast v1, Landroid/view/ViewGroup;

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

    :goto_da
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_db
    move-object v3, v0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_dc
    iget-object v6, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_dd
    div-float v5, v5, v16

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_de
    move v4, v9

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_df
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d2

    nop

    nop

    :goto_e5
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v1, v2}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_e7
    iget-object v1, v0, Ljbx;->n:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_e8
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    nop

    nop

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

    :goto_e9
    invoke-virtual {v4, v5}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v2, v0, Ljbx;->w:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    check-cast v0, Lneu;

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    :goto_f0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    div-int/2addr v13, v11

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

    :goto_f3
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->b(IIII)V

    goto/32 :goto_66

    nop

    nop

    :goto_f4
    goto/32 :goto_e0

    nop

    :goto_f5
    iget-boolean v14, v2, Lnes;->f:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    if-eq v2, v9, :cond_f

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_f
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v1, v0, Ljbx;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f9
    if-gtz v2, :cond_10

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-static {v3, v6}, Lneu;->i(Landroid/view/View;Z)I

    move-result v3

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v1, v0, Ljcc;->c:Landroid/view/WindowManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v0, v1, v2, v3, v4}, Ljbx;->showAsDropDown(Landroid/view/View;III)V

    goto/32 :goto_132

    nop

    nop

    :goto_fe
    add-float/2addr v11, v12

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

    :goto_ff
    return-void

    nop

    nop

    :pswitch_a
    goto/32 :goto_6e

    nop

    nop

    :goto_100
    sub-int v2, v4, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_101
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_102
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_103
    if-nez v3, :cond_11

    nop

    nop

    goto/32 :goto_ec

    nop

    :cond_11
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    if-nez v1, :cond_12

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_106
    goto/16 :goto_b3

    nop

    nop

    :goto_107
    goto/32 :goto_b2

    nop

    nop

    :goto_108
    if-ne v10, v4, :cond_13

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    if-nez v6, :cond_14

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast v0, Lmyl;

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    iget v5, v4, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    div-int/2addr v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_10d
    check-cast v0, Lhah;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    add-int/2addr v3, v5

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-boolean v1, v0, Ljbx;->x:Z

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_111
    sget-object v5, Lnbh;->b:Lnbh;

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

    nop

    :goto_112
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_113
    if-lez v0, :cond_15

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_df

    nop

    :goto_114
    sub-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_115
    int-to-float v12, v12

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

    :goto_116
    sub-int/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_117
    move v7, v4

    nop

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    check-cast v15, Lneu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_11b
    int-to-float v3, v9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    iget-object v3, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

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

    nop

    :goto_11e
    cmpl-float v3, v3, v11

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_11f
    iget-object v1, v0, Lmse;->h:Landroidx/core/widget/NestedScrollView;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/composezoom/ZoomUi;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_121
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_122
    check-cast v10, Lhah;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_123
    const/4 v7, 0x0

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v1, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_125
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_126
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_127
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_128
    iget-boolean v3, v3, Lhah;->l:Z

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v6, Lneu;

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    return-void

    nop

    :pswitch_b
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    check-cast v1, Lneu;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_12c
    check-cast v0, Lndy;

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_12d
    if-gtz v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_12e
    const/4 v2, 0x4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    :goto_131
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_132
    iget-object v1, v0, Ljbx;->g:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_133
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_134
    iget-object v4, v3, Lneu;->k:Lnbh;

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_135
    if-nez v1, :cond_17

    nop

    nop

    goto/32 :goto_a9

    nop

    :cond_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_136
    if-eq v3, v5, :cond_18

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_137
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_138
    int-to-float v8, v8

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_139
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_13a
    const/4 v11, 0x2

    nop

    nop

    nop

    packed-switch v6, :pswitch_data_0

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v1}, Lrga;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    div-int/2addr v5, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v0}, Lneu;->getContentView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_13e
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_13f
    invoke-virtual {v1, v2}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_140
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    goto/16 :goto_42

    nop

    nop

    :goto_142
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_143
    move-object v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_144
    iput-boolean v8, v0, Ljbx;->x:Z

    nop

    nop

    nop

    :goto_145
    goto/32 :goto_165

    nop

    nop

    :goto_146
    iget v4, v4, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_147
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_148
    iget-object v1, v0, Lneu;->g:Landroid/view/View$OnLayoutChangeListener;

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_149
    add-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_14a
    invoke-direct {v10, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    check-cast v0, Lcom/google/android/apps/camera/composezoom/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    const/16 v5, 0x11

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_14f
    goto/16 :goto_8d

    nop

    nop

    nop

    :goto_150
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_151
    add-float v4, v13, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_152
    mul-float/2addr v4, v6

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

    nop

    :goto_153
    const v0, 0x7

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_154
    sub-int/2addr v8, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_155
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_156
    iget-object v6, v6, Lneu;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_157
    if-nez v1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_19
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    iget-object v4, v0, Ljbx;->n:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_159
    iget v3, v4, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_15a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    check-cast v1, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_15c
    sget-object v2, Lgln;->d:Lgln;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_15d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_15e
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_160
    iget-object v1, v0, Lmyl;->e:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_161
    invoke-static {v1}, Lnnr;->k(Landroid/content/Context;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_162
    sub-float/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_163
    iget-object v0, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    if-ne v3, v2, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_1a
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_165
    invoke-virtual {v0}, Ljbx;->i()V

    goto/32 :goto_179

    nop

    nop

    :goto_166
    if-eq v4, v5, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_167
    sub-int/2addr v3, v2

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v1, v2}, Lglm;->f(Lgln;)V

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_169
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

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

    :goto_16a
    sub-float/2addr v4, v11

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_16b
    iget v12, v2, Lnes;->g:I

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    if-nez v1, :cond_1c

    nop

    nop

    goto/32 :goto_16f

    nop

    :cond_1c
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_16d
    if-nez v1, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_16e
    invoke-virtual {v0, v2, v1}, Ljcc;->update(II)V

    :goto_16f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_170
    invoke-static {v1, v11}, Lneu;->i(Landroid/view/View;Z)I

    move-result v11

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

    nop

    :goto_171
    if-nez v1, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_1e
    goto/32 :goto_13b

    nop

    nop

    :goto_172
    if-nez v1, :cond_1f

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_173
    check-cast v0, Ligc;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_174
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_175
    invoke-interface {v1, v0}, Lmsd;->a(I)V

    :goto_176
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v0, v1}, Lndy;->f(Landroid/widget/TextView;)V

    :goto_178
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_179
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_17a
    iget-object v1, v0, Lndy;->g:Landroid/widget/TextView;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17b
    iget-object v1, v0, Lmse;->d:Lmsd;

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

    :goto_17c
    sub-int/2addr v5, v12

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_17e
    iput-boolean v10, v0, Lhfk;->a:Z

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    if-nez v1, :cond_20

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_180
    iget-object v3, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_181
    iget-object v14, v0, Lgle;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
