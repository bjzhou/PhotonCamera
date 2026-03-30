.class public final synthetic Lgko;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lgko;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lgko;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    iput-object p1, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmhb;->h:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    :goto_2
    check-cast p0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_1
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Llmd;->o:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    :goto_8
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    :cond_2
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Llmd;->c()V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :goto_b
    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lmhb;->d:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p2, v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p2, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    :cond_4
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v5, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_ba

    nop

    nop

    :goto_13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lkxs;->g:Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_17
    and-int/lit16 p1, p1, 0xff

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lmhf;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lcom/google/android/apps/camera/toast/EducationToastView;

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean p1, p0, Lnij;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Landroid/view/GestureDetector;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_31
    return v4

    nop

    nop

    :goto_32
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const p2, 0x3f8ccccd    # 1.1f

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_35
    iput-boolean v3, p0, Ljmu;->d:Z

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v5, v4}, Lndc;->b(Z)V

    :goto_38
    goto/32 :goto_131

    nop

    nop

    :goto_39
    invoke-virtual {p0, p1}, Ljmx;->e(F)V

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b3

    nop

    nop

    :goto_3c
    move v3, v4

    nop

    nop

    :goto_3d
    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-ne p1, v0, :cond_7

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3f
    return p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_181

    nop

    nop

    :goto_42
    iget-object p0, p0, Lmhb;->p:Landroid/view/GestureDetector;

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

    :goto_43
    return p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v3, v4

    nop

    :goto_45
    goto/32 :goto_63

    nop

    nop

    :goto_46
    check-cast p0, Lmhb;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_47
    const/4 v0, 0x5

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildCount()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_4a
    iget-object v5, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p1, p1, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_4d
    check-cast p1, Lju;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_4e
    invoke-virtual {v7, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_14a

    nop

    nop

    :goto_4f
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lju;

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

    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_52
    move v3, v4

    nop

    nop

    :goto_53
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_56
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_143

    nop

    nop

    :goto_5a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_8e

    nop

    nop

    :goto_5c
    goto/32 :goto_aa

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

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

    :goto_5f
    return v3

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p0, Lmhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_61
    iput v2, v7, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_62
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    return v3

    nop

    nop

    :pswitch_3
    goto/32 :goto_ef

    nop

    nop

    :goto_64
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_65
    iget-object p0, p0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_95

    nop

    nop

    :goto_67
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, p0, Lgko;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_69
    check-cast p0, Llmd;

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

    :goto_6a
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_6b
    iget-object p1, p0, Lju;->o:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6d
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return v3

    nop

    :goto_6f
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_73
    return v4

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p0, Llmd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_77
    check-cast p0, Lnra;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_16b

    nop

    nop

    :goto_79
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-ne p1, v0, :cond_9

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p0, p0, Lmhb;->p:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_7c
    iget-boolean p1, p0, Ljmu;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast p0, Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_7e
    check-cast p0, Lkek;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast p0, Lmhb;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_80
    invoke-virtual {p0}, Lmhf;->h()V

    goto/32 :goto_dc

    nop

    nop

    :goto_81
    check-cast p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_82
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v5, :cond_b

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_d2

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_87
    iget-object p1, p0, Lju;->o:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_88
    iget-object p1, p1, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_8a
    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_8d
    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    nop

    :goto_8e
    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v5, v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_90
    check-cast p0, Lju;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_185

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_93
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_51

    nop

    nop

    :goto_96
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_98
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    goto/32 :goto_103

    nop

    nop

    :goto_9a
    iget-object v0, v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    :goto_9b
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    :cond_d
    goto/32 :goto_97

    nop

    nop

    :goto_9e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_a0
    check-cast p1, Lju;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget p2, p0, Ljmu;->e:F

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_a2
    if-lt v0, p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Ljmu;->b:Ljmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a4
    invoke-static {p2}, Ljmu;->i(Landroid/view/MotionEvent;)F

    move-result p1

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    float-to-int p0, p0

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

    :goto_a6
    float-to-int p2, p2

    nop

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

    :goto_a7
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_a8
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-interface {p0, p1, v4}, Lndc;->a(Landroid/view/View;Z)V

    goto/32 :goto_107

    nop

    nop

    :goto_aa
    iput v2, v6, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_ab
    check-cast p0, Lnij;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const v1, 0x7fffffff

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {p0, p1}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_af
    iget-object p1, p1, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object p1, p1, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_b1
    iget-object p0, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

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

    :goto_b2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_16f

    nop

    nop

    :goto_b3
    const/4 v0, 0x2

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

    nop

    nop

    :goto_b4
    check-cast p0, Lmhb;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    new-instance v6, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-interface {p0, p1, v4}, Lndc;->a(Landroid/view/View;Z)V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    float-to-int v7, v7

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_b8
    iget-object v5, p0, Lgko;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_b9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_ba
    return v4

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    if-nez v7, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v5, v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v5, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_c1
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eqz v5, :cond_10

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_b8

    nop

    nop

    :goto_c4
    if-lt v5, v6, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    :cond_11
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c6
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_c7
    check-cast p0, Lhab;

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object p0, p0, Lnbr;->i:Lnbe;

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

    nop

    :goto_c9
    if-eqz v5, :cond_12

    nop

    goto/32 :goto_188

    nop

    nop

    :cond_12
    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_cb
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

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

    :goto_cc
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_ce
    if-nez v5, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iput p1, p0, Ljmu;->e:F

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/16 :goto_15e

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_153

    nop

    nop

    :goto_d3
    return v4

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-nez v5, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    :cond_14
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {p1, v0}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    check-cast p1, Lju;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_d8
    float-to-int v5, v5

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

    nop

    :goto_d9
    if-eqz p1, :cond_15

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_da
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_db
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_dc
    invoke-virtual {p0}, Lmhf;->g()V

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object p0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->f:Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_de
    iget-object p0, p0, Lnra;->b:Lnqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_df
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_166

    nop

    nop

    nop

    :goto_e1
    if-eq p1, v4, :cond_16

    nop

    goto/32 :goto_45

    nop

    :cond_16
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->k()Z

    move-result v5

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v5, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_e4
    return v4

    nop

    :pswitch_6
    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez p1, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_e7
    if-eqz p1, :cond_18

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

    :cond_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget p2, p0, Ljmu;->e:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e9
    check-cast p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v5, v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_ed
    check-cast p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_ee
    if-ne p2, v4, :cond_19

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :cond_19
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_f0
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-eqz p1, :cond_1a

    nop

    goto/32 :goto_ff

    nop

    :cond_1a
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_86

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_f5
    iget-boolean p1, p0, Lnij;->g:Z

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_57

    nop

    nop

    :goto_fa
    return v3

    nop

    :pswitch_7
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_fb
    if-eq p1, v4, :cond_1b

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

    :cond_1b
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_fc
    iget-object p0, p0, Lju;->r:Lau;

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->h(IZ)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    goto/16 :goto_16d

    nop

    nop

    nop

    nop

    :goto_ff
    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildCount()I

    move-result v5

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_101
    if-nez v5, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    if-nez v0, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :cond_1d
    goto/32 :goto_48

    nop

    nop

    :goto_103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_104
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_105
    iget-object v0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_106
    iget p1, p0, Ljmu;->f:F

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_107
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    iget-object p1, p1, Lnbr;->i:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_109
    div-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_10a
    invoke-virtual {v5, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_10b
    if-eqz p0, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_167

    nop

    nop

    :goto_10c
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_10d
    return p0

    nop

    nop

    :pswitch_8
    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_10e
    if-ne p1, v0, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_193

    nop

    nop

    :goto_10f
    if-lez v0, :cond_20

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_91

    nop

    :goto_110
    float-to-int p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_112
    if-lt v3, v5, :cond_21

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_114
    check-cast p0, Lnbs;

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_116
    check-cast p0, Lnij;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_117
    iget-object p1, p0, Lnij;->h:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_119
    iput v2, v6, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_11a
    if-nez v5, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_22
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_11b
    if-gt p1, v4, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_a4

    nop

    nop

    :goto_11c
    check-cast p0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-interface {p0, p1, v4}, Lndc;->a(Landroid/view/View;Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11e
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_3a

    nop

    nop

    :goto_120
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->k()Z

    move-result v5

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_123
    move-object v0, p1

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

    nop

    nop

    :goto_124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    check-cast p0, Lkxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {p0, p1}, Ljmx;->a(F)V

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iget-object p0, p0, Ljmu;->b:Ljmx;

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    goto/16 :goto_c2

    nop

    nop

    nop

    nop

    :goto_129
    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_12a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_12b
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object v0, v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    if-gez p2, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {p0}, Lnqd;->e()V

    goto/32 :goto_13b

    nop

    nop

    :goto_12f
    if-nez v6, :cond_25

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/32 :goto_154

    nop

    nop

    :goto_131
    move v5, v3

    nop

    nop

    :goto_132
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_133
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_135
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    iget-object p0, p0, Lnij;->h:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_137
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_138
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_139
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_13a
    iget-object p0, p0, Lnij;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_13b
    goto/16 :goto_174

    nop

    nop

    :pswitch_9
    goto/32 :goto_99

    nop

    nop

    :goto_13c
    if-eqz v5, :cond_26

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_26
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    if-eq p1, v4, :cond_27

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :cond_27
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_13e
    iget-object v5, v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_13f
    float-to-int v6, v6

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_140
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

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

    :goto_141
    return p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_142
    goto/16 :goto_132

    nop

    nop

    :goto_143
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_145
    if-eqz v5, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_28
    goto/32 :goto_105

    nop

    nop

    nop

    :goto_146
    iget-object p0, p0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_148
    check-cast v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_149
    sget-object v0, Lnbe;->b:Lnbe;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_14a
    iget-boolean v5, v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->e:Z

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_14b
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

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

    :goto_14c
    iget-object p1, p0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14d
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_14f
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_150
    invoke-virtual {p0}, Llmd;->c()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_151
    iput-boolean v4, p0, Ljmx;->l:Z

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

    nop

    :goto_152
    invoke-interface {p1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_154
    return v4

    nop

    nop

    nop

    :goto_155
    goto/32 :goto_52

    nop

    nop

    :goto_156
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    nop

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

    :goto_158
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_159
    check-cast p1, Lnbs;

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

    :goto_15a
    const-wide/16 v0, 0xfa

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15b
    if-nez v0, :cond_29

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_29
    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_15c
    const v1, 0x1f

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    invoke-interface {v5, v4}, Lndc;->b(Z)V

    :goto_15e
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_160
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_161
    const/4 v0, 0x4

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

    :goto_162
    iget-object v0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_163
    iput v1, v6, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_164
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_165
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_167
    goto/16 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_168
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    if-lt p2, p1, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_16c
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_16d
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object p0, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_170
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_173
    return v3

    nop

    nop

    nop

    :goto_174
    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_175
    float-to-int v0, v0

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_176
    iget-object p1, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_177
    return v3

    nop

    :pswitch_b
    goto/32 :goto_179

    nop

    nop

    nop

    :goto_178
    if-eq p1, v0, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    :cond_2b
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_179
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_17a
    return v3

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p1

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_17c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    iget-object p0, p0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

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

    nop

    :goto_17f
    return v3

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    if-ne p1, p2, :cond_2c

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_134

    nop

    nop

    :goto_181
    return v4

    nop

    :pswitch_e
    goto/32 :goto_98

    nop

    nop

    :goto_182
    iget-object p0, p0, Lhab;->i:Lrtm;

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_183
    float-to-int v8, v8

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_184
    return v4

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_2
        :pswitch_12
        :pswitch_c
        :pswitch_d
        :pswitch_13
        :pswitch_6
        :pswitch_10
        :pswitch_f
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :goto_185
    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_186
    invoke-virtual {v0, v5, v4}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->h(IZ)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    :goto_188
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    iget-object v0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_18a
    return v3

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    new-instance v7, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_18d
    if-eq p1, v4, :cond_2d

    nop

    goto/32 :goto_16d

    nop

    nop

    :cond_2d
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_18e
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    if-nez v5, :cond_2e

    nop

    goto/32 :goto_f4

    nop

    :cond_2e
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_190
    return v3

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_140

    nop

    nop

    nop

    :goto_191
    iget-object p1, p0, Lcom/google/android/apps/camera/toast/EducationToastView;->a:Ljava/lang/Runnable;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_192
    if-nez p1, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    :cond_2f
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_193
    const/4 p2, 0x6

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    :goto_194
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_195
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_196
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_197
    iget-object p1, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_198
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_199
    invoke-static {p2}, Ljmu;->i(Landroid/view/MotionEvent;)F

    move-result p1

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_19a
    iget-object p0, p0, Lmhb;->p:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_19b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    iput-boolean v4, p0, Ljmu;->d:Z

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19d
    iget-object p0, p0, Lgko;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_19e
    iput p1, p0, Ljmu;->f:F

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_19f
    iget-object p1, p0, Lgko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    iget-object p0, p0, Lnbs;->a:Lnbr;

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_1a1
    return v3

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_1a2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1a3
    return v3

    nop

    :pswitch_12
    goto/32 :goto_123

    nop

    nop

    nop

    :goto_1a4
    iget-object p0, p0, Lju;->r:Lau;

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    return p0

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
