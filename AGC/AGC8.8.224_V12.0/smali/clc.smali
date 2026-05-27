.class public final Lclc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljvk;

.field public final b:Lclu;

.field public final c:Lhgy;

.field public d:Z

.field public final e:Lmpa;

.field public final f:Ldne;

.field private final g:Landroid/content/SharedPreferences;

.field private final h:Lcls;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljvs;Ljvk;Lmpa;Lclu;Ldne;Lcls;Ljwb;Lcdi;Lhgy;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclc;->g:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lclc;->a:Ljvk;

    iput-object p4, p0, Lclc;->e:Lmpa;

    iput-object p5, p0, Lclc;->b:Lclu;

    iput-object p6, p0, Lclc;->f:Ldne;

    iput-object p7, p0, Lclc;->h:Lcls;

    iput-object p10, p0, Lclc;->c:Lhgy;

    invoke-virtual {p9}, Lcdi;->i()Ljuf;

    move-result-object p1

    invoke-static {p2}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p2

    new-instance p3, Lccp;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p8, p4}, Lccp;-><init>(Lclc;Ljwb;I)V

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-interface {p2, p3, p4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    new-instance p2, Lckj;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lckj;-><init>(Lclc;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p8, p2, p3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lclc;->h:Lcls;

    iget-boolean v1, v0, Lcls;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcls;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lclr;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lclr;-><init>(Lcls;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lclc;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autotimer_tutorial_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lclc;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lclc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lclc;->h:Lcls;

    iget-boolean v1, v0, Lcls;->f:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcls;->g:Ljew;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, v0, Lcls;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lclt;

    iget-object v2, v0, Lcls;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lclt;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcls;->b:Lclt;

    new-instance v1, Lclq;

    iget-object v2, v0, Lcls;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lclq;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcls;->c:Lclq;

    iget-object v1, v0, Lcls;->b:Lclt;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lclt;->setId(I)V

    iget-object v1, v0, Lcls;->c:Lclq;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lclq;->setId(I)V

    iget-object v1, v0, Lcls;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lcls;->b:Lclt;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcls;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lcls;->c:Lclq;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcls;->b:Lclt;

    invoke-virtual {v1}, Lclt;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lhyf;

    const/4 v2, 0x2

    iput v2, v1, Lhyf;->ax:I

    iget-object v2, v0, Lcls;->b:Lclt;

    invoke-virtual {v2, v1}, Lclt;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcls;->c:Lclq;

    invoke-virtual {v1}, Lclq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lhyf;

    const/4 v2, 0x3

    iput v2, v1, Lhyf;->ax:I

    iget-object v2, v0, Lcls;->c:Lclq;

    invoke-virtual {v2, v1}, Lclq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcls;->b:Lclt;

    iget-object v2, v0, Lcls;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lclt;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcls;->f:Z

    :cond_0
    iget-object v1, v0, Lcls;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lclr;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lclr;-><init>(Lcls;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lclc;->h:Lcls;

    new-instance v1, Lclb;

    invoke-direct {v1, p0, v3}, Lclb;-><init>(Lclc;I)V

    iput-object v1, v0, Lcls;->e:Landroid/view/View$OnTouchListener;

    iget-boolean v1, v0, Lcls;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcls;->b:Lclt;

    iget-object v0, v0, Lcls;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v0}, Lclt;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public final d(Lclj;)V
    .locals 1

    iget-object v0, p0, Lclc;->a:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    iget-object v0, p0, Lclc;->a:Ljvk;

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lclc;->a:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    sget-object v1, Lclj;->c:Lclj;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lclc;->a:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    sget-object v1, Lclj;->a:Lclj;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Lclc;->g:Landroid/content/SharedPreferences;

    const-string v1, "autotimer_tutorial_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
