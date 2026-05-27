.class public final Lcmg;
.super Lipe;


# instance fields
.field public a:Lklv;

.field b:Lcmf;

.field public c:Lfuz;

.field public d:Loxq;

.field private final e:Likh;

.field private final f:Ldbf;

.field private final g:Ljvs;

.field private final h:Lhyy;


# direct methods
.method public constructor <init>(Likh;Lhyy;Lklx;Ldbf;Lcdi;Ldhi;Ldna;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Lipe;-><init>()V

    iput-object p1, p0, Lcmg;->e:Likh;

    iput-object p2, p0, Lcmg;->h:Lhyy;

    iput-object p4, p0, Lcmg;->f:Ldbf;

    iput-object p8, p0, Lcmg;->g:Ljvs;

    invoke-virtual {p5}, Lcdi;->i()Ljuf;

    move-result-object p1

    new-instance p2, Lckj;

    const/4 p5, 0x6

    invoke-direct {p2, p0, p5}, Lckj;-><init>(Lcmg;I)V

    sget-object p5, Lnnv;->a:Lnnv;

    invoke-virtual {p4, p2, p5}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    invoke-virtual {p4}, Ldbf;->d()Lklv;

    move-result-object p1

    iput-object p1, p0, Lcmg;->a:Lklv;

    invoke-virtual {p7, p3, p6, p1}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Loxq;

    invoke-virtual {p3, p1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object p1

    invoke-virtual {p1}, Lklw;->f()I

    move-result p1

    invoke-direct {p2, p1}, Loxq;-><init>(I)V

    iput-object p2, p0, Lcmg;->d:Loxq;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/graphics/PointF;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcmg;->d:Loxq;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcmg;->e:Likh;

    iget-object v2, p0, Lcmg;->h:Lhyy;

    invoke-virtual {v2}, Lhyy;->a()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcmg;->f:Ldbf;

    invoke-virtual {v3}, Ldbf;->d()Lklv;

    move-result-object v3

    sget-object v4, Lklv;->a:Lklv;

    invoke-virtual {v3, v4}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcmg;->g:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v2, v1}, Likh;->a(Landroid/graphics/PointF;Landroid/graphics/RectF;Z)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcmg;->d:Loxq;

    invoke-virtual {v0, p1}, Loxq;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object p1, p0, Lcmg;->b:Lcmf;

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lcmd;

    iget-wide v0, v0, Lcmd;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    check-cast p1, Lcmd;

    iput-wide v0, p1, Lcmd;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v4

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
