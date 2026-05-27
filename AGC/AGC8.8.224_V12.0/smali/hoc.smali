.class public final Lhoc;
.super Lchk;


# static fields
.field private static final b:Lnak;


# instance fields
.field private final c:Ldbf;

.field private final d:Ljwb;

.field private final e:Lkbc;

.field private final f:Lcvh;

.field private final g:Lfmf;

.field private h:Lhob;

.field private final i:Lesv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/TimelapseController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhoc;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Ldbf;Ljwb;Lesv;Lkbc;Lcvh;Lfmf;)V
    .locals 0

    invoke-direct {p0}, Lchk;-><init>()V

    iput-object p1, p0, Lhoc;->c:Ldbf;

    iput-object p2, p0, Lhoc;->d:Ljwb;

    iput-object p4, p0, Lhoc;->e:Lkbc;

    iput-object p3, p0, Lhoc;->i:Lesv;

    iput-object p5, p0, Lhoc;->f:Lcvh;

    iput-object p6, p0, Lhoc;->g:Lfmf;

    return-void
.end method

.method private final w()Lhob;
    .locals 1

    iget-object v0, p0, Lhoc;->h:Lhob;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final cc()V
    .locals 0

    return-void
.end method

.method public final cd()V
    .locals 4

    iget-object v0, p0, Lhoc;->h:Lhob;

    if-nez v0, :cond_0

    sget-object v0, Lhoc;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Cheetah component is not initialized, aborting pause"

    const/16 v2, 0xecf

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhos;->g(Z)V

    iget-object v1, v0, Lhos;->B:Lhol;

    iget-object v1, v0, Lhos;->p:Ljuh;

    new-instance v2, Lhon;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lhon;-><init>(Lhos;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lhos;->H:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhos;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lhon;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lhon;-><init>(Lhos;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhos;->i(Z)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 15

    iget-object v0, p0, Lhoc;->h:Lhob;

    if-nez v0, :cond_0

    sget-object v0, Lhoc;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Cheetah component is not initialized, aborting resume"

    const/16 v2, 0xed0

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    iget v1, v1, Lhnw;->k:I

    sget-object v2, Lhnw;->c:Lhnw;

    iget v3, v2, Lhnw;->k:I

    or-int/2addr v1, v3

    sget-object v3, Lhnw;->e:Lhnw;

    iget v4, v3, Lhnw;->k:I

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lhos;->j:Ljvk;

    invoke-virtual {v1, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lhos;->j:Ljvk;

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v0, Lhos;->B:Lhol;

    invoke-virtual {v1}, Lhol;->g()V

    iget-object v1, v0, Lhos;->H:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhos;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lhon;

    invoke-direct {v3, v0, v2}, Lhon;-><init>(Lhos;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, v0, Lhos;->E:Lhpq;

    iget-object v3, v0, Lhos;->R:Lhpu;

    iput-object v3, v1, Lhpq;->N:Lhpu;

    iget-object v3, v1, Lhpq;->e:Lihg;

    iget-object v3, v3, Lihg;->q:Ljava/lang/Object;

    check-cast v3, Ljew;

    const v4, 0x7f0b0053

    invoke-virtual {v3, v4}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lhpq;->Q:Landroid/view/ViewGroup;

    iget-object v3, v1, Lhpq;->e:Lihg;

    iget-object v3, v3, Lihg;->q:Ljava/lang/Object;

    check-cast v3, Ljew;

    const v4, 0x7f0b00b0

    invoke-virtual {v3, v4}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lhpq;->G:Landroid/view/ViewGroup;

    iget-object v3, v1, Lhpq;->e:Lihg;

    iget-object v3, v3, Lihg;->q:Ljava/lang/Object;

    check-cast v3, Ljew;

    const v5, 0x7f0b03d8

    invoke-virtual {v3, v5}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lhpq;->R:Landroid/view/ViewGroup;

    iget-object v3, v1, Lhpq;->e:Lihg;

    iget-object v3, v3, Lihg;->q:Ljava/lang/Object;

    check-cast v3, Ljew;

    invoke-virtual {v3, v4}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lhpq;->S:Landroid/view/ViewGroup;

    iget-object v3, v1, Lhpq;->A:Liov;

    new-instance v4, Lhpo;

    invoke-direct {v4, v1}, Lhpo;-><init>(Lhpq;)V

    invoke-virtual {v3, v4}, Liov;->f(Lipc;)V

    iget-object v3, v1, Lhpq;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/view/View;

    iget-object v7, v1, Lhpq;->f:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lhpq;->O:Landroid/view/View;

    iget-object v6, v1, Lhpq;->O:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v1, Lhpq;->O:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v1, Lhpq;->O:Landroid/view/View;

    const/high16 v8, -0x1000000

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, v1, Lhpq;->O:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v10, v1, Lhpq;->f:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v4, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    new-instance v6, Lclb;

    const/16 v9, 0xd

    invoke-direct {v6, v1, v9}, Lclb;-><init>(Lhpq;I)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/view/View;

    iget-object v6, v1, Lhpq;->f:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lhpq;->P:Landroid/view/View;

    iget-object v5, v1, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v1, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v1, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v1, Lhpq;->P:Landroid/view/View;

    new-instance v5, Lclb;

    const/16 v6, 0xe

    invoke-direct {v5, v1, v6}, Lclb;-><init>(Lhpq;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v1, Lhpq;->f:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lhpq;->M:Landroid/widget/TextView;

    iget-object v4, v1, Lhpq;->M:Landroid/widget/TextView;

    const v5, 0x7f140366

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lhpq;->M:Landroid/widget/TextView;

    const v5, 0x7f0600c7

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v1, Lhpq;->M:Landroid/widget/TextView;

    const v5, 0x7f07015d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v4, Lhpp;

    invoke-direct {v4, v1}, Lhpp;-><init>(Lhpq;)V

    iget-object v5, v1, Lhpq;->f:Landroid/content/Context;

    const v6, 0x7f09000b

    invoke-static {v5, v6, v4}, Lacn;->a(Landroid/content/Context;ILacl;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/16 v6, 0x31

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const v5, 0x7f0705b5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v11, v1, Lhpq;->f:Landroid/content/Context;

    const/4 v6, 0x1

    const/16 v7, 0xbb8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v5, 0x7f140365

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v14, 0x8

    invoke-static/range {v6 .. v14}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v3

    iput-object v3, v1, Lhpq;->H:Licf;

    iget-object v3, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lhpq;->M:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Lhpq;->R:Landroid/view/ViewGroup;

    iget-object v4, v1, Lhpq;->P:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v1, Lhpq;->S:Landroid/view/ViewGroup;

    iget-object v4, v1, Lhpq;->O:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v1, Lhpq;->Q:Landroid/view/ViewGroup;

    iget-object v4, v1, Lhpq;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v1, Lhpq;->M:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v1, Lhpq;->T:I

    iget-object v3, v1, Lhpq;->g:Lhwu;

    invoke-virtual {v3, v2}, Lhwu;->d(Z)V

    iget-object v2, v1, Lhpq;->Q:Landroid/view/ViewGroup;

    iget-object v2, v1, Lhpq;->G:Landroid/view/ViewGroup;

    iget-object v2, v1, Lhpq;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v3, v1, Lhpq;->z:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v2, v1, Lhpq;->q:Leoa;

    iget-object v3, v1, Lhpq;->C:Lenz;

    invoke-virtual {v2, v3}, Leoa;->a(Lenz;)V

    iget-object v2, v1, Lhpq;->j:Ljuf;

    iget-object v3, v1, Lhpq;->p:Liff;

    iget-object v4, v1, Lhpq;->B:Lifj;

    invoke-interface {v3, v4}, Liff;->e(Lifj;)Lkad;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iget-object v2, v1, Lhpq;->j:Ljuf;

    new-instance v3, Lhbq;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Lhbq;-><init>(Lhpq;I)V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iget-object v2, v1, Lhpq;->j:Ljuf;

    new-instance v3, Lhbq;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lhbq;-><init>(Lhpq;I)V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iget-object v2, v1, Lhpq;->n:Lczx;

    iget-object v3, v1, Lhpq;->J:Lczy;

    invoke-interface {v2, v3}, Lczx;->a(Lczy;)V

    iget-object v2, v1, Lhpq;->x:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lhpq;->j:Ljuf;

    iget-object v1, v1, Lhpq;->x:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    sget-object v3, Lika;->n:Lika;

    invoke-interface {v1, v3}, Lhms;->a(Lika;)Lkad;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    :cond_3
    iget-object v1, v0, Lhos;->n:Ldhi;

    sget-object v2, Ldil;->d:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lhos;->o:Lhof;

    iget-object v2, v0, Lhos;->E:Lhpq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v3, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhpq;)V

    iget-object v2, v1, Lhof;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v3, v1, Lhof;->E:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v0, Lhos;->o:Lhof;

    iget-object v2, v0, Lhos;->E:Lhpq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v3, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhpq;)V

    iget-object v4, v1, Lhof;->t:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iput-object v3, v1, Lhof;->D:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    iget-object v1, v0, Lhos;->m:Lhno;

    iget-object v2, v0, Lhos;->E:Lhpq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v3, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhpq;)V

    iput-object v3, v1, Lhno;->N:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    :goto_1
    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->e:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->i:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object v1, v0, Lhos;->p:Ljuh;

    iget-object v0, v0, Lhos;->C:Lhpg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhon;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lhon;-><init>(Lhpg;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 6

    iget-object v0, p0, Lhoc;->f:Lcvh;

    sget-object v1, Lika;->n:Lika;

    iput-object v1, v0, Lcvh;->a:Lika;

    iget-object v0, p0, Lhoc;->e:Lkbc;

    const-string v1, "Cheetah-ModuleStart"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lhoc;->d:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhoc;->i:Lesv;

    new-instance v1, Ljhp;

    invoke-direct {v1}, Ljhp;-><init>()V

    iput-object v1, v0, Lesv;->d:Ljava/lang/Object;

    iget-object v1, v0, Lesv;->d:Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Ljhp;

    invoke-direct {v1}, Ljhp;-><init>()V

    iput-object v1, v0, Lesv;->d:Ljava/lang/Object;

    :cond_0
    new-instance v1, Lesw;

    iget-object v2, v0, Lesv;->a:Lesh;

    iget-object v3, v0, Lesv;->b:Lerz;

    iget-object v0, v0, Lesv;->c:Lese;

    invoke-direct {v1, v2, v3, v0}, Lesw;-><init>(Lesh;Lerz;Lese;)V

    iput-object v1, p0, Lhoc;->h:Lhob;

    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    iget-object v1, p0, Lhoc;->c:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhos;->b(Lklv;)V

    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    iget-object v1, v0, Lhos;->j:Ljvk;

    sget-object v2, Lhnw;->b:Lhnw;

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, v0, Lhos;->D:Lhoz;

    iget-object v2, v1, Lhoz;->m:Lhlw;

    invoke-virtual {v2}, Lhlw;->a()Lnou;

    move-result-object v2

    new-instance v3, Lgij;

    const/16 v4, 0xa

    invoke-direct {v3, v1, v4}, Lgij;-><init>(Lhoz;I)V

    iget-object v1, v1, Lhoz;->d:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Lhos;->D:Lhoz;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v2

    const-string v3, "TimeLapsePoorVideoQualityWarning"

    invoke-virtual {v2, v3}, Lhnd;->d(Ljava/lang/String;)V

    iget-object v3, v1, Lhoz;->f:Ljuh;

    invoke-virtual {v2, v3}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    sget-object v3, Lhna;->f:Lhna;

    invoke-virtual {v2, v3}, Lhnd;->g(Lhna;)V

    new-instance v3, Lhon;

    const/16 v4, 0x11

    invoke-direct {v3, v1, v4}, Lhon;-><init>(Lhoz;I)V

    invoke-virtual {v2, v3}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance v3, Lhon;

    const/16 v4, 0x12

    invoke-direct {v3, v1, v4}, Lhon;-><init>(Lhoz;I)V

    invoke-virtual {v2, v3}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lhnd;->a()Lhne;

    move-result-object v2

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v3

    const-string v4, "TimeLapseHeatEmergency"

    invoke-virtual {v3, v4}, Lhnd;->d(Ljava/lang/String;)V

    iget-object v4, v1, Lhoz;->f:Ljuh;

    invoke-virtual {v3, v4}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    sget-object v4, Lhna;->g:Lhna;

    invoke-virtual {v3, v4}, Lhnd;->g(Lhna;)V

    new-instance v4, Lhon;

    const/16 v5, 0x13

    invoke-direct {v4, v1, v5}, Lhon;-><init>(Lhoz;I)V

    invoke-virtual {v3, v4}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance v4, Lhon;

    const/16 v5, 0x14

    invoke-direct {v4, v1, v5}, Lhon;-><init>(Lhoz;I)V

    invoke-virtual {v3, v4}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lhnd;->a()Lhne;

    move-result-object v3

    invoke-static {v2, v3}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v2

    iput-object v2, v1, Lhoz;->l:Lmvv;

    iget-object v2, v1, Lhoz;->e:Ljuf;

    iget-object v3, v1, Lhoz;->i:Lhnb;

    new-instance v4, Lhow;

    invoke-direct {v4, v1}, Lhow;-><init>(Lhoz;)V

    invoke-interface {v3, v4}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    invoke-virtual {v0}, Lhos;->c()V

    iget-object v0, p0, Lhoc;->g:Lfmf;

    sget-object v1, Lika;->n:Lika;

    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v2

    invoke-interface {v2}, Lhob;->b()Ljuf;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v0, p0, Lhoc;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lhoc;->h:Lhob;

    if-nez v0, :cond_0

    sget-object v0, Lhoc;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Cheetah component is not initialized, aborting stop"

    const/16 v2, 0xed1

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object v0, p0, Lhoc;->e:Lkbc;

    const-string v1, "Cheetah-StopModule"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->j:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lhos;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "onStop(): STATE_RECORDING_ERROR"

    const/16 v3, 0xf04

    invoke-static {v1, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhos;->g(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->i:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lhos;->L:Lnou;

    new-instance v2, Lhon;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lhon;-><init>(Lhos;I)V

    iget-object v0, v0, Lhos;->p:Ljuh;

    invoke-interface {v1, v2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, v0, Lhos;->p:Ljuh;

    iget-object v2, v0, Lhos;->C:Lhpg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lhon;

    const/16 v4, 0xd

    invoke-direct {v3, v2, v4}, Lhon;-><init>(Lhpg;I)V

    invoke-virtual {v1, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lhos;->B:Lhol;

    invoke-virtual {v1}, Lhol;->h()V

    iget-object v0, v0, Lhos;->j:Ljvk;

    sget-object v1, Lhnw;->a:Lhnw;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->b()Ljuf;

    move-result-object v0

    invoke-virtual {v0}, Ljuf;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhoc;->h:Lhob;

    iget-object v0, p0, Lhoc;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method public final t()Z
    .locals 4

    iget-object v0, p0, Lhoc;->h:Lhob;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lhoc;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Cheetah component is not initialized, aborting onBackPressed"

    const/16 v3, 0xed2

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return v1

    :cond_0
    invoke-direct {p0}, Lhoc;->w()Lhob;

    move-result-object v0

    invoke-interface {v0}, Lhob;->a()Lhos;

    move-result-object v0

    iget-object v2, v0, Lhos;->j:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Lhnw;

    invoke-static {v2}, Lhnw;->a(Lhnw;)Z

    move-result v2

    invoke-virtual {v0, v1}, Lhos;->g(Z)V

    if-nez v2, :cond_1

    iget-object v0, v0, Lhos;->E:Lhpq;

    iget-object v0, v0, Lhpq;->n:Lczx;

    invoke-interface {v0}, Lczx;->e()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
