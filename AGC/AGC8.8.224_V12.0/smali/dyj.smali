.class public final Ldyj;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lgxt;

.field private b:Lkae;

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Bitmap;

.field private f:I


# direct methods
.method public constructor <init>(Lgxt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldyj;->d:Z

    iput-object p1, p0, Ldyj;->a:Lgxt;

    sget-object p1, Lkae;->c:Lkae;

    iput-object p1, p0, Ldyj;->b:Lkae;

    iput-boolean v0, p0, Ldyj;->c:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldyj;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldyj;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lkae;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldyj;->b:Lkae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldyj;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ldyj;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldyj;->e:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Landroid/graphics/Bitmap;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldyj;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Ldyj;->e:Landroid/graphics/Bitmap;

    iput p2, p0, Ldyj;->f:I

    iget-boolean p1, p0, Ldyj;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldyj;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lkae;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldyj;->b:Lkae;

    sget-object v1, Lkae;->c:Lkae;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkae;->b:Lkae;

    invoke-virtual {p1, v0}, Lkae;->a(Lkae;)I

    :cond_0
    iget-object v0, p0, Ldyj;->b:Lkae;

    sget-object v1, Lkae;->a:Lkae;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lkae;->a:Lkae;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :cond_1
    iput-object p1, p0, Ldyj;->b:Lkae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldyj;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldyj;->b:Lkae;

    invoke-virtual {v0}, Lkae;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
