.class public final Ldvc;
.super Ljava/lang/Object;

# interfaces
.implements Ldtd;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:[J

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    new-array p1, p1, [J

    iput-object p1, p0, Ldvc;->b:[J

    const/4 p1, 0x0

    iput p1, p0, Ldvc;->c:I

    iput p1, p0, Ldvc;->d:I

    return-void
.end method

.method private final j(J)I
    .locals 7

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ldvc;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_2

    add-int v3, v2, v1

    iget-object v4, p0, Ldvc;->b:[J

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ldvc;->f(I)I

    move-result v5

    aget-wide v5, v4, v5

    cmp-long v4, v5, p1

    if-gez v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    cmp-long v1, v5, p1

    if-lez v1, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v3

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(J)Ldti;
    .locals 1

    new-instance v0, Ldvb;

    invoke-direct {v0, p0, p1, p2}, Ldvb;-><init>(Ldvc;J)V

    return-object v0
.end method

.method public final b(J)I
    .locals 6

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ldvc;->i()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ldvc;->i()Z

    move-result v3

    xor-int/2addr v3, v2

    const-string v4, "Attempting to get latest timestamp on empty buffer!"

    invoke-static {v3, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ldvc;->e()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ldvc;->h(I)J

    move-result-wide v3

    monitor-exit v1

    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const-string v3, "Attempting to insert earlier timestamp into buffer!"

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget v1, p0, Ldvc;->c:I

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Ldvc;->b:[J

    array-length v5, v4

    rem-int/2addr v3, v5

    iput v3, p0, Ldvc;->c:I

    aput-wide p1, v4, v1

    iget p1, p0, Ldvc;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Ldvc;->d:I

    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final c(J)I
    .locals 6

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ldvc;->i()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Ldvc;->j(J)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ldvc;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ldvc;->h(I)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    if-eqz v1, :cond_1

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(J)I
    .locals 3

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ldvc;->i()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Ldvc;->j(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ldvc;->e()I

    move-result p2

    if-ge p1, p2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()I
    .locals 3

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ldvc;->d:I

    iget-object v2, p0, Ldvc;->b:[J

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(I)I
    .locals 3

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ldvc;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ldvc;->d:I

    iget-object v2, p0, Ldvc;->b:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Ldvc;->c:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, p1

    invoke-virtual {p0}, Ldvc;->e()I

    move-result p1

    rem-int/2addr v1, p1

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(J)I
    .locals 6

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Ldvc;->j(J)I

    move-result v1

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ldvc;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ldvc;->h(I)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Ldvc;->f(I)I

    move-result p1

    return p1

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(I)J
    .locals 4

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ldvc;->e()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Ldvc;->b:[J

    invoke-virtual {p0, p1}, Ldvc;->f(I)I

    move-result p1

    aget-wide v2, v1, p1

    monitor-exit v0

    return-wide v2

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to access illegal index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Ldvc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ldvc;->d:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
