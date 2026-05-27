.class public final Lggw;
.super Ljava/lang/Object;

# interfaces
.implements Lcbi;


# instance fields
.field public final a:Lken;

.field public final b:Ljuw;

.field public final c:Ljwb;

.field public d:Lnph;

.field public final e:Ldqx;

.field public final f:Lbkb;

.field private final g:Ljuf;

.field private final h:Lgla;

.field private final i:Ljvk;

.field private final j:Ljvs;

.field private final k:I

.field private volatile l:Z

.field private final m:Ldfa;


# direct methods
.method public constructor <init>(Lken;Ldfa;Ljuf;Ljuw;Ldqx;Lbkb;Ldja;Lgla;Ljvk;ILjwb;[B[B[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lggw;->a:Lken;

    move-object v1, p2

    iput-object v1, v0, Lggw;->m:Ldfa;

    move-object v1, p3

    iput-object v1, v0, Lggw;->g:Ljuf;

    move-object v1, p4

    iput-object v1, v0, Lggw;->b:Ljuw;

    move-object v1, p5

    iput-object v1, v0, Lggw;->e:Ldqx;

    move-object v1, p6

    iput-object v1, v0, Lggw;->f:Lbkb;

    move-object v1, p7

    iget-object v1, v1, Ldja;->b:Ljava/lang/Object;

    iput-object v1, v0, Lggw;->c:Ljwb;

    move-object v1, p8

    iput-object v1, v0, Lggw;->h:Lgla;

    move-object v1, p9

    iput-object v1, v0, Lggw;->i:Ljvk;

    move-object v1, p11

    iput-object v1, v0, Lggw;->j:Ljvs;

    move v1, p10

    iput v1, v0, Lggw;->k:I

    return-void
.end method


# virtual methods
.method public final b(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lggw;->h:Lgla;

    invoke-virtual {v0}, Lgla;->g()V

    iget-object v0, p0, Lggw;->e:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lggw;->f:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lggw;->a:Lken;

    invoke-interface {v1, p1, p2, v0}, Lken;->m(ZZZ)V

    iget-object v0, p0, Lggw;->a:Lken;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lggw;->m:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lkfr;

    iput-object p1, v1, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p1, p0, Lggw;->i:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lgrx;

    iget p1, p1, Lgrx;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lkfr;->d:Ljava/lang/Integer;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lggw;->m:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lkfr;

    iput-object p1, p2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_3
    iget-object p1, p0, Lggw;->m:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lkfr;

    iput-object p1, p2, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p1, p0, Lggw;->a:Lken;

    invoke-interface {v0}, Lkdz;->a()Lkea;

    move-result-object p2

    invoke-interface {p1, p2}, Lken;->n(Lkea;)V

    return-void
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 10

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lggw;->b:Ljuw;

    invoke-virtual {v0}, Ljuw;->b()V

    iget-object v0, p0, Lggw;->e:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lggw;->h:Lgla;

    invoke-virtual {v0}, Lgla;->i()V

    :cond_0
    iget-boolean v0, p0, Lggw;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lggw;->l:Z

    iget-object v0, p0, Lggw;->g:Ljuf;

    iget-object v2, p0, Lggw;->c:Ljwb;

    new-instance v3, Lgdl;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Lgdl;-><init>(Lggw;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    :cond_1
    iget-object v0, p0, Lggw;->a:Lken;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v0

    iget-object v2, p0, Lggw;->i:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Lgrx;

    iget v2, v2, Lgrx;->h:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v3, p0, Lggw;->e:Ldqx;

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

    iget-object v2, p0, Lggw;->m:Ldfa;

    iget-object v4, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v2, v4}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    iput-object v2, v3, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lggw;->m:Ldfa;

    iget-object v2, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, v3, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_3
    invoke-interface {v0}, Lkdz;->a()Lkea;

    move-result-object v0

    iget-object v1, p0, Lggw;->a:Lken;

    invoke-static {}, Lbze;->o()Lkfh;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lken;->l(Lkea;Lkfh;)V

    invoke-virtual {p0}, Lggw;->c()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, p0, Lggw;->d:Lnph;

    new-instance v0, Lggv;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lggv;-><init>(Lggw;Lnph;Lbkc;[B[B[B)V

    return-object v0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lggw;->j:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    iget v1, p0, Lggw;->k:I

    int-to-long v1, v1

    sget-object v3, Lgyu;->d:Lgyu;

    invoke-virtual {v0, v3}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v0, v0, Lgyu;->g:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lggw;->b:Ljuw;

    new-instance v3, Lfzr;

    const/16 v4, 0x13

    invoke-direct {v3, p0, v4}, Lfzr;-><init>(Lggw;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v1, v2, v4}, Ljuw;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
