.class abstract Lj$/util/stream/f;
.super Ljava/util/concurrent/CountedCompleter;


# static fields
.field private static final g:I


# instance fields
.field protected final a:Lj$/util/stream/F;

.field protected b:Lj$/util/Spliterator;

.field protected c:J

.field protected d:Lj$/util/stream/f;

.field protected e:Lj$/util/stream/f;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    sput v0, Lj$/util/stream/f;->g:I

    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/F;Lj$/util/Spliterator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p1, p0, Lj$/util/stream/f;->a:Lj$/util/stream/F;

    iput-object p2, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lj$/util/stream/f;->c:J

    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/f;Lj$/util/Spliterator;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    iget-object p2, p1, Lj$/util/stream/f;->a:Lj$/util/stream/F;

    iput-object p2, p0, Lj$/util/stream/f;->a:Lj$/util/stream/F;

    iget-wide p1, p1, Lj$/util/stream/f;->c:J

    iput-wide p1, p0, Lj$/util/stream/f;->c:J

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lj$/util/stream/f;->g:I

    return v0
.end method

.method public static g(J)J
    .locals 3

    sget v0, Lj$/util/stream/f;->g:I

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x1

    :goto_0
    return-wide p0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public compute()V
    .locals 9

    iget-object v0, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    iget-wide v3, p0, Lj$/util/stream/f;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lj$/util/stream/f;->g(J)J

    move-result-wide v3

    iput-wide v3, p0, Lj$/util/stream/f;->c:J

    :goto_0
    const/4 v5, 0x0

    move-object v6, p0

    :goto_1
    cmp-long v7, v1, v3

    if-lez v7, :cond_2

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v6, v1}, Lj$/util/stream/f;->e(Lj$/util/Spliterator;)Lj$/util/stream/f;

    move-result-object v2

    iput-object v2, v6, Lj$/util/stream/f;->d:Lj$/util/stream/f;

    invoke-virtual {v6, v0}, Lj$/util/stream/f;->e(Lj$/util/Spliterator;)Lj$/util/stream/f;

    move-result-object v7

    iput-object v7, v6, Lj$/util/stream/f;->e:Lj$/util/stream/f;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    if-eqz v5, :cond_1

    move-object v0, v1

    move-object v6, v2

    move-object v2, v7

    goto :goto_2

    :cond_1
    move-object v6, v7

    :goto_2
    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Ljava/util/concurrent/CountedCompleter;->fork()Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lj$/util/stream/f;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Lj$/util/stream/f;->f(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method protected final d()Lj$/util/stream/f;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Lj$/util/stream/f;

    return-object v0
.end method

.method protected abstract e(Lj$/util/Spliterator;)Lj$/util/stream/f;
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public getRawResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/f;->b:Lj$/util/Spliterator;

    iput-object p1, p0, Lj$/util/stream/f;->e:Lj$/util/stream/f;

    iput-object p1, p0, Lj$/util/stream/f;->d:Lj$/util/stream/f;

    return-void
.end method

.method protected final setRawResult(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
