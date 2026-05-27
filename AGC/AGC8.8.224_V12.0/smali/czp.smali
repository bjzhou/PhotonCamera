.class public final Lczp;
.super Ljava/lang/Object;

# interfaces
.implements Lczq;
.implements Lkad;
.implements Lfaz;
.implements Lfav;
.implements Lfat;


# static fields
.field private static final p:Lnak;


# instance fields
.field public final a:Ljwb;

.field public final b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final c:Ljava/util/Set;

.field public final d:Leoa;

.field public final e:Lczr;

.field public final f:Liaj;

.field public final g:Libj;

.field public final h:Liff;

.field public final i:Ljava/lang/Object;

.field public final j:Lczx;

.field public final k:Lmrl;

.field public l:Lika;

.field public m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

.field public n:Landroid/animation/ObjectAnimator;

.field public o:Landroid/animation/ObjectAnimator;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final r:Ljwb;

.field private final s:Ldbf;

.field private final t:Ljuf;

.field private final u:Ljava/util/Set;

.field private final v:Ljuh;

.field private final w:Lfbz;

.field private final x:Logd;

.field private final y:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/ui/modeslider/ModeSliderControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lczp;->p:Lnak;

    return-void
.end method

.method public constructor <init>(Lezx;Ljwb;Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBarController;Leoa;Ljuh;Lczr;Liaj;Libj;Lczx;Liff;Ljava/util/Set;Ldbf;Logd;Lmrl;Lfbz;Ldhi;)V
    .locals 5

    move-object v0, p0

    move-object v1, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lczp;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lczp;->i:Ljava/lang/Object;

    sget-object v2, Lika;->a:Lika;

    iput-object v2, v0, Lczp;->l:Lika;

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    iput-object v2, v0, Lczp;->t:Ljuf;

    move-object v2, p2

    iput-object v2, v0, Lczp;->a:Ljwb;

    move-object v2, p3

    iput-object v2, v0, Lczp;->r:Ljwb;

    move-object v2, p4

    iput-object v2, v0, Lczp;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object/from16 v2, p13

    iput-object v2, v0, Lczp;->s:Ldbf;

    move-object v2, p5

    iput-object v2, v0, Lczp;->d:Leoa;

    iput-object v1, v0, Lczp;->v:Ljuh;

    move-object v2, p7

    iput-object v2, v0, Lczp;->e:Lczr;

    move-object v2, p8

    iput-object v2, v0, Lczp;->f:Liaj;

    move-object v2, p9

    iput-object v2, v0, Lczp;->g:Libj;

    move-object v2, p10

    iput-object v2, v0, Lczp;->j:Lczx;

    move-object/from16 v2, p11

    iput-object v2, v0, Lczp;->h:Liff;

    move-object/from16 v2, p14

    iput-object v2, v0, Lczp;->x:Logd;

    move-object/from16 v2, p15

    iput-object v2, v0, Lczp;->k:Lmrl;

    move-object/from16 v2, p16

    iput-object v2, v0, Lczp;->w:Lfbz;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lczp;->c:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    move-object/from16 v3, p12

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lczp;->u:Ljava/util/Set;

    move-object/from16 v2, p17

    iput-object v2, v0, Lczp;->y:Ldhi;

    new-instance v2, Lcue;

    const/4 v3, 0x4

    move-object v4, p1

    invoke-direct {v2, p0, p1, v3}, Lcue;-><init>(Lczp;Lezx;I)V

    invoke-virtual {p6, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final n(ZZ)V
    .locals 3

    iget-object v0, p0, Lczp;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lczp;->l:Lika;

    invoke-virtual {p0, v1}, Lczp;->k(Lika;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lczp;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lczp;->s:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lczp;->j(Lklv;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lczo;

    invoke-direct {v0, p0, p2}, Lczo;-><init>(Lczp;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lczp;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->setAlpha(F)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lczp;->f:Liaj;

    invoke-virtual {p1}, Liad;->b()V

    return-void

    :cond_2
    iget-object p1, p0, Lczp;->f:Liaj;

    invoke-virtual {p1}, Liad;->c()V

    return-void

    :cond_3
    :goto_0
    :try_start_1
    sget-object p1, Lczp;->p:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x31d

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Ignore showing video mode slider. Current mode: %s, Ready to show UI: %b"

    iget-object v1, p0, Lczp;->l:Lika;

    iget-object v2, p0, Lczp;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-interface {p1, p2, v1, v2}, Lnah;->A(Ljava/lang/String;Ljava/lang/Object;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lczp;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Lczp;->g:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lczp;->h:Liff;

    invoke-interface {v0, v1}, Liff;->E(Z)V

    iget-object v0, p0, Lczp;->d:Leoa;

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    return-void
.end method

.method public final bM()V
    .locals 2

    iget-object v0, p0, Lczp;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lczp;->n:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public final bN()V
    .locals 2

    iget-object v0, p0, Lczp;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lczp;->f:Liaj;

    invoke-virtual {v0}, Liad;->a()V

    iget-object v0, p0, Lczp;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lczp;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lczp;->t:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Ldot;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldot;-><init>(Lczp;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lczp;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->setAlpha(F)V

    iget-object p1, p0, Lczp;->f:Liaj;

    invoke-virtual {p1}, Liad;->a()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final e(Landroid/view/ViewStub;)V
    .locals 4

    iget-object v0, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    iput-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    :cond_0
    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    new-instance v0, Lclb;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lclb;-><init>(Lczp;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lczp;->f:Liaj;

    iget-object v0, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object v1

    iget-object v2, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->a()Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    move-result-object v2

    iget-object v3, p0, Lczp;->u:Ljava/util/Set;

    iput-object v0, p1, Liaj;->f:Landroid/view/View;

    iput-object v1, p1, Liaj;->g:Liaq;

    iput-object v2, p1, Liaj;->h:Liaq;

    iput-object v3, p1, Liaj;->i:Ljava/util/Set;

    iget-object p1, p0, Lczp;->j:Lczx;

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lczp;)V

    invoke-interface {p1, v0}, Lczx;->p(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    iget-object v0, p0, Lczp;->e:Lczr;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->i(Liab;)V

    new-instance v0, Lepf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lepf;-><init>(Lczp;I)V

    iput-object v0, p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Liap;

    iget-object p1, p0, Lczp;->f:Liaj;

    invoke-virtual {p1}, Liad;->f()V

    iget-object p1, p0, Lczp;->t:Ljuf;

    iget-object v0, p0, Lczp;->a:Ljwb;

    new-instance v1, Lcze;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcze;-><init>(Lczp;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lczp;->t:Ljuf;

    iget-object v0, p0, Lczp;->r:Ljwb;

    new-instance v1, Lcze;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcze;-><init>(Lczp;I)V

    iget-object v2, p0, Lczp;->v:Ljuh;

    invoke-interface {v0, v1, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lczp;->t:Ljuf;

    iget-object v0, p0, Lczp;->s:Ldbf;

    new-instance v1, Lcze;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcze;-><init>(Lczp;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c()V

    return-void
.end method

.method public final g(Liko;)V
    .locals 1

    iget-object v0, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->c(Liko;)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lczp;->n(ZZ)V

    return-void
.end method

.method public final i(Lika;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object v2

    iget-object v3, v0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->a()Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    move-result-object v6

    sget-object v3, Lika;->c:Lika;

    invoke-virtual {v1, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-direct {v0, v4, v4}, Lczp;->n(ZZ)V

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    iget-object v5, v0, Lczp;->e:Lczr;

    invoke-virtual {v5, v1}, Lczr;->a(Lika;)V

    invoke-static {}, Lmtb;->v()Lmtb;

    move-result-object v7

    sget-object v8, Lika;->c:Lika;

    invoke-virtual {v1, v8}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v8

    const v9, 0x7f14053c

    const/4 v12, 0x1

    if-eqz v8, :cond_1

    move-object v5, v7

    const/4 v10, 0x2

    goto/16 :goto_3

    :cond_1
    sget-object v8, Lika;->n:Lika;

    invoke-virtual {v1, v8}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v8}, Lmyk;->b(Ljava/util/Comparator;)Lmyk;

    move-result-object v8

    iget-object v13, v5, Lczr;->b:Lhpu;

    iget-object v13, v13, Lhpu;->d:Lmwa;

    invoke-virtual {v13}, Lmwa;->f()Lmvm;

    move-result-object v13

    invoke-virtual {v13}, Lmvm;->v()Lmvv;

    move-result-object v13

    invoke-static {v13}, Llyh;->W(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Llyh;->C(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v13, v5, Lczr;->g:Ldhi;

    sget-object v14, Ldil;->h:Ldhj;

    invoke-interface {v13, v14}, Ldhi;->l(Ldhj;)Z

    move-result v13

    const v14, 0x7f140558

    const v15, 0x7f14055a

    const v16, 0x7f140557

    const v17, 0x7f14055b

    if-eqz v13, :cond_2

    const v13, 0x7f14055c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v11, v10, v15, v14}, Lmvv;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v10

    goto :goto_0

    :cond_2
    const v10, 0x7f140559

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10, v11, v13, v15, v14}, Lmvv;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v10

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    if-nez v11, :cond_4

    iget-object v11, v5, Lczr;->g:Ldhi;

    sget-object v15, Ldil;->h:Ldhj;

    invoke-interface {v11, v15}, Ldhi;->l(Ldhj;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v5, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v13, v5, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f14004b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v10

    move-object v9, v13

    move-object v13, v11

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :cond_4
    iget-object v15, v5, Lczr;->b:Lhpu;

    iget v15, v15, Lhpu;->h:I

    move-object/from16 v17, v10

    int-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    iget-object v13, v5, Lczr;->a:Landroid/content/Context;

    new-array v14, v12, [Ljava/lang/Object;

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v4

    const v15, 0x7f14053d

    invoke-virtual {v13, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v10, v15, v4

    const/high16 v10, 0x7f120000

    invoke-virtual {v14, v10, v9, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, v13}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v10, v9}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v5, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v13, v17

    invoke-virtual {v13, v11}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v10, v9}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v11, v12

    move-object v10, v13

    const v9, 0x7f14053c

    goto/16 :goto_1

    :cond_5
    invoke-static {v7}, Lmtb;->w(Lmxy;)Lmtb;

    move-result-object v5

    const/4 v10, 0x2

    goto :goto_3

    :cond_6
    sget-object v8, Lika;->f:Lika;

    invoke-virtual {v1, v8}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v5, Lczr;->a:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v4

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const v11, 0x7f140035

    invoke-virtual {v8, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v13, v5, Lczr;->f:Ljava/lang/String;

    invoke-virtual {v7, v10, v13}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v10, v8}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v5, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f140551

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v5, Lczr;->a:Landroid/content/Context;

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v4

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-virtual {v8, v11, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v5, Lczr;->e:Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v9, v8}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v5, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f140550

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v9, v5}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lmtb;->w(Lmxy;)Lmtb;

    move-result-object v5

    goto :goto_3

    :cond_7
    const/4 v10, 0x2

    invoke-static {v7}, Lmtb;->w(Lmxy;)Lmtb;

    move-result-object v5

    :goto_3
    iget-object v7, v0, Lczp;->e:Lczr;

    invoke-virtual {v7, v1}, Lczr;->a(Lika;)V

    sget-object v8, Lika;->c:Lika;

    invoke-virtual {v1, v8}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    sget-object v8, Lika;->n:Lika;

    invoke-virtual {v1, v8}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v7, Lczr;->d:Ljwb;

    invoke-interface {v8}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhpt;

    sget-object v9, Lhpt;->a:Lhpt;

    invoke-virtual {v8, v9}, Lhpt;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v7, v7, Lczr;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f14053c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_9
    iget-object v8, v7, Lczr;->a:Landroid/content/Context;

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v11, v7, Lczr;->b:Lhpu;

    iget-object v7, v7, Lczr;->c:Ljwb;

    invoke-interface {v7}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lhpu;->a(D)D

    move-result-wide v13

    double-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    const v7, 0x7f14053d

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_a
    sget-object v8, Lika;->f:Lika;

    invoke-virtual {v1, v8}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v7, Lczr;->i:Ljvk;

    iget-object v8, v8, Ljvk;->d:Ljava/lang/Object;

    check-cast v8, Ljws;

    sget-object v9, Ljws;->g:Ljws;

    invoke-virtual {v8, v9}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v7, v7, Lczr;->e:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v7, v7, Lczr;->f:Ljava/lang/String;

    goto :goto_5

    :cond_c
    :goto_4
    const-string v7, ""

    :goto_5
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v5}, Lmtb;->r()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    const/4 v11, -0x1

    if-ge v8, v9, :cond_e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9, v7}, Lmtb;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_e
    const/4 v8, -0x1

    :goto_7
    if-eq v8, v11, :cond_11

    sget-object v7, Lika;->n:Lika;

    invoke-virtual {v1, v7}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, v0, Lczp;->y:Ldhi;

    sget-object v9, Ldil;->h:Ldhj;

    invoke-interface {v7, v9}, Ldhi;->l(Ldhj;)Z

    move-result v7

    const v9, 0x7f080345

    if-eqz v7, :cond_f

    const-string v3, "auto_timelapse_tooltip"

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    move-object v12, v3

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_f
    move-object v12, v3

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :cond_10
    const v7, 0x7f080385

    move-object v12, v3

    const/4 v7, 0x2

    const v9, 0x7f080385

    const/4 v10, 0x1

    :goto_8
    iget-object v3, v0, Lczp;->f:Liaj;

    invoke-virtual {v3}, Liad;->d()V

    invoke-virtual {v2, v4, v4}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->measure(II)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getMeasuredWidth()I

    move-result v11

    iget-object v4, v0, Lczp;->j:Lczx;

    invoke-interface/range {v4 .. v12}, Lczx;->o(Lmtb;Liaq;IIIZILj$/util/Optional;)V

    :goto_9
    iget-object v2, v0, Lczp;->x:Logd;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipk;

    invoke-interface {v2}, Lipk;->f()V

    iget-object v2, v0, Lczp;->x:Logd;

    invoke-interface {v2}, Logd;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipk;

    invoke-virtual/range {p1 .. p1}, Lika;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lipk;->g(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No default speed id found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method public final j(Lklv;)V
    .locals 6

    iget-object v0, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object v0

    iget-object v1, p0, Lczp;->e:Lczr;

    iget-object v1, v1, Liab;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Liac;

    iget-boolean v4, v4, Liac;->b:Z

    if-nez v4, :cond_1

    sget-object v4, Lklv;->a:Lklv;

    invoke-virtual {p1, v4}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k(Lika;)Z
    .locals 1

    iget-object v0, p0, Lczp;->e:Lczr;

    iget-object v0, v0, Lczr;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final l(Lika;)Z
    .locals 5

    iget-object v0, p0, Lczp;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lczp;->l:Lika;

    invoke-virtual {v1, p1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lczp;->k(Lika;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lczp;->l:Lika;

    iget-object v1, p0, Lczp;->w:Lfbz;

    invoke-static {p1}, Lijy;->e(Lika;)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v1, v3, v4}, Lfbz;->Z(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lczp;->f(Z)V

    iget-object v0, p0, Lczp;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v1, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->d(Lika;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lczp;->m:Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSliderUi;->b()Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    move-result-object v0

    iget-object v1, p0, Lczp;->e:Lczr;

    iget-object v1, v1, Lczr;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liac;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b(Liac;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->k(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported application mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final m(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Lkad;
    .locals 7

    iget-object v0, p0, Lczp;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lchq;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lchq;-><init>(Lczp;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B)V

    return-object v0
.end method
