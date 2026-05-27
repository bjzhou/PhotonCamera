.class public final synthetic Lclb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/GestureDetector;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lclc;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/toast/EducationToastView;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lczp;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhgw;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhpq;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lige;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Liof;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llg;I)V
    .locals 0

    iput p2, p0, Lclb;->b:I

    iput-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Lclb;->b:I

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_1e

    check-cast p1, Liof;

    iget-object p1, p1, Liof;->b:Lini;

    invoke-virtual {p1}, Linf;->c()V

    goto/16 :goto_11

    :pswitch_0
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_3

    check-cast p1, Lige;

    iget-boolean p2, p1, Lige;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lige;->h:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p1, p1, Lige;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Lige;

    iget-boolean p2, p1, Lige;->g:Z

    if-eqz p2, :cond_5

    iget-object p1, p1, Lige;->h:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    return v3

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->j()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_7

    :cond_6
    iget-object v5, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    iget-object v5, v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    if-eqz v5, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    iget-object v5, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    iget-object v5, v5, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    invoke-interface {v5, v4}, Liap;->c(Z)V

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_b

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v0, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->l(IZ)V

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    iget-object v0, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_d

    iget-object p2, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    iget-object p2, p2, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    invoke-interface {p2, p1, v4}, Liap;->b(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4

    :cond_d
    const/4 v3, 0x1

    :goto_7
    return v3

    :pswitch_3
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :pswitch_4
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/toast/EducationToastView;

    iget-object p2, p1, Lcom/google/android/apps/camera/toast/EducationToastView;->a:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object p1, p1, Lcom/google/android/apps/camera/toast/EducationToastView;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v3

    :pswitch_5
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lhpq;

    invoke-virtual {p1}, Lhpq;->f()V

    return v4

    :pswitch_6
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lhpq;

    invoke-virtual {p1}, Lhpq;->f()V

    return v4

    :pswitch_7
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lhgw;

    iget-object p1, p1, Lhgw;->j:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_8
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lhgw;

    iget-object p1, p1, Lhgw;->j:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_9
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lhgw;

    iget-object v0, p1, Lhgw;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->p:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    iget-object v0, p1, Lhgw;->e:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->a:Lhys;

    iget-object v0, v0, Lhys;->i:Lhyn;

    sget-object v1, Lhyn;->b:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p1, Lhgw;->e:Lmrl;

    invoke-interface {p1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhyt;

    iget-object p1, p1, Lhyt;->b:Lhyq;

    iget-object p1, p1, Lhyq;->i:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_f

    return v4

    :cond_f
    :goto_8
    return v3

    :pswitch_a
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lhgw;

    iget-object p1, p1, Lhgw;->j:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_b
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :pswitch_c
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    check-cast p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iget-object p2, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3f8ccccd    # 1.1f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_9

    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_11

    check-cast p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iget-object p2, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_11
    :goto_9
    return v3

    :pswitch_d
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    iget-object p1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_e
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    iget-boolean v0, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->i:Z

    if-eqz v0, :cond_12

    iget-object p1, p1, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->j:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_12
    return v3

    :pswitch_f
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->r:Leww;

    if-eqz p1, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_1

    :pswitch_10
    goto :goto_a

    :pswitch_11
    iput-boolean v3, p1, Leww;->d:Z

    iget p2, p1, Leww;->f:F

    iget v0, p1, Leww;->e:F

    div-float/2addr p2, v0

    iget-object p1, p1, Leww;->b:Lewz;

    invoke-virtual {p1, p2}, Lewz;->a(F)V

    return v4

    :pswitch_12
    invoke-static {p2}, Leww;->i(Landroid/view/MotionEvent;)F

    move-result p2

    iput p2, p1, Leww;->e:F

    iput-boolean v4, p1, Leww;->d:Z

    return v4

    :pswitch_13
    iget-boolean v0, p1, Leww;->d:Z

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_13

    invoke-static {p2}, Leww;->i(Landroid/view/MotionEvent;)F

    move-result p2

    iput p2, p1, Leww;->f:F

    iget v0, p1, Leww;->e:F

    div-float/2addr p2, v0

    iget-object p1, p1, Leww;->b:Lewz;

    invoke-virtual {p1, p2}, Lewz;->e(F)V

    iput-boolean v4, p1, Lewz;->l:Z

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x1

    goto :goto_a

    :pswitch_14
    const/4 v3, 0x1

    goto :goto_b

    :goto_a
    return v3

    :cond_14
    :goto_b
    return v3

    :pswitch_15
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->j()Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_f

    :cond_15
    iget-object v5, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object v5, v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    if-eqz v5, :cond_16

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object v5, v5, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    invoke-interface {v5, v4}, Liap;->c(Z)V

    goto :goto_c

    :cond_16
    :goto_c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_19

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_17

    goto :goto_d

    :cond_17
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v0, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->g(IZ)V

    goto :goto_e

    :cond_18
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    :goto_e
    iget-object v0, p0, Lclb;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object v0, v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eq p2, v4, :cond_1a

    const/4 v3, 0x1

    goto :goto_f

    :cond_1a
    iget-object p2, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object p2, p2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Liap;

    invoke-interface {p2, p1, v4}, Liap;->b(Landroid/view/View;Z)V

    return v4

    :cond_1b
    const/4 v3, 0x1

    :goto_f
    return v3

    :pswitch_16
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lczp;

    iget-object p1, p1, Lczp;->k:Lmrl;

    invoke-interface {p1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhyt;

    iget-object p1, p1, Lhyt;->a:Lhys;

    iget-object p1, p1, Lhys;->i:Lhyn;

    sget-object p2, Lhyn;->b:Lhyn;

    invoke-virtual {p1, p2}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_1c

    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    iget-object p1, p1, Llg;->q:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1d

    if-ltz v0, :cond_1d

    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    iget-object p1, p1, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p1

    if-ge v0, p1, :cond_1d

    if-ltz p2, :cond_1d

    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    iget-object p1, p1, Llg;->q:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_1d

    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    iget-object p2, p1, Llg;->o:Landroid/os/Handler;

    iget-object p1, p1, Llg;->r:Lbe;

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    :cond_1c
    if-ne p1, v4, :cond_1d

    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Llg;

    iget-object p2, p1, Llg;->o:Landroid/os/Handler;

    iget-object p1, p1, Llg;->r:Lbe;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1d
    :goto_10
    return v3

    :pswitch_18
    iget-object p1, p0, Lclb;->a:Ljava/lang/Object;

    check-cast p1, Lclc;

    invoke-virtual {p1}, Lclc;->b()V

    invoke-virtual {p1}, Lclc;->a()V

    return v3

    :cond_1e
    :goto_11
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method
