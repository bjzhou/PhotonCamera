.class public final Lkkh;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:Ljuf;

.field private final e:Lknb;

.field private final f:Lknb;

.field private final g:Z


# direct methods
.method public constructor <init>(Lknb;Lknb;Ljuf;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkkh;->c:Z

    iput-object p3, p0, Lkkh;->d:Ljuf;

    iput-object p1, p0, Lkkh;->e:Lknb;

    iput-object p2, p0, Lkkh;->f:Lknb;

    invoke-virtual {p3}, Ljuf;->b()Z

    move-result p1

    iput-boolean p1, p0, Lkkh;->c:Z

    iput v0, p0, Lkkh;->a:I

    iput v0, p0, Lkkh;->b:I

    iput-boolean p4, p0, Lkkh;->g:Z

    return-void
.end method

.method public static f(Lknb;Lknb;Z)Lkkh;
    .locals 2

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljuf;->d(Lkad;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_2
    new-instance v1, Lkkh;

    invoke-direct {v1, p0, p1, v0, p2}, Lkkh;-><init>(Lknb;Lknb;Ljuf;Z)V

    return-object v1
.end method

.method public static g()Lkkh;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, v1}, Lkkh;->f(Lknb;Lknb;Z)Lkkh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lkad;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkkh;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v2, p0, Lkkh;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lkkh;->a:I

    :cond_0
    xor-int/2addr v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lkkh;->c()V

    if-eqz v0, :cond_1

    new-instance v0, Lkkg;

    invoke-direct {v0, p0, v1}, Lkkg;-><init>(Lkkh;I)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Lkad;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkkh;->c:Z

    if-nez v0, :cond_0

    iget v1, p0, Lkkh;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkkh;->b:I

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lkkh;->c()V

    if-eqz v0, :cond_1

    new-instance v0, Lkkg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkkg;-><init>(Lkkh;I)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkkh;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lkkh;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lkkh;->a:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lkkh;->f:Lknb;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lknb;->a(Z)V

    :cond_1
    iget-boolean v0, p0, Lkkh;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lkkh;->e:Lknb;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lknb;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkkh;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Lkad;)V
    .locals 1

    iget-object v0, p0, Lkkh;->d:Ljuf;

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method
