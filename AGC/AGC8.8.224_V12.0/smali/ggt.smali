.class public final Lggt;
.super Ljava/lang/Object;

# interfaces
.implements Lcbi;


# instance fields
.field public final a:Lccg;

.field public final b:Lken;

.field public c:Lnph;

.field public final d:Ljava/lang/Runnable;

.field public final e:Ldqx;

.field public final f:Lbkb;

.field private final g:Ljuw;

.field private final h:Lgla;

.field private final i:Ljvk;

.field private final j:Ljvs;

.field private final k:Ldfa;


# direct methods
.method public constructor <init>(Lken;Ljuw;Lccg;Ldqx;Lbkb;Ldfa;Lgla;Ljvk;Ljvs;[B[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Lfzr;

    const/16 p11, 0x11

    invoke-direct {p10, p0, p11}, Lfzr;-><init>(Lggt;I)V

    iput-object p10, p0, Lggt;->d:Ljava/lang/Runnable;

    iput-object p2, p0, Lggt;->g:Ljuw;

    iput-object p3, p0, Lggt;->a:Lccg;

    iput-object p4, p0, Lggt;->e:Ldqx;

    iput-object p5, p0, Lggt;->f:Lbkb;

    iput-object p1, p0, Lggt;->b:Lken;

    iput-object p6, p0, Lggt;->k:Ldfa;

    iput-object p7, p0, Lggt;->h:Lgla;

    iput-object p8, p0, Lggt;->i:Ljvk;

    iput-object p9, p0, Lggt;->j:Ljvs;

    return-void
.end method

.method private final c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lggt;->g:Ljuw;

    new-instance v1, Lfzr;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lfzr;-><init>(Lggt;I)V

    invoke-virtual {v0, v1}, Ljuw;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public final b(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lggt;->a:Lccg;

    iget-object v2, p0, Lggt;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lggt;->f:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lggt;->h:Lgla;

    invoke-virtual {v1}, Lgla;->g()V

    iget-object v1, p0, Lggt;->e:Ldqx;

    invoke-virtual {v1}, Ldqx;->f()V

    :cond_1
    iget-object v1, p0, Lggt;->b:Lken;

    invoke-interface {v1, p1, p2, v0}, Lken;->m(ZZZ)V

    iget-object v0, p0, Lggt;->b:Lken;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lggt;->k:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lkfr;

    iput-object p1, v1, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p1, p0, Lggt;->i:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lgrx;

    iget p1, p1, Lgrx;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lkfr;->d:Ljava/lang/Integer;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lggt;->k:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lkfr;

    iput-object p1, p2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_3
    iget-object p1, p0, Lggt;->k:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lkfr;

    iput-object p1, p2, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p1, p0, Lggt;->b:Lken;

    invoke-interface {v0}, Lkdz;->a()Lkea;

    move-result-object p2

    invoke-interface {p1, p2}, Lken;->n(Lkea;)V

    return-void
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 10

    iget-object v0, p0, Lggt;->g:Ljuw;

    invoke-virtual {v0}, Ljuw;->b()V

    iget-object v0, p0, Lggt;->c:Lnph;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lggt;->a:Lccg;

    iget-object v2, p0, Lggt;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lggt;->e:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lggt;->h:Lgla;

    invoke-virtual {v0}, Lgla;->i()V

    :cond_1
    iget-object v0, p0, Lggt;->b:Lken;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v0

    iget-object v2, p0, Lggt;->i:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Lgrx;

    iget v2, v2, Lgrx;->h:I

    iget-object v3, p0, Lggt;->j:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lggt;->e:Ldqx;

    iget-object v3, v3, Ldqx;->d:Ljava/lang/Object;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lkfr;

    iput-object v2, v3, Lkfr;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lggt;->k:Ldfa;

    iget-object v4, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v2, v4}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    iput-object v2, v3, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lggt;->k:Ldfa;

    iget-object v2, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, v3, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_4
    invoke-interface {v0}, Lkdz;->a()Lkea;

    move-result-object v0

    iget-object v1, p0, Lggt;->j:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lggt;->b:Lken;

    invoke-interface {v1, v0}, Lken;->n(Lkea;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lggt;->b:Lken;

    invoke-static {}, Lbze;->o()Lkfh;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lken;->l(Lkea;Lkfh;)V

    :goto_1
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, p0, Lggt;->c:Lnph;

    invoke-direct {p0}, Lggt;->c()V

    new-instance v0, Lggs;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lggs;-><init>(Lggt;Lnph;Lbkc;[B[B[B)V

    return-object v0
.end method
