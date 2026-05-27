.class public final Ldoq;
.super Ljava/lang/Object;

# interfaces
.implements Ldol;
.implements Lkad;


# instance fields
.field public a:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field public b:Ljwb;

.field public c:Lmqp;

.field public d:Landroid/widget/ImageButton;

.field private final e:Landroid/content/Context;

.field private final f:Lj$/time/Duration;

.field private final g:Ljuf;

.field private final h:Ljwb;

.field private final i:Ljwb;

.field private final j:Ljwb;

.field private final k:Ljwb;

.field private final l:Lkbc;

.field private m:Ldox;

.field private n:Ldpc;

.field private o:Landroid/animation/Animator;

.field private p:Landroid/animation/ObjectAnimator;

.field private q:Licj;

.field private r:Landroid/widget/CheckBox;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lkad;

.field private w:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkbc;Ljwb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldoq;->h:Ljwb;

    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldoq;->i:Ljwb;

    new-instance v0, Ljvk;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldoq;->k:Ljwb;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Ldoq;->o:Landroid/animation/Animator;

    iput-boolean v1, p0, Ldoq;->s:Z

    iput-boolean v1, p0, Ldoq;->t:Z

    iput-boolean v1, p0, Ldoq;->u:Z

    iput-object p1, p0, Ldoq;->e:Landroid/content/Context;

    iput-object p2, p0, Ldoq;->l:Lkbc;

    new-instance p2, Ljuf;

    invoke-direct {p2}, Ljuf;-><init>()V

    iput-object p2, p0, Ldoq;->g:Ljuf;

    iput-object p3, p0, Ldoq;->j:Ljwb;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c00a2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    iput-object p1, p0, Ldoq;->f:Lj$/time/Duration;

    return-void
.end method

.method private final x()V
    .locals 3

    iget-object v0, p0, Ldoq;->v:Lkad;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldoq;->c:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    invoke-interface {v0}, Lglf;->d()Ljvs;

    move-result-object v0

    new-instance v1, Lcze;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcze;-><init>(Ldoq;I)V

    iget-object v2, p0, Ldoq;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    iput-object v0, p0, Ldoq;->v:Lkad;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Ldoq;->k:Ljwb;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Ldoq;->h:Ljwb;

    return-object v0
.end method

.method public final c()Ljvs;
    .locals 1

    iget-object v0, p0, Ldoq;->i:Ljwb;

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Ldoq;->m:Ldox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldos;->g()V

    :cond_0
    iget-object v0, p0, Ldoq;->h:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldoq;->g:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Ldoq;->l:Lkbc;

    const-string v1, "EvCompViewCtrl#disable"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Ldoq;->m:Ldox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldos;->a()V

    :cond_0
    iget-object v0, p0, Ldoq;->l:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldoq;->t:Z

    iput-boolean v0, p0, Ldoq;->u:Z

    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Ldoq;->r:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "EvCompViewController must be first initialized"

    invoke-static {v0, v3, v2}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Ldoq;->r:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "EvCompViewController must be first initialized"

    invoke-static {v0, v3, v2}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public final g(IIF)V
    .locals 2

    iget-object v0, p0, Ldoq;->l:Lkbc;

    const-string v1, "EvCompViewCtrl#enable"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldoq;->u()Ldox;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ldos;->b(IIF)V

    iget-object p1, p0, Ldoq;->l:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-boolean p1, p0, Ldoq;->u:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldoq;->v()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Ldoq;->p(ZZ)V

    iput-boolean p1, p0, Ldoq;->u:Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldoq;->t:Z

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Ldoq;->r:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "EvCompViewController must be first initialized"

    invoke-static {v0, v2, v1}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Ldoq;->r:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "EvCompViewController must be first initialized"

    invoke-static {v0, v2, v1}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    iget-object v0, p0, Ldoq;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldoq;->s:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ldoq;->u()Ldox;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldos;->c(Z)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Ldoq;->c:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    invoke-interface {v0}, Lglf;->i()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ldoq;->w(ZZ)V

    iget-object v0, p0, Ldoq;->n:Ldpc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldpc;->j()V

    :cond_0
    iget-object v0, p0, Ldoq;->k:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldoq;->n:Ldpc;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldpc;->l()V

    :cond_1
    return-void
.end method

.method public final l(Z)V
    .locals 1

    iget-object v0, p0, Ldoq;->q:Licj;

    iput-boolean p1, v0, Licj;->l:Z

    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-object v0, p0, Ldoq;->i:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldoq;->i:Ljwb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Ldoq;->n:Ldpc;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldoy;->c()V

    :cond_1
    iget-object v0, p0, Ldoq;->w:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast v0, Lccv;

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->b:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->d:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lccv;->a:Ljwb;

    sget-object v0, Lccu;->b:Lccu;

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_3
    check-cast v0, Lccv;

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->e:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->g:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lccv;->a:Ljwb;

    sget-object v0, Lccu;->e:Lccu;

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public final n(Ldoh;)V
    .locals 11

    iget-object v0, p0, Ldoq;->b:Ljwb;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Ljwb;

    invoke-interface {v1, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->m()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->k()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->l()V

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldoj;

    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-eq v5, v6, :cond_1

    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    sget-object v1, Ldoh;->a:Ldoh;

    invoke-virtual {p1}, Ldoh;->ordinal()I

    move-result p1

    const/16 v10, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-object v2, Ldok;->a:Ldok;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x7f0801f7

    const v6, 0x7f06048e

    const v7, 0x7f080138

    const v8, 0x7f1400a7

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    sget-object v2, Ldok;->b:Ldok;

    const v5, 0x7f0801f8

    const v6, 0x7f060486

    const v7, 0x7f080139

    const v8, 0x7f14049b

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {p1, v9}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_1
    iget p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->c:I

    int-to-float p1, p1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->b()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, p1

    sget-object v2, Ldok;->a:Ldok;

    const/4 v3, 0x0

    const v5, 0x7f0801f7

    const v6, 0x7f06048e

    const v7, 0x7f080138

    const v8, 0x7f1400a7

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    sget-object v2, Ldok;->b:Ldok;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x7f0801f8

    const v6, 0x7f060486

    const v7, 0x7f080139

    const v8, 0x7f14049b

    move-object v1, v0

    move v3, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Ldoj;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {p1, v10}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto :goto_2

    :pswitch_2
    sget-object v2, Ldok;->a:Ldok;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x7f08032c

    const v6, 0x7f06048e

    const v7, 0x7f080138

    const v8, 0x7f140189

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/apps/camera/evcomp/EvCompView;->c(Ldok;FFIIII)Ldoj;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Ldoj;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    invoke-virtual {p1, v10}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    :goto_2
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v9, v1, :cond_4

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldoj;

    iget v3, v2, Ldoj;->d:F

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/camera/evcomp/EvCompView;->e(Ldoj;F)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->requestLayout()V

    iget-object p1, p0, Ldoq;->n:Ldpc;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ldoy;->a()V

    invoke-virtual {p1}, Ldpc;->j()V

    iget-object v0, p0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget-object v0, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldoj;

    new-instance v2, Ldon;

    invoke-direct {v2, p0, p1}, Ldon;-><init>(Ldoq;Ldpc;)V

    invoke-virtual {v1, v2}, Ldoj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Liko;)V
    .locals 1

    iget-object v0, p0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->j:Liko;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->f(Liko;)V

    return-void
.end method

.method public final p(ZZ)V
    .locals 2

    iget-object v0, p0, Ldoq;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldoq;->i:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ldoq;->u()Ldox;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldos;->d(ZZ)V

    iget-object p1, p0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    new-instance p2, Ldgg;

    const/16 v0, 0xd

    invoke-direct {p2, p0, v0}, Ldgg;-><init>(Ldoq;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final q(I)V
    .locals 4

    iget-boolean v0, p0, Ldoq;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ldoq;->n:Ldpc;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v1, v0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ldpc;->i()V

    iget-object v1, v0, Ldpc;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iget-object v0, v0, Ldpc;->k:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/camera/evcomp/EvCompView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final r(Lhyn;Lika;)V
    .locals 3

    sget-object v0, Lhyn;->d:Lhyn;

    invoke-virtual {v0, p1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean p2, p2, Lika;->w:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Ldoq;->s:Z

    if-eqz p2, :cond_2

    iget-boolean p1, p0, Ldoq;->t:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ldoq;->v()V

    invoke-virtual {p0, v2, v1}, Ldoq;->p(ZZ)V

    invoke-direct {p0}, Ldoq;->x()V

    :cond_1
    iget-boolean p1, p0, Ldoq;->t:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Ldoq;->u:Z

    return-void

    :cond_2
    sget-object p2, Lhyn;->d:Lhyn;

    invoke-virtual {p2, p1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ldoq;->j(Z)V

    return-void
.end method

.method public final s(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    iput-object p1, p0, Ldoq;->w:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method

.method public final t(Lcom/google/android/apps/camera/evcomp/EvCompView;Ljwb;Ljwb;Ljwb;Ljwb;Ldja;Lmqp;Licj;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p8

    iget-object v1, v0, Ldoq;->e:Landroid/content/Context;

    const/high16 v2, 0x10b0000

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v14}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iput-object v1, v0, Ldoq;->p:Landroid/animation/ObjectAnimator;

    move-object/from16 v7, p2

    iput-object v7, v0, Ldoq;->b:Ljwb;

    iput-object v14, v0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    iput-object v15, v0, Ldoq;->q:Licj;

    move-object/from16 v10, p7

    iput-object v10, v0, Ldoq;->c:Lmqp;

    iget-object v1, v14, Lcom/google/android/apps/camera/evcomp/EvCompView;->d:Landroid/widget/CheckBox;

    iput-object v1, v0, Ldoq;->r:Landroid/widget/CheckBox;

    iget-object v1, v14, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Landroid/widget/ImageButton;

    iput-object v1, v0, Ldoq;->d:Landroid/widget/ImageButton;

    iget-object v1, v0, Ldoq;->r:Landroid/widget/CheckBox;

    invoke-static {v1}, Llkj;->C(Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Ldoq;->d:Landroid/widget/ImageButton;

    new-instance v2, Lhu;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lhu;-><init>(Ldoq;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Ldpk;

    new-instance v2, Ldom;

    const/4 v12, 0x0

    invoke-direct {v2, v0, v12}, Ldom;-><init>(Ldoq;I)V

    iget-object v9, v0, Ldoq;->k:Ljwb;

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    const/16 p2, 0x0

    move-object/from16 v12, v16

    move-object v14, v13

    move-object/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Ldpk;-><init>(Loiw;Lcom/google/android/apps/camera/evcomp/EvCompView;Ljwb;Ljwb;Ljwb;Ljwb;Ldja;Ljwb;Lmqp;[B[B[B)V

    iput-object v14, v0, Ldoq;->n:Ldpc;

    new-instance v11, Ldpg;

    iget-object v3, v0, Ldoq;->r:Landroid/widget/CheckBox;

    iget-object v4, v0, Ldoq;->p:Landroid/animation/ObjectAnimator;

    iget-object v5, v0, Ldoq;->n:Ldpc;

    invoke-static {v5}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v7, v0, Ldoq;->n:Ldpc;

    invoke-static {v7}, Llkj;->C(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Ldpg;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/widget/CheckBox;Landroid/animation/ObjectAnimator;Ldpc;Ldja;Ldpc;[B[B[B)V

    iput-object v11, v0, Ldoq;->m:Ldox;

    invoke-virtual {v11}, Ldos;->f()V

    iget-object v1, v0, Ldoq;->i:Ljwb;

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v15, Licj;->l:Z

    iget-object v1, v0, Ldoq;->h:Ljwb;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()Ldox;
    .locals 1

    iget-object v0, p0, Ldoq;->m:Ldox;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Ldoq;->n:Ldpc;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldpc;->i()V

    return-void
.end method

.method public final w(ZZ)V
    .locals 2

    iget-boolean v0, p0, Ldoq;->s:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Ldoq;->x()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldoq;->v:Lkad;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldoq;->v:Lkad;

    :cond_1
    :goto_0
    const/16 v0, 0x8

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    iget-object p1, p0, Ldoq;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    iget-object p1, p0, Ldoq;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    iget-object p1, p0, Ldoq;->e:Landroid/content/Context;

    const/high16 p2, 0x10b0000

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    iget-object p2, p0, Ldoq;->f:Lj$/time/Duration;

    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    iget-object p2, p0, Ldoq;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    new-instance p2, Ldoo;

    invoke-direct {p2, p0}, Ldoo;-><init>(Ldoq;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_3
    iget-object p1, p0, Ldoq;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    iget-object p1, p0, Ldoq;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    iget-object p1, p0, Ldoq;->e:Landroid/content/Context;

    const p2, 0x10b0001

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    iget-object p2, p0, Ldoq;->f:Lj$/time/Duration;

    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    iget-object p2, p0, Ldoq;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    new-instance p2, Ldop;

    invoke-direct {p2, p0}, Ldop;-><init>(Ldoq;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Ldoq;->o:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    :cond_5
    iget-object p1, p0, Ldoq;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eq v1, p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
