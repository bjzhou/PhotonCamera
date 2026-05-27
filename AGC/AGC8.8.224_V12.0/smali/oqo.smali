.class public abstract Loqo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Loqh;
.implements Loxh;


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field private a:I

.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Loqo;->b:J

    const/4 p1, -0x1

    iput p1, p0, Loqo;->a:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Loqo;->a:I

    return v0
.end method

.method public final declared-synchronized c(JLoqp;Loqq;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqo;->_heap:Ljava/lang/Object;

    sget-object v1, Loqr;->a:Loxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    const/4 p1, 0x2

    return p1

    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p3}, Loxg;->b()Loxh;

    move-result-object v0

    check-cast v0, Loqo;

    invoke-virtual {p4}, Loqq;->t()Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    :try_start_4
    iput-wide p1, p3, Loqp;->a:J

    goto :goto_1

    :cond_2
    iget-wide v3, v0, Loqo;->b:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move-wide p1, v3

    :goto_0
    iget-wide v3, p3, Loqp;->a:J

    sub-long v5, p1, v3

    cmp-long p4, v5, v1

    if-lez p4, :cond_4

    iput-wide p1, p3, Loqp;->a:J

    goto :goto_1

    :cond_4
    move-wide p1, v3

    :goto_1
    iget-wide v3, p0, Loqo;->b:J

    sub-long/2addr v3, p1

    cmp-long p4, v3, v1

    if-gez p4, :cond_5

    iput-wide p1, p0, Loqo;->b:J

    :cond_5
    sget-boolean p1, Lopw;->a:Z

    invoke-interface {p0, p3}, Loxh;->e(Loxg;)V

    iget-object p1, p3, Loxg;->b:[Loxh;

    if-nez p1, :cond_6

    const/4 p1, 0x4

    new-array p1, p1, [Loxh;

    iput-object p1, p3, Loxg;->b:[Loxh;

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Loxg;->a()I

    move-result p2

    array-length p4, p1

    if-lt p2, p4, :cond_7

    invoke-virtual {p3}, Loxg;->a()I

    move-result p2

    add-int/2addr p2, p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, [Loxh;

    iput-object p1, p3, Loxg;->b:[Loxh;

    :cond_7
    :goto_2
    invoke-virtual {p3}, Loxg;->a()I

    move-result p2

    add-int/lit8 p4, p2, 0x1

    invoke-virtual {p3, p4}, Loxg;->e(I)V

    aput-object p0, p1, p2

    invoke-interface {p0, p2}, Loxh;->f(I)V

    invoke-virtual {p3, p2}, Loxg;->f(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cN()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loqo;->_heap:Ljava/lang/Object;

    sget-object v1, Loqr;->a:Loxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v1, v0, Loqp;

    if-eqz v1, :cond_1

    check-cast v0, Loqp;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p0}, Loxh;->d()Loxg;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Loxh;->b()I

    move-result v1

    sget-boolean v2, Lopw;->a:Z

    invoke-virtual {v0, v1}, Loxg;->d(I)Loxh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    :goto_1
    sget-object v0, Loqr;->a:Loxb;

    iput-object v0, p0, Loqo;->_heap:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Loqo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Loqo;->b:J

    iget-wide v2, p1, Loqo;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d()Loxg;
    .locals 2

    iget-object v0, p0, Loqo;->_heap:Ljava/lang/Object;

    instance-of v1, v0, Loxg;

    if-eqz v1, :cond_0

    check-cast v0, Loxg;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(Loxg;)V
    .locals 2

    iget-object v0, p0, Loqo;->_heap:Ljava/lang/Object;

    sget-object v1, Loqr;->a:Loxb;

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Loqo;->_heap:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Loqo;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Loqo;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delayed[nanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
