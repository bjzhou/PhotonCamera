.class public final Lvo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final a:Ljava/util/concurrent/CancellationException;


# instance fields
.field public final b:Ljava/util/ArrayDeque;

.field public c:Z

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    sput-object v0, Lvo;->a:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lvo;->b:Ljava/util/ArrayDeque;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lvo;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    iget-object v0, p0, Lvo;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvo;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lvo;->d:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lvo;->d:J

    iget-object p1, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lvn;

    iget-object v2, v1, Lvn;->a:Ljava/lang/Object;

    check-cast v2, Lopa;

    invoke-virtual {v2}, Lopa;->n()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lopc;

    if-nez v2, :cond_2

    iget-object v2, v1, Lvn;->a:Ljava/lang/Object;

    invoke-interface {v2}, Looz;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lvo;->d:J

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-wide v4, p0, Lvo;->d:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lvo;->d:J

    new-instance v4, Lvm;

    invoke-direct {v4, p0, v2, v3}, Lvm;-><init>(Lvo;J)V

    iput-object v4, v1, Lvn;->b:Ljava/lang/Object;

    iget-object v1, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    move-object p2, p1

    goto :goto_2

    :cond_4
    goto :goto_2

    :cond_5
    :goto_2
    monitor-exit v0

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvn;

    iget-object v0, p2, Lvn;->a:Ljava/lang/Object;

    iget-object p2, p2, Lvn;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p2}, Loku;->e(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lvo;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvo;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lvo;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvn;

    iget-object v1, v1, Lvn;->a:Ljava/lang/Object;

    invoke-static {v1}, Lonm;->p(Looz;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvo;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
