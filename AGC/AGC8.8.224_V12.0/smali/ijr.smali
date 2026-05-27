.class public final Lijr;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field private final a:Litm;

.field private final b:Loiw;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Litm;Loiw;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijr;->a:Litm;

    iput-object p2, p0, Lijr;->b:Loiw;

    iput-object p3, p0, Lijr;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lijr;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldja;

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b0488

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v2, v0, Lijr;->a:Litm;

    iget-object v3, v0, Lijr;->c:Landroid/content/Context;

    move-object v4, v2

    check-cast v4, Lisi;

    iput-object v1, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v5, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-boolean v6, v4, Lisi;->S:Z

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w(Z)V

    iget-object v5, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v6, v4, Lisi;->A:Lgzm;

    iput-object v6, v5, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k:Lgzm;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lisi;->V:Z

    iget-object v6, v4, Lisi;->h:Ljwb;

    iget v7, v4, Lisi;->p:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v6, v4, Lisi;->C:Ljwb;

    sget-object v7, Lgdi;->a:Ljava/lang/Byte;

    invoke-interface {v6, v7}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v6, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->e()Landroid/widget/ImageButton;

    move-result-object v6

    iput-object v6, v4, Lisi;->G:Landroid/widget/ImageButton;

    iget-object v6, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/widget/ImageButton;

    move-result-object v6

    iput-object v6, v4, Lisi;->H:Landroid/widget/ImageButton;

    iget-object v6, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->t()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v6

    iput-object v6, v4, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    iget-object v6, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v6

    iput-object v6, v4, Lisi;->L:Landroid/widget/SeekBar;

    iget-object v6, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->u()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v6

    iput-object v6, v4, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget-object v6, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, v4, Lisi;->N:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, v4, Lisi;->J:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iput v3, v4, Lisi;->ai:I

    iget-boolean v6, v4, Lisi;->Y:Z

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v4, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h()V

    iget-boolean v6, v4, Lisi;->m:Z

    if-nez v6, :cond_1

    iget-object v6, v4, Lisi;->K:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setVisibility(I)V

    :cond_1
    iget-object v6, v4, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setHorizontalFadingEdgeEnabled(Z)V

    :goto_0
    new-instance v6, Lirs;

    iget-object v8, v4, Lisi;->o:Ljvs;

    iget-object v9, v4, Lisi;->h:Ljwb;

    iget-object v10, v4, Lisi;->g:Ljwb;

    iget-object v11, v4, Lisi;->f:Ljwb;

    iget-object v12, v4, Lisi;->c:Ldbx;

    iget-object v13, v4, Lisi;->n:Lkog;

    iget-object v14, v4, Lisi;->d:Ldhi;

    iget-object v15, v4, Lisi;->z:Lirt;

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lirs;-><init>(Ljvs;Ljwb;Ljwb;Ljwb;Ldbx;Lkog;Ldhi;Lirt;)V

    iput-object v6, v4, Lisi;->P:Lirs;

    iget-object v6, v4, Lisi;->d:Ldhi;

    sget-object v7, Ldho;->a:Ldhk;

    invoke-interface {v6}, Ldhi;->g()V

    new-instance v6, Lirn;

    iget-object v9, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v10, v4, Lisi;->i:Ljava/util/Set;

    iget-object v11, v4, Lisi;->h:Ljwb;

    iget-object v12, v4, Lisi;->t:Ljwb;

    iget-object v13, v4, Lisi;->l:Lfbz;

    iget-object v14, v4, Lisi;->y:Lmqp;

    iget-object v15, v4, Lisi;->c:Ldbx;

    iget-object v7, v4, Lisi;->o:Ljvs;

    iget-object v8, v4, Lisi;->d:Ldhi;

    iget v5, v4, Lisi;->p:F

    iget-object v3, v4, Lisi;->P:Lirs;

    move-object/from16 v21, v1

    iget-object v1, v4, Lisi;->j:Ljava/util/Set;

    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v16, v7

    move/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    invoke-direct/range {v8 .. v20}, Lirn;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Ljava/util/Set;Ljwb;Ljwb;Lfbz;Lmqp;Ldbx;Ljvs;Ldhi;FLirs;Ljava/util/Set;)V

    iput-object v6, v4, Lisi;->E:Lita;

    new-instance v1, Lirq;

    iget-object v3, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v5, v4, Lisi;->E:Lita;

    invoke-direct {v1, v3, v5}, Lirq;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lita;)V

    iput-object v1, v4, Lisi;->D:Litf;

    invoke-virtual {v4}, Lisi;->P()V

    invoke-virtual {v4}, Lisi;->t()V

    iget-object v1, v4, Lisi;->G:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Lisi;->H(Landroid/widget/ImageButton;Z)V

    iget-object v1, v4, Lisi;->H:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lisi;->H(Landroid/widget/ImageButton;Z)V

    iget-object v1, v4, Lisi;->N:Landroid/widget/TextView;

    new-instance v5, Lirz;

    invoke-direct {v5, v4, v3}, Lirz;-><init>(Lisi;I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v1, v4, Lisi;->S:Z

    if-eqz v1, :cond_2

    iput-boolean v3, v4, Lisi;->U:Z

    iput-boolean v3, v4, Lisi;->T:Z

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v3, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lisc;

    invoke-direct {v5, v4}, Lisc;-><init>(Lisi;)V

    invoke-direct {v1, v3, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v5, v4, Lisi;->L:Landroid/widget/SeekBar;

    new-instance v7, Liry;

    invoke-direct {v7, v4, v3, v6, v1}, Liry;-><init>(Lisi;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/view/GestureDetector;)V

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    new-instance v1, Liiz;

    const/16 v3, 0xa

    invoke-direct {v1, v4, v3}, Liiz;-><init>(Lisi;I)V

    new-instance v3, Liiz;

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Liiz;-><init>(Lisi;I)V

    iget-object v5, v4, Lisi;->e:Ljuf;

    iget-object v6, v4, Lisi;->h:Ljwb;

    iget-object v7, v4, Lisi;->w:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v1, v7}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v4, Lisi;->e:Ljuf;

    iget-object v5, v4, Lisi;->f:Ljwb;

    iget-object v6, v4, Lisi;->w:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v3, v6}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljuf;->d(Lkad;)V

    iget-object v1, v4, Lisi;->e:Ljuf;

    iget-object v5, v4, Lisi;->g:Ljwb;

    iget-object v6, v4, Lisi;->w:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v3, v6}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    iget-object v1, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    iget-object v3, v4, Lisi;->ae:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v3, :cond_3

    iget-object v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v1, v4, Lisi;->L:Landroid/widget/SeekBar;

    new-instance v3, Lise;

    invoke-direct {v3, v4}, Lise;-><init>(Lisi;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, v4, Lisi;->L:Landroid/widget/SeekBar;

    new-instance v3, Lisf;

    invoke-direct {v3, v4}, Lisf;-><init>(Lisi;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, v4, Lisi;->N:Landroid/widget/TextView;

    new-instance v3, Lisg;

    invoke-direct {v3}, Lisg;-><init>()V

    invoke-static {v1, v3}, Lafq;->g(Landroid/view/View;Laei;)V

    iget-object v1, v4, Lisi;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lisi;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhei;

    invoke-interface {v1, v2}, Lhei;->e(Lheh;)V

    :cond_4
    iget-boolean v1, v4, Lisi;->Y:Z

    if-eqz v1, :cond_5

    iget-object v1, v4, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    new-instance v2, Lisd;

    invoke-direct {v2, v4}, Lisd;-><init>(Lisi;)V

    iput-object v2, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->u:Lisd;

    :cond_5
    iget-object v1, v4, Lisi;->D:Litf;

    invoke-virtual {v1}, Litc;->f()V

    iget-object v1, v4, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->cc:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v4, Lisi;->e:Ljuf;

    iget-object v2, v4, Lisi;->B:Ljvs;

    new-instance v3, Liiz;

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Liiz;-><init>(Lisi;I)V

    sget-object v5, Ljuh;->a:Ljui;

    invoke-interface {v2, v3, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    :cond_6
    iget-boolean v1, v4, Lisi;->m:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    iput-boolean v1, v4, Lisi;->S:Z

    iget-object v2, v4, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w(Z)V

    iget-object v2, v4, Lisi;->E:Lita;

    iput-boolean v1, v2, Lita;->G:Z

    :cond_7
    iget-object v1, v0, Lijr;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldja;

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    sget-object v2, Lhyh;->b:Lhyh;

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    return-void
.end method
