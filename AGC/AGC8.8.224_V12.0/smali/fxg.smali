.class public final Lfxg;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field public final synthetic a:Lfxh;

.field private final b:Lcea;

.field private final c:Lgxl;

.field private final d:Lgqs;

.field private e:I

.field private f:Lkab;

.field private final g:Lfxf;

.field private final h:Lgqt;


# direct methods
.method public constructor <init>(Lfxh;Lgkr;Lfyy;Lcea;Lgqt;[B[B)V
    .locals 6

    iput-object p1, p0, Lfxg;->a:Lfxh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput p6, p0, Lfxg;->e:I

    iput-object p4, p0, Lfxg;->b:Lcea;

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfxg;->c:Lgxl;

    iput-object p5, p0, Lfxg;->h:Lgqt;

    new-instance p4, Lfxf;

    invoke-direct {p4, p0, p3}, Lfxf;-><init>(Lfxg;Lfyy;)V

    iput-object p4, p0, Lfxg;->g:Lfxf;

    iget-object p3, p1, Lfxh;->c:Lgqh;

    iget-object v2, p1, Lfxh;->d:Ljava/util/concurrent/Executor;

    invoke-static {p4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p4

    iget-object v5, p1, Lfxh;->b:Lkbc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    new-instance p1, Lfcd;

    invoke-direct {p1}, Lfcd;-><init>()V

    new-instance p7, Lhqr;

    move-object v0, p7

    move-object v1, p3

    move-object v3, p5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lhqr;-><init>(Lgqp;Ljava/util/concurrent/Executor;Lgqt;Lfcd;Lkbc;)V

    new-instance p5, Lgqs;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v2, p7

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lgqs;-><init>(Lgqj;Lhqr;Lmqp;Lfcd;[B)V

    iput-object p5, p7, Lhqr;->f:Ljava/lang/Object;

    iput-object p5, p0, Lfxg;->d:Lgqs;

    iget-object p1, p5, Lgqs;->f:Lfcd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    iput-wide p3, p1, Lfcd;->d:J

    iget-object p1, p5, Lgql;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p3, p5, Lgql;->d:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {p6}, Lmoz;->p(Z)V

    iget-object p3, p5, Lgql;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p3, 0x2

    iput p3, p5, Lgql;->d:I

    iget-object p3, p5, Lgql;->b:Lnph;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lenq;

    const/16 p4, 0x8

    invoke-direct {p1, p5, p2, p4}, Lenq;-><init>(Lgqs;Lgxl;I)V

    sget-object p4, Lnnv;->a:Lnnv;

    invoke-static {p3, p1, p4}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    invoke-interface {p2}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    check-cast p1, Lhjd;

    iput-wide p2, p1, Lhjd;->a:J

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 1

    iget v0, p0, Lfxg;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfxg;->e:I

    iget-object v0, p0, Lfxg;->b:Lcea;

    invoke-virtual {v0}, Lcea;->c()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lkab;->b(I)Lkab;

    move-result-object v0

    iput-object v0, p0, Lfxg;->f:Lkab;

    invoke-static {p1}, Lgqr;->a(Lkpb;)Lgqq;

    move-result-object p1

    iput-object p2, p1, Lgqq;->d:Lnou;

    iget-object p2, p0, Lfxg;->f:Lkab;

    if-nez p2, :cond_0

    sget-object p2, Lkab;->a:Lkab;

    :cond_0
    iput-object p2, p1, Lgqq;->c:Lkab;

    iget-object p2, p0, Lfxg;->a:Lfxh;

    iget-object p2, p2, Lfxh;->e:Landroid/graphics/Rect;

    iput-object p2, p1, Lgqq;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lgqq;->a()Lgqr;

    move-result-object p1

    iget-object p2, p0, Lfxg;->d:Lgqs;

    iget-object v0, p0, Lfxg;->c:Lgxl;

    invoke-virtual {p2, p1, v0}, Lgql;->b(Lgqr;Lgxl;)V

    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lfxg;->d:Lgqs;

    invoke-virtual {v0}, Lgql;->close()V

    iget v0, p0, Lfxg;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lfxg;->c:Lgxl;

    new-instance v1, Ldog;

    const-string v2, "LuckyShotReprocessingImageSaver closed without processing any Images."

    invoke-direct {v1, v2}, Ldog;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lgxl;->w(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
