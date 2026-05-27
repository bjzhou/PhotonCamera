.class public Ljuf;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private final a:Ljuf;

.field private final b:Ljve;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljvh;->a:Ljve;

    invoke-direct {p0, v0}, Ljuf;-><init>(Ljve;)V

    return-void
.end method

.method private constructor <init>(Ljuf;Ljve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljuf;->b:Ljve;

    iput-object p1, p0, Ljuf;->a:Ljuf;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljuf;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljuf;->b:Ljve;

    const/4 p1, 0x0

    iput-object p1, p0, Ljuf;->a:Ljuf;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljuf;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljuf;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Ljuf;
    .locals 2

    new-instance v0, Ljuf;

    iget-object v1, p0, Ljuf;->b:Ljve;

    invoke-direct {v0, p0, v1}, Ljuf;-><init>(Ljuf;Ljve;)V

    invoke-virtual {p0, v0}, Ljuf;->d(Lkad;)V

    return-object v0
.end method

.method public close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljuf;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Ljuf;->c:Ljava/util/List;

    iget-object v1, p0, Ljuf;->a:Ljuf;

    if-eqz v1, :cond_1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Ljuf;->c:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Ljuf;->b:Ljve;

    invoke-interface {v1, v0}, Ljve;->b(Ljava/lang/Iterable;)V

    return-void

    :cond_2
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final d(Lkad;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljuf;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljuf;->b:Ljve;

    invoke-interface {v0, p1}, Ljve;->a(Lkad;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
