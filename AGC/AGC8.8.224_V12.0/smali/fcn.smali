.class public final Lfcn;
.super Ljava/lang/Object;

# interfaces
.implements Lfdd;


# instance fields
.field private a:J

.field private final b:Lebl;

.field public final c:Lgzm;

.field private final d:Ljvs;

.field private final e:Ljvs;

.field private final f:Lgto;

.field private final g:Lebi;

.field private h:Z


# direct methods
.method public constructor <init>(Lebl;Ljvs;Ljvs;Lebi;Lgto;Lgzm;Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfcn;->a:J

    iput-object p1, p0, Lfcn;->b:Lebl;

    iput-object p6, p0, Lfcn;->c:Lgzm;

    iput-object p2, p0, Lfcn;->d:Ljvs;

    iput-object p3, p0, Lfcn;->e:Ljvs;

    iput-object p5, p0, Lfcn;->f:Lgto;

    iput-object p4, p0, Lfcn;->g:Lebi;

    sget-object p1, Ldhq;->a:Ldhk;

    invoke-interface {p7}, Ldhi;->g()V

    invoke-interface {p7}, Ldhi;->g()V

    return-void
.end method

.method private final declared-synchronized c(ZZLklv;ZZ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfcn;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfcn;->g:Lebi;

    iget-boolean v0, v0, Lebi;->f:Z

    if-eqz v0, :cond_6

    sget-object v0, Lklv;->a:Lklv;

    invoke-virtual {p3, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lfcn;->c:Lgzm;

    sget-object v2, Lgzd;->ao:Lgzs;

    invoke-interface {p3, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {v0}, Linb;->D(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lfcn;->f:Lgto;

    iget-boolean p3, p3, Lgto;->a:Z

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    :cond_2
    :goto_0
    invoke-static {p0, p1}, LAGC;->getAstroEnabled(Lfcn;Z)Z

    move-result p1

    iget-object p3, p0, Lfcn;->b:Lebl;

    if-eqz p1, :cond_3

    if-nez p5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3, v2}, Lebl;->b(Z)V

    and-int/2addr p1, p4

    and-int/2addr p2, p4

    iget-object p3, p0, Lfcn;->e:Ljvs;

    invoke-interface {p3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpg-float p3, p3, p4

    if-gez p3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p2

    iput-wide p2, p0, Lfcn;->a:J

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    iget-wide p3, p0, Lfcn;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, p3, v2

    if-lez v4, :cond_5

    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iget-wide v6, p0, Lfcn;->a:J

    sub-long/2addr v4, v6

    invoke-virtual {p3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p3

    const-wide/16 v4, 0x3

    cmp-long v6, p3, v4

    if-gez v6, :cond_5

    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    iput-wide v2, p0, Lfcn;->a:J

    move v1, p1

    const/4 p1, 0x0

    :goto_2
    iget-object p3, p0, Lfcn;->b:Lebl;

    xor-int/lit8 p4, p5, 0x1

    invoke-virtual {p3, v1, p2, p1, p4}, Lebl;->a(ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(ZZLklv;Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfcn;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lfcn;->b:Lebl;

    invoke-virtual {v0}, Lebl;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lfcn;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, -0x3b864000    # -999.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfcn;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x3f500000    # -5.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lfcn;->c(ZZLklv;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(ZLklv;Z)V
    .locals 6

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lfcn;->c(ZZLklv;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lfcn;->h:Z

    iget-object v0, p0, Lfcn;->b:Lebl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lebl;->a(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
