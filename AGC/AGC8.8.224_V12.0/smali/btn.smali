.class public final Lbtn;
.super Ljava/lang/Object;

# interfaces
.implements Lbtl;


# instance fields
.field private final a:Ljava/io/File;

.field private b:Lbpj;

.field private final c:Ldne;

.field private final d:Ldne;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldne;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ldne;-><init>([B[B[B)V

    iput-object v0, p0, Lbtn;->d:Ldne;

    iput-object p1, p0, Lbtn;->a:Ljava/io/File;

    new-instance p1, Ldne;

    invoke-direct {p1, v1}, Ldne;-><init>([C)V

    iput-object p1, p0, Lbtn;->c:Ldne;

    return-void
.end method

.method private final declared-synchronized c()Lbpj;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbtn;->b:Lbpj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbtn;->a:Ljava/io/File;

    const-wide/32 v1, 0xfa00000

    invoke-static {v0, v1, v2}, Lbpj;->f(Ljava/io/File;J)Lbpj;

    move-result-object v0

    iput-object v0, p0, Lbtn;->b:Lbpj;

    :cond_0
    iget-object v0, p0, Lbtn;->b:Lbpj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lbqb;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lbtn;->c:Ldne;

    invoke-virtual {v0, p1}, Ldne;->E(Lbqb;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lbtn;->c()Lbpj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lbpj;->h(Ljava/lang/String;)Lbkb;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbkb;->f()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x5

    const-string v2, "DiskLruCacheWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "Unable to get from disk cache"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final b(Lbqb;Lva;)V
    .locals 4

    iget-object v0, p0, Lbtn;->c:Ldne;

    invoke-virtual {v0, p1}, Ldne;->E(Lbqb;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbtn;->d:Ldne;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmrj;

    if-nez v1, :cond_1

    iget-object v1, v0, Ldne;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lbkb;

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    check-cast v1, Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmrj;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    new-instance v1, Lmrj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmrj;-><init>([B)V

    :cond_0
    iget-object v2, v0, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_1
    :goto_0
    iget v2, v1, Lmrj;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmrj;->a:I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v0, v1, Lmrj;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-direct {p0}, Lbtn;->c()Lbpj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbpj;->h(Ljava/lang/String;)Lbkb;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Lbpj;->e(Ljava/lang/String;)Lbph;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lbph;->d()Ljava/io/File;

    move-result-object v1

    iget-object v2, p2, Lva;->a:Ljava/lang/Object;

    iget-object v3, p2, Lva;->c:Ljava/lang/Object;

    iget-object p2, p2, Lva;->b:Ljava/lang/Object;

    check-cast p2, Lbqf;

    invoke-interface {v2, v3, v1, p2}, Lbpt;->a(Ljava/lang/Object;Ljava/io/File;Lbqf;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lbph;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :try_start_7
    invoke-virtual {v0}, Lbph;->b()V

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {v0}, Lbph;->b()V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Had two simultaneous puts for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    iget-object p2, p0, Lbtn;->d:Ldne;

    :goto_1
    invoke-virtual {p2, p1}, Ldne;->F(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_8
    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_5
    :goto_2
    iget-object p2, p0, Lbtn;->d:Ldne;

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lbtn;->d:Ldne;

    invoke-virtual {v0, p1}, Ldne;->F(Ljava/lang/String;)V

    throw p2

    :catchall_3
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
