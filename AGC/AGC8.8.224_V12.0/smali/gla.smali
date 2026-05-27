.class public final Lgla;
.super Ljava/lang/Object;

# interfaces
.implements Lglf;


# instance fields
.field public final a:Lkaq;

.field public b:I

.field public c:Ljava/util/concurrent/CountDownLatch;

.field public final d:Ljvk;

.field private e:Z

.field private final f:Ldhi;

.field private g:F

.field private h:F

.field private final i:Lnow;

.field private j:Lnou;

.field private k:Ljava/lang/Float;

.field private l:Ljava/lang/Float;

.field private m:Ljava/lang/Float;

.field private n:Ljava/lang/Float;

.field private o:Ljava/lang/Float;

.field private p:Ljava/lang/Float;

.field private q:Ljava/lang/Float;

.field private r:Lkli;

.field private s:Ljvs;

.field private t:Z

.field private final u:Ljvk;

.field private final v:Ldqx;


# direct methods
.method public constructor <init>(Ldhi;Ldqx;Lnow;Lkap;[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lgla;->e:Z

    new-instance p6, Ljvk;

    invoke-static {}, Lgla;->r()Lgkz;

    move-result-object v0

    invoke-direct {p6, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p6, p0, Lgla;->d:Ljvk;

    new-instance p6, Ljvk;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p6, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p6, p0, Lgla;->u:Ljvk;

    iput-object p1, p0, Lgla;->f:Ldhi;

    sget-object p6, Ldhh;->a:Ldhj;

    invoke-interface {p1}, Ldhi;->c()V

    iput-object p2, p0, Lgla;->v:Ldqx;

    iput-object p3, p0, Lgla;->i:Lnow;

    const-string p1, "DualEvCtrl"

    invoke-interface {p4, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgla;->a:Lkaq;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lgla;->g:F

    iput v0, p0, Lgla;->h:F

    iput p5, p0, Lgla;->b:I

    return-void
.end method

.method private static n(F)F
    .locals 2

    const v0, 0x3cf5c28f    # 0.03f

    const v1, 0x3f7851ec    # 0.97f

    invoke-static {p0, v0, v1}, Lnsy;->U(FFF)F

    move-result p0

    return p0
.end method

.method private final declared-synchronized o(F)F
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lgla;->p()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Lnsy;->U(FFF)F

    move-result p1

    const/high16 v1, -0x40800000    # -1.0f

    add-float/2addr p1, v1

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final p()F
    .locals 1

    iget-boolean v0, p0, Lgla;->e:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    return v0

    :cond_0
    const v0, 0x418f851f    # 17.94f

    return v0
.end method

.method private final declared-synchronized q(F)F
    .locals 4

    monitor-enter p0

    float-to-double v0, p1

    :try_start_0
    invoke-direct {p0}, Lgla;->p()F

    move-result p1

    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float v0, v0

    const/high16 v1, -0x40800000    # -1.0f

    add-float/2addr p1, v1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static r()Lgkz;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lgkz;->a(FFFI)Lgkz;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized s(FFF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgla;->n:Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgla;->o:Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p0, Lgla;->p:Ljava/lang/Float;

    div-float/2addr p2, p1

    invoke-direct {p0, p2}, Lgla;->o(F)F

    move-result p1

    invoke-static {p1}, Lgla;->n(F)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    iget p3, p0, Lgla;->h:F

    invoke-static {p3}, Lgla;->n(F)F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lgla;->q:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static t(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(FF)Lgkz;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgla;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Lgla;->r()Lgkz;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lgla;->r:Lkli;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lgla;->t(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lgla;->t(F)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lkli;->a()F

    move-result v0

    iget-object v1, p0, Lgla;->r:Lkli;

    invoke-interface {v1}, Lkli;->e()I

    move-result v1

    iget-object v2, p0, Lgla;->r:Lkli;

    invoke-interface {v2}, Lkli;->d()I

    move-result v2

    int-to-float v1, v1

    mul-float v1, v1, v0

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v3, p0, Lgla;->n:Ljava/lang/Float;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lgla;->o:Ljava/lang/Float;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lgla;->p:Ljava/lang/Float;

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lgla;->q:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lgla;->f:Ldhi;

    sget-object v4, Ldhb;->a:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-eqz v3, :cond_5

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-double p1, v1

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lgla;->n:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p1

    iget-object v1, p0, Lgla;->o:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p1

    iget-object v2, p0, Lgla;->p:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p1

    invoke-static {v0, v1, v2, p2}, Lgkz;->a(FFFI)Lgkz;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-double v2, v1

    :try_start_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr v1, v0

    float-to-double v2, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lgla;->q:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lgla;->q(F)F

    move-result v0

    iget-object v1, p0, Lgla;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p1

    mul-float v0, v0, v1

    iget-object p1, p0, Lgla;->l:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float p1, v0, p1

    iget-object v2, p0, Lgla;->m:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p1

    if-nez p2, :cond_6

    const/4 p2, -0x1

    :cond_6
    invoke-static {v1, v0, v2, p2}, Lgkz;->a(FFFI)Lgkz;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :goto_1
    :try_start_3
    iget-object p1, p0, Lgla;->k:Ljava/lang/Float;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lgla;->l:Ljava/lang/Float;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lgla;->m:Ljava/lang/Float;

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p0, Lgla;->l:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lgla;->m:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lgla;->s(FFF)V

    invoke-static {}, Lgla;->r()Lgkz;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_9
    :goto_2
    :try_start_4
    invoke-static {}, Lgla;->r()Lgkz;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized b()Lgld;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgla;->k:Ljava/lang/Float;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_2

    iget-object v2, p0, Lgla;->l:Ljava/lang/Float;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lgla;->m:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lgla;->l:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lgla;->m:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    div-float/2addr v2, v0

    iput v1, p0, Lgla;->g:F

    invoke-direct {p0, v2}, Lgla;->o(F)F

    move-result v0

    iput v0, p0, Lgla;->h:F

    iget v1, p0, Lgla;->b:I

    if-lez v1, :cond_1

    const v1, 0x3da3d70a    # 0.08f

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2}, Lnsy;->U(FFF)F

    move-result v0

    iput v0, p0, Lgla;->h:F

    :cond_1
    iget v1, p0, Lgla;->g:F

    invoke-static {v1, v0}, Lgld;->a(FF)Lgld;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0}, Lgld;->a(FF)Lgld;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljvs;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgla;->d:Ljvk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljvs;
    .locals 1

    iget-object v0, p0, Lgla;->u:Ljvk;

    return-object v0
.end method

.method public final declared-synchronized e()Lnhr;
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnhr;->h:Lnhr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-boolean v1, p0, Lgla;->t:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lgla;->n:Ljava/lang/Float;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lgla;->o:Ljava/lang/Float;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lgla;->p:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lgla;->o:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lgla;->p:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lgla;->d:Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Lgkz;

    iget-object v5, v0, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v6, v5

    check-cast v6, Lnhr;

    iget v7, v6, Lnhr;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lnhr;->a:I

    iput v1, v6, Lnhr;->b:F

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v5, v1

    check-cast v5, Lnhr;

    iget v6, v5, Lnhr;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Lnhr;->a:I

    iput v2, v5, Lnhr;->c:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnhr;

    iget v5, v2, Lnhr;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Lnhr;->a:I

    iput v3, v2, Lnhr;->d:F

    iget v2, v4, Lgkz;->a:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v3, v1

    check-cast v3, Lnhr;

    iget v5, v3, Lnhr;->a:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v3, Lnhr;->a:I

    iput v2, v3, Lnhr;->e:F

    iget v2, v4, Lgkz;->b:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v3, v1

    check-cast v3, Lnhr;

    iget v5, v3, Lnhr;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v3, Lnhr;->a:I

    iput v2, v3, Lnhr;->f:F

    iget v2, v4, Lgkz;->c:F

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_6
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnhr;

    iget v3, v1, Lnhr;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Lnhr;->a:I

    iput v2, v1, Lnhr;->g:F

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnhr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_7
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnhr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Lnou;
    .locals 3

    iget-object v0, p0, Lgla;->j:Lnou;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lgla;->i:Lnow;

    new-instance v1, Lbdj;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lbdj;-><init>(Lgla;I)V

    invoke-interface {v0, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lgla;->j:Lnou;

    return-object v0
.end method

.method public final declared-synchronized g()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lgla;->b:I

    invoke-virtual {p0}, Lgla;->k()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lgla;->a:Lkaq;

    iget v2, p0, Lgla;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting dual ev (touchCounter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgla;->h()V

    iput-boolean v0, p0, Lgla;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgla;->d:Ljvk;

    invoke-static {}, Lgla;->r()Lgkz;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgla;->k:Ljava/lang/Float;

    iput-object v0, p0, Lgla;->l:Ljava/lang/Float;

    iput-object v0, p0, Lgla;->m:Ljava/lang/Float;

    iput-object v0, p0, Lgla;->n:Ljava/lang/Float;

    iput-object v0, p0, Lgla;->o:Ljava/lang/Float;

    iput-object v0, p0, Lgla;->p:Ljava/lang/Float;

    iput-object v0, p0, Lgla;->q:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgla;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lgla;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgla;->b:I

    iget-object v2, p0, Lgla;->a:Lkaq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tapped to initiate dual ev (touchCounter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgla;->h()V

    iput-boolean v1, p0, Lgla;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Lkli;FFF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lgla;->r:Lkli;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lgla;->e:Z

    iget-object v0, p0, Lgla;->f:Ldhi;

    sget-object v1, Ldhb;->c:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgla;->r:Lkli;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgla;->r:Lkli;

    invoke-interface {v0}, Lkli;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgla;->r:Lkli;

    invoke-interface {v0}, Lkli;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40600000    # 3.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iput-boolean v1, p0, Lgla;->e:Z

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lgla;->k:Ljava/lang/Float;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lgla;->l:Ljava/lang/Float;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lgla;->m:Ljava/lang/Float;

    iget-object p1, p0, Lgla;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    iget-object p1, p0, Lgla;->u:Ljvk;

    div-float/2addr p3, p2

    invoke-direct {p0, p3}, Lgla;->o(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljvk;->bn(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgla;->s:Ljvs;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgle;

    iget-boolean v0, v0, Lgle;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgla;->s:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgle;

    iget-boolean v0, v0, Lgle;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l(Lcdi;Ljvs;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lgla;->s:Ljvs;

    invoke-virtual {p1}, Lcdi;->h()Ljuf;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljvs;

    iget-object v0, p0, Lgla;->v:Ldqx;

    iget-object v1, v0, Ldqx;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    iget-object v0, v0, Ldqx;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    invoke-static {p2}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object p2

    new-instance v0, Lgdl;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lgdl;-><init>(Lgla;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p2, v0, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m()V
    .locals 0

    return-void
.end method
