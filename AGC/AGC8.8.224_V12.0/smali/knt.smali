.class public final Lknt;
.super Ljava/lang/Object;

# interfaces
.implements Lknm;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lkns;

.field private final c:Lknq;


# direct methods
.method public constructor <init>(Lknq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lknt;->a:Ljava/lang/Object;

    new-instance v0, Lkns;

    invoke-direct {v0}, Lkns;-><init>()V

    iput-object v0, p0, Lknt;->b:Lkns;

    iput-object p1, p0, Lknt;->c:Lknq;

    iput-object p0, p1, Lknq;->b:Lknm;

    invoke-virtual {p0}, Lknt;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lknt;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object v1, p0, Lknt;->c:Lknq;

    iget-object v2, p0, Lknt;->b:Lkns;

    iget-object v1, v1, Lknq;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkte;

    iget-object v4, v3, Lkte;->d:Ljava/lang/Object;

    check-cast v4, Lknf;

    invoke-virtual {v4, v2, v3}, Lknf;->b(Lkns;Lkte;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
