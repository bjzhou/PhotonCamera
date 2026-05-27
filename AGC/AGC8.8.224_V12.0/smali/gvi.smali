.class public final Lgvi;
.super Ljava/lang/Object;

# interfaces
.implements Lgvu;


# instance fields
.field public final a:I

.field public b:Z

.field private final c:Ljuh;

.field private final d:Ljvs;

.field private e:Lgvk;

.field private f:Ljvs;

.field private g:Ljvs;

.field private h:Ljvs;

.field private i:I

.field private j:Lgvl;

.field private k:Liks;


# direct methods
.method public constructor <init>(Ljuh;Ldhi;Ljwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgvi;->c:Ljuh;

    iput-object p3, p0, Lgvi;->d:Ljvs;

    sget-object p1, Ldho;->aE:Ldhj;

    invoke-interface {p2, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ldho;->j:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lgvi;->a:I

    return-void

    :cond_0
    sget-object p1, Ldho;->h:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    iput p1, p0, Lgvi;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 3

    iget-object v0, p0, Lgvi;->k:Liks;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Liks;->a()V

    iget-object v0, p0, Lgvi;->e:Lgvk;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lgvk;->setVisibility(I)V

    invoke-static {}, Lgvk;->a()Lnou;

    move-result-object v0

    new-instance v1, Lchy;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lchy;-><init>(I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final b()Lnou;
    .locals 2

    iget-object v0, p0, Lgvi;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lika;->m:Lika;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgvi;->k:Liks;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    iget v1, p0, Lgvi;->i:I

    invoke-virtual {v0, v1}, Liks;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgvi;->k:Liks;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Liks;->c()V

    :goto_0
    iget-object v0, p0, Lgvi;->e:Lgvk;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvk;->setVisibility(I)V

    invoke-static {}, Lgvk;->a()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lgvi;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgvi;->j:Lgvl;

    invoke-virtual {v0}, Lgvl;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lgvi;->j:Lgvl;

    invoke-virtual {v0}, Lgvl;->d()V

    return-void
.end method

.method public final d()Z
    .locals 7

    iget-boolean v0, p0, Lgvi;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lgvi;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v2, Lika;->c:Lika;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    sget-object v2, Lika;->i:Lika;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    sget-object v4, Lika;->b:Lika;

    if-eq v0, v4, :cond_4

    sget-object v4, Lika;->h:Lika;

    if-eq v0, v4, :cond_4

    sget-object v4, Lika;->g:Lika;

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    :goto_1
    sget-object v5, Lika;->m:Lika;

    const-string v6, "torch"

    if-eqz v2, :cond_6

    iget-object v2, p0, Lgvi;->f:Ljvs;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    iget-object v2, p0, Lgvi;->g:Ljvs;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_7
    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lgvi;->h:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    return v1

    :cond_9
    :goto_4
    return v1
.end method

.method public final e(Lgvl;Ljuf;Lcom/google/android/apps/camera/uiutils/ReplaceableView;Lgvv;Liks;Ljvs;Ljvs;Ljvs;Ljvs;)V
    .locals 0

    iput-object p6, p0, Lgvi;->f:Ljvs;

    iput-object p7, p0, Lgvi;->g:Ljvs;

    iput-object p8, p0, Lgvi;->h:Ljvs;

    iput-object p5, p0, Lgvi;->k:Liks;

    invoke-interface {p4}, Lgvv;->a()I

    move-result p4

    iput p4, p0, Lgvi;->i:I

    new-instance p4, Lgvk;

    invoke-virtual {p3}, Lcom/google/android/apps/camera/uiutils/ReplaceableView;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Lgvk;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lgvi;->e:Lgvk;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p5

    invoke-virtual {p4, p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    iget-object p4, p0, Lgvi;->e:Lgvk;

    iget p5, p0, Lgvi;->a:I

    invoke-virtual {p4, p5}, Lgvk;->setBackgroundColor(I)V

    iget-object p4, p0, Lgvi;->e:Lgvk;

    invoke-virtual {p3, p4}, Lcom/google/android/apps/camera/uiutils/ReplaceableView;->a(Landroid/view/View;)V

    iput-object p1, p0, Lgvi;->j:Lgvl;

    invoke-virtual {p1}, Lgvl;->f()V

    iget-object p1, p0, Lgvi;->f:Ljvs;

    new-instance p3, Lguy;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p4}, Lguy;-><init>(Lgvi;I)V

    iget-object p4, p0, Lgvi;->c:Ljuh;

    invoke-interface {p1, p3, p4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lguy;

    const/4 p3, 0x4

    invoke-direct {p1, p0, p3}, Lguy;-><init>(Lgvi;I)V

    iget-object p3, p0, Lgvi;->c:Ljuh;

    invoke-interface {p7, p1, p3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lguy;

    const/4 p3, 0x5

    invoke-direct {p1, p0, p3}, Lguy;-><init>(Lgvi;I)V

    iget-object p3, p0, Lgvi;->c:Ljuh;

    invoke-interface {p8, p1, p3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Lgvi;->d:Ljvs;

    new-instance p3, Lguy;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p4}, Lguy;-><init>(Lgvi;I)V

    iget-object p4, p0, Lgvi;->c:Ljuh;

    invoke-interface {p1, p3, p4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lguy;

    const/4 p3, 0x7

    invoke-direct {p1, p0, p3}, Lguy;-><init>(Lgvi;I)V

    iget-object p3, p0, Lgvi;->c:Ljuh;

    invoke-interface {p9, p1, p3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method
