.class public final Lgdz;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lgej;

.field public static final b:Lmtc;


# instance fields
.field public final c:Ljwb;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljuf;

.field public final f:Ljvs;

.field public final g:Litm;

.field public h:Lgfn;

.field public i:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

.field private final j:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lgej;->b:Lgej;

    sput-object v0, Lgdz;->a:Lgej;

    sget-object v1, Lgej;->b:Lgej;

    sget-object v2, Lgyu;->a:Lgyu;

    sget-object v3, Lgej;->c:Lgej;

    sget-object v4, Lgyu;->b:Lgyu;

    sget-object v5, Lgej;->d:Lgej;

    sget-object v6, Lgyu;->c:Lgyu;

    sget-object v7, Lgej;->e:Lgej;

    sget-object v8, Lgyu;->d:Lgyu;

    invoke-static/range {v1 .. v8}, Lmvk;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvk;

    move-result-object v0

    sput-object v0, Lgdz;->b:Lmtc;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljava/util/concurrent/Executor;Lmrl;Ljvs;Lcdi;Litm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5}, Lcdi;->i()Ljuf;

    move-result-object p5

    invoke-virtual {p5}, Ljuf;->c()Ljuf;

    move-result-object p5

    iput-object p5, p0, Lgdz;->e:Ljuf;

    iput-object p1, p0, Lgdz;->c:Ljwb;

    iput-object p2, p0, Lgdz;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lgdz;->j:Lmrl;

    iput-object p4, p0, Lgdz;->f:Ljvs;

    iput-object p6, p0, Lgdz;->g:Litm;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lgdz;->i:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lakf;

    invoke-direct {v1}, Lakf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lbnd;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lgdz;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lbnd;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lgdz;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lgdz;->c()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lgdz;->i:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lgdz;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-static {v0}, Lhyo;->b(Lika;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdz;->i:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lgdz;->i:Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/TimerWidget;->setVisibility(I)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lgdz;->j:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdz;->j:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v0, v0, Lhyt;->a:Lhys;

    iget-object v0, v0, Lhys;->i:Lhyn;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {v0, v1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lgdz;->e:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgdz;->a(Z)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lgdz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdz;->f:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-static {v0}, Lhyo;->b(Lika;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgdz;->a(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
