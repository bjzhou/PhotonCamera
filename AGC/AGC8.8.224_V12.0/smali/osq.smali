.class public final Losq;
.super Losm;


# instance fields
.field private final b:I

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:[Ljava/lang/Object;

.field private e:I

.field private final f:Loon;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Losm;-><init>()V

    iput p1, p0, Losq;->b:I

    if-lez p1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    sget-object v1, Losn;->a:Loxb;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Losq;->d:[Ljava/lang/Object;

    invoke-static {v2}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Losq;->f:Loon;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Losq;->f:Loon;

    iget v1, v1, Loon;->b:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Losp;->u()Losy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Losn;->d:Loxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Losq;->d:[Ljava/lang/Object;

    iget v3, p0, Losq;->e:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    aput-object v5, v2, v3

    iget-object v2, p0, Losq;->f:Loon;

    add-int/lit8 v3, v1, -0x1

    iput v3, v2, Loon;->b:I

    sget-object v2, Losn;->d:Loxb;

    iget v3, p0, Losq;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_4

    :goto_0
    invoke-virtual {p0}, Losp;->v()Loti;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Loti;->i()Loxb;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-boolean v2, Lopw;->a:Z

    invoke-virtual {v3}, Loti;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v3

    goto :goto_0

    :cond_4
    :goto_1
    sget-object v3, Losn;->d:Loxb;

    if-eq v2, v3, :cond_5

    instance-of v3, v2, Losy;

    if-nez v3, :cond_5

    iget-object v3, p0, Losq;->f:Loon;

    iput v1, v3, Loon;->b:I

    iget-object v3, p0, Losq;->d:[Ljava/lang/Object;

    iget v8, p0, Losq;->e:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    :cond_5
    iget v1, p0, Losq;->e:I

    add-int/2addr v1, v6

    iget-object v2, p0, Losq;->d:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Losq;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Loti;->g()V

    :cond_6
    return-object v4

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method protected final e(Z)V
    .locals 7

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Losq;->f:Loon;

    iget v1, v1, Loon;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Losq;->d:[Ljava/lang/Object;

    iget v5, p0, Losq;->e:I

    aget-object v6, v4, v5

    sget-object v6, Losn;->a:Loxb;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    array-length v4, v4

    rem-int/2addr v5, v4

    iput v5, p0, Losq;->e:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Losq;->f:Loon;

    iput v2, v1, Loon;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0, p1}, Losm;->e(Z)V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected final g(Lote;)Z
    .locals 1

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Losm;->g(Lote;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final i()Z
    .locals 1

    iget-object v0, p0, Losq;->f:Loon;

    iget v0, v0, Loon;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0}, Losm;->j()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Losm;->l()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected final o(Loti;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-super {p0, p1}, Losm;->o(Loti;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Losq;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Losq;->f:Loon;

    iget v1, v1, Loon;->b:I

    invoke-virtual {p0}, Losp;->u()Losy;

    move-result-object v2

    if-nez v2, :cond_9

    iget v2, p0, Losq;->b:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Losq;->f:Loon;

    add-int/lit8 v4, v1, 0x1

    iput v4, v2, Loon;->b:I

    move-object v2, v3

    goto :goto_0

    :cond_0
    sget-object v2, Losn;->c:Loxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_5

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Losp;->d()Lotg;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    instance-of v4, v1, Losy;

    if-eqz v4, :cond_4

    iget-object p1, p0, Losq;->f:Loon;

    iput v2, p1, Loon;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_4
    :try_start_2
    invoke-interface {v1, p1}, Lotg;->d(Ljava/lang/Object;)Loxb;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-boolean v3, Lopw;->a:Z

    iget-object v3, p0, Losq;->f:Loon;

    iput v2, v3, Loon;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v1, p1}, Lotg;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lotg;->cX()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    :try_start_3
    iget v4, p0, Losq;->b:I

    if-ge v1, v4, :cond_8

    iget-object v3, p0, Losq;->d:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v1, v3, :cond_7

    add-int/2addr v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Losq;->d:[Ljava/lang/Object;

    iget v7, p0, Losq;->e:I

    add-int/2addr v7, v5

    array-length v8, v6

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    sget-object v5, Losn;->a:Loxb;

    invoke-static {v4, v5, v1, v3}, Lljr;->au([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v4, p0, Losq;->d:[Ljava/lang/Object;

    iput v2, p0, Losq;->e:I

    :cond_7
    iget-object v2, p0, Losq;->d:[Ljava/lang/Object;

    iget v3, p0, Losq;->e:I

    add-int/2addr v3, v1

    array-length v1, v2

    rem-int/2addr v3, v1

    aput-object p1, v2, v3

    goto :goto_3

    :cond_8
    sget-boolean v2, Lopw;->a:Z

    iget-object v2, p0, Losq;->d:[Ljava/lang/Object;

    iget v4, p0, Losq;->e:I

    array-length v5, v2

    rem-int v6, v4, v5

    aput-object v3, v2, v6

    add-int/2addr v1, v4

    rem-int/2addr v1, v5

    aput-object p1, v2, v1

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v5

    iput v4, p0, Losq;->e:I

    :goto_3
    sget-object p1, Losn;->b:Loxb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected final t()Ljava/lang/String;
    .locals 4

    iget v0, p0, Losq;->b:I

    iget-object v1, p0, Losq;->f:Loon;

    iget v1, v1, Loon;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(buffer:capacity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",size="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final z()Z
    .locals 2

    iget-object v0, p0, Losq;->f:Loon;

    iget v0, v0, Loon;->b:I

    iget v1, p0, Losq;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
