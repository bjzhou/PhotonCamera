.class public final Lhrz;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfat;
.implements Lfaq;
.implements Lezd;


# instance fields
.field public final a:Ljuh;

.field public final b:Ldhi;

.field public final c:Ljvs;

.field public d:Lmgf;

.field public e:Lhry;

.field public f:Landroid/view/View$OnScrollChangeListener;

.field public g:I

.field public h:J

.field public i:Landroidx/core/widget/NestedScrollView;

.field public j:I

.field public k:Lnwn;

.field public l:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final m:Landroid/view/View$OnLayoutChangeListener;

.field private final n:Lfbz;

.field private final o:Landroid/view/View$OnScrollChangeListener;

.field private final p:Landroid/app/Activity;

.field private final q:Ljava/util/List;

.field private final r:Lkad;


# direct methods
.method public constructor <init>(Ljuh;Landroid/app/Activity;Lfak;Lfbz;Ldhi;Ljvs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lhrz;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhrz;->h:J

    sget-object v0, Lngn;->e:Lngn;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iput-object v0, p0, Lhrz;->k:Lnwn;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhrz;->q:Ljava/util/List;

    iput-object p1, p0, Lhrz;->a:Ljuh;

    iput-object p2, p0, Lhrz;->p:Landroid/app/Activity;

    iput-object p6, p0, Lhrz;->c:Ljvs;

    iput-object p5, p0, Lhrz;->b:Ldhi;

    const/4 p2, -0x1

    iput p2, p0, Lhrz;->g:I

    new-instance p2, Lhcl;

    const/4 p5, 0x2

    invoke-direct {p2, p0, p5}, Lhcl;-><init>(Lhrz;I)V

    iput-object p2, p0, Lhrz;->m:Landroid/view/View$OnLayoutChangeListener;

    iput-object p4, p0, Lhrz;->n:Lfbz;

    new-instance p2, Lhrt;

    invoke-direct {p2, p0}, Lhrt;-><init>(Lhrz;)V

    iput-object p2, p0, Lhrz;->o:Landroid/view/View$OnScrollChangeListener;

    new-instance p2, Lhqn;

    const/4 p4, 0x4

    invoke-direct {p2, p0, p3, p4}, Lhqn;-><init>(Lhrz;Lfak;I)V

    invoke-virtual {p1, p2}, Ljuh;->c(Ljava/lang/Runnable;)V

    new-instance p1, Lhml;

    const/16 p2, 0xc

    invoke-direct {p1, p0, p2}, Lhml;-><init>(Lhrz;I)V

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-interface {p6, p1, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lhrz;->r:Lkad;

    return-void
.end method


# virtual methods
.method public final bK()V
    .locals 1

    iget-object v0, p0, Lhrz;->r:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    return-void
.end method

.method public final bM()V
    .locals 0

    invoke-virtual {p0}, Lhrz;->g()V

    return-void
.end method

.method public final c()I
    .locals 4

    iget-object v0, p0, Lhrz;->p:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lhrz;->p:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(Landroid/view/View;Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Lhrz;->g()V

    new-instance v0, Lmgf;

    invoke-direct {v0, p2}, Lmgf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhrz;->d:Lmgf;

    const v1, 0x7f0e002a

    invoke-virtual {v0, v1}, Lpm;->setContentView(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmgf;->c:Z

    const v1, 0x7f0e005b

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {v0}, Lmgf;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x400

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    const p2, 0x7f0b030c

    invoke-virtual {v0, p2}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lhrz;->m:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v1}, Landroidx/core/widget/NestedScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lhrz;->o:Landroid/view/View$OnScrollChangeListener;

    invoke-virtual {p2, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    if-eqz p1, :cond_1

    const v1, 0x7f0b030e

    invoke-virtual {v0, v1}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-object p2
.end method

.method public final e(Lhrx;)V
    .locals 1

    iget-object v0, p0, Lhrz;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lhrz;->e:Lhry;

    if-eqz v0, :cond_0

    iget v1, p0, Lhrz;->g:I

    invoke-interface {v0, v1}, Lhry;->b(I)V

    :cond_0
    iget-object v0, p0, Lhrz;->d:Lmgf;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0b030c

    invoke-virtual {v0, v1}, Lff;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lhrz;->i:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lhrz;->c:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhxi;

    iget-object v1, v1, Lhxi;->a:Lhxj;

    sget-object v2, Lhxj;->e:Lhxj;

    invoke-virtual {v1, v2}, Lhxj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {p0}, Lhrz;->c()I

    move-result v2

    iput v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    :cond_2
    new-instance v1, Lhqn;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lhqn;-><init>(Lhrz;Lmgf;I)V

    new-instance v2, Lhrw;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lhrw;-><init>(Landroid/view/View;Ljava/lang/Runnable;I)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    invoke-virtual {v0}, Lmgf;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(Z)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lhrz;->a:Ljuh;

    new-instance v1, Lhph;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lhph;-><init>(Lhrz;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 7

    iget v0, p0, Lhrz;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget-wide v2, p0, Lhrz;->h:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    iget-object v2, p0, Lhrz;->k:Lnwn;

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_0
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lngn;

    sget-object v4, Lngn;->e:Lngn;

    add-int/lit8 v4, v0, -0x1

    if-eqz v0, :cond_5

    iput v4, v3, Lngn;->b:I

    iget v0, v3, Lngn;->a:I

    or-int/2addr v0, v1

    iput v0, v3, Lngn;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lhrz;->h:J

    sub-long/2addr v0, v3

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    iget-object v2, v2, Lnwn;->b:Lnws;

    check-cast v2, Lngn;

    iget v3, v2, Lngn;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lngn;->a:I

    iput-wide v0, v2, Lngn;->c:J

    iget-object v0, p0, Lhrz;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lhrz;->k:Lnwn;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Leom;

    invoke-virtual {v0}, Leom;->a()V

    iget-object v0, v0, Leom;->a:Ljava/util/List;

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lngn;

    iget-object v2, v1, Lngn;->d:Lnxa;

    invoke-interface {v2}, Lnxa;->c()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v2

    iput-object v2, v1, Lngn;->d:Lnxa;

    :cond_3
    iget-object v1, v1, Lngn;->d:Lnxa;

    invoke-static {v0, v1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lhrz;->n:Lfbz;

    iget-object v1, p0, Lhrz;->k:Lnwn;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngn;

    invoke-interface {v0, v1}, Lfbz;->r(Lngn;)V

    return-void

    :cond_5
    const/4 v0, 0x0

    throw v0

    :cond_6
    return-void
.end method

.method public final i(Lhrx;)V
    .locals 1

    iget-object v0, p0, Lhrz;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Lhrz;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrx;

    invoke-interface {v1, p1}, Lhrx;->x(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 2

    iget-object v0, p0, Lhrz;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrx;

    invoke-interface {v1, p1}, Lhrx;->y(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(IILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lhrz;->n(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    return-void
.end method

.method public final n(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 9

    iget-object v0, p0, Lhrz;->b:Ldhi;

    sget-object v1, Ldho;->bg:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhrz;->a:Ljuh;

    new-instance v8, Lhru;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lhru;-><init>(Lhrz;ILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;II)V

    invoke-virtual {v0, v8}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iput p1, p0, Lhrz;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lhrz;->h:J

    sget-object p2, Lngn;->e:Lngn;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    iput-object p2, p0, Lhrz;->k:Lnwn;

    iput-object p5, p0, Lhrz;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {p0, p1}, Lhrz;->k(I)V

    return-void
.end method

.method public final y(Landroid/content/res/Configuration;)V
    .locals 0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lhrz;->g:I

    return-void
.end method
