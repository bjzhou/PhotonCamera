.class public final Ldfy;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/util/Range;


# instance fields
.field public final b:Ldgr;

.field public c:Lmqp;

.field public d:Lmqp;

.field private final e:Ldgq;

.field private final f:Ldgq;

.field private final g:Ldfr;

.field private final h:Z

.field private i:Lmqp;

.field private j:Z

.field private final k:Lilz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, -0x3fcc000000000000L    # -20.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Ldfy;->a:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Ldfr;Ldhi;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldfw;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldfw;-><init>(Ldfy;I)V

    iput-object v0, p0, Ldfy;->e:Ldgq;

    new-instance v1, Ldfw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldfw;-><init>(Ldfy;I)V

    iput-object v1, p0, Ldfy;->f:Ldgq;

    sget-object v3, Lmpx;->a:Lmpx;

    iput-object v3, p0, Ldfy;->c:Lmqp;

    iput-object v3, p0, Ldfy;->i:Lmqp;

    iput-object v3, p0, Ldfy;->d:Lmqp;

    iput-boolean v2, p0, Ldfy;->j:Z

    iput-object p1, p0, Ldfy;->g:Ldfr;

    sget-object p1, Ldgv;->d:Ldhj;

    invoke-interface {p2, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Ldfy;->h:Z

    new-instance p1, Lilz;

    const v2, 0x3c75c28f    # 0.015f

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lilz;-><init>(F[B)V

    iput-object p1, p0, Ldfy;->k:Lilz;

    invoke-interface {p2}, Ldhi;->e()V

    new-instance p1, Ldgr;

    invoke-interface {p2}, Ldhi;->e()V

    const-wide/16 v2, 0x3e8

    invoke-direct {p1, v0, v1, v2, v3}, Ldgr;-><init>(Ldgq;Ldgq;J)V

    iput-object p1, p0, Ldfy;->b:Ldgr;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(FFJ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldfy;->h:Z

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Ldfy;->g:Ldfr;

    invoke-virtual {v0}, Ldfr;->a()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcvm;

    iget-object v1, v1, Lcvm;->c:Ljava/lang/Object;

    check-cast v1, Ldxl;

    invoke-virtual {v1}, Ldxl;->b()Lgrw;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Ldfy;->k:Lilz;

    iget-object v3, v1, Lgrw;->q:[Lgrz;

    iget-object v4, v1, Lgrw;->o:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lilz;->a([Lgrz;Landroid/graphics/Rect;)Z

    move-result v2

    iput-boolean v2, p0, Ldfy;->j:Z

    iget-object v2, p0, Ldfy;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcvm;

    iget-object v0, v0, Lcvm;->b:Ljava/lang/Object;

    iget-object v2, p0, Ldfy;->i:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgrw;

    check-cast v0, Lfjx;

    invoke-virtual {v0, v2, v1}, Lfjx;->a(Lgrw;Lgrw;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldfy;->d:Lmqp;

    :cond_2
    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldfy;->i:Lmqp;

    new-instance v0, Ldfx;

    iget-boolean v1, p0, Ldfy;->j:Z

    invoke-direct {v0, p1, p2, v1}, Ldfx;-><init>(FFZ)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Ldfy;->c:Lmqp;

    iget-object p1, p0, Ldfy;->b:Ldgr;

    invoke-virtual {p1}, Ldgr;->c()Z

    move-result p1

    iget-object p2, p0, Ldfy;->b:Ldgr;

    invoke-virtual {p2, p3, p4}, Ldgr;->b(J)V

    iget-object p2, p0, Ldfy;->b:Ldgr;

    invoke-virtual {p2}, Ldgr;->c()Z

    move-result p2

    if-eq p2, p1, :cond_3

    iget-object p1, p0, Ldfy;->b:Ldgr;

    invoke-virtual {p1}, Ldgr;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldfy;->c:Lmqp;

    iget-object v0, p0, Ldfy;->b:Ldgr;

    invoke-virtual {v0}, Ldgr;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
