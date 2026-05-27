.class public final Lwf;
.super Ljava/lang/Object;

# interfaces
.implements Lvz;
.implements Lvy;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lwg;

.field public c:Z

.field public final d:Louo;

.field private final e:Lqz;

.field private final f:Lopu;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private i:Lrx;

.field private j:Lrx;

.field private k:Z

.field private l:Z

.field private final m:Lnt;

.field private final n:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Lqz;Lnt;Lopu;Ljava/util/List;[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwf;->n:Ldqx;

    iput-object p2, p0, Lwf;->e:Lqz;

    iput-object p3, p0, Lwf;->m:Lnt;

    iput-object p4, p0, Lwf;->f:Lopu;

    iput-object p5, p0, Lwf;->g:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwf;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwf;->h:Ljava/util/List;

    sget-object p1, Lrp;->a:Lrp;

    invoke-static {p1}, Louy;->a(Ljava/lang/Object;)Louo;

    move-result-object p1

    iput-object p1, p0, Lwf;->d:Louo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onGraphStarting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwf;->d:Louo;

    sget-object v1, Lro;->a:Lro;

    invoke-interface {v0, v1}, Louo;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lwf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lwf;->c:Z

    iget-object v1, p0, Lwf;->b:Lwg;

    const/4 v2, 0x0

    iput-object v2, p0, Lwf;->b:Lwg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lwg;->a()V

    :cond_1
    new-instance v0, Lonk;

    invoke-direct {v0}, Lonk;-><init>()V

    new-instance v1, Lonk;

    invoke-direct {v1}, Lonk;-><init>()V

    iget-object v3, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lwf;->b:Lwg;

    iput-object v4, v0, Lonk;->a:Ljava/lang/Object;

    iget-object v4, p0, Lwf;->h:Ljava/util/List;

    invoke-static {v4}, Lljr;->aj(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lonk;->a:Ljava/lang/Object;

    iget-object v4, p0, Lwf;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    iget-object v3, p0, Lwf;->f:Lopu;

    new-instance v4, Lwa;

    invoke-direct {v4, v0, v1, p0, v2}, Lwa;-><init>(Lonk;Lonk;Lwf;Loku;)V

    const/4 v0, 0x3

    invoke-static {v3, v2, v4, v0}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c(Lrx;)V
    .locals 3

    iget-object v0, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lwf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lwf;->j:Lrx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lrx;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lrx;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object p1, p0, Lwf;->f:Lopu;

    new-instance v0, Lwc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwc;-><init>(Lwf;Loku;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v2}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lwf;->c:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwf;->f:Lopu;

    iget-object v4, p0, Lwf;->n:Ldqx;

    iget-object v4, v4, Ldqx;->e:Ljava/lang/Object;

    new-instance v5, Lwd;

    invoke-direct {v5, p0, p1, v3}, Lwd;-><init>(Lwf;Ljava/util/List;Loku;)V

    invoke-static {v1, v4, v5, v2}, Lone;->j(Lopu;Lola;Lomo;I)Lora;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lwf;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object p1, p0, Lwf;->f:Lopu;

    iget-object v0, p0, Lwf;->n:Ldqx;

    iget-object v0, v0, Ldqx;->e:Ljava/lang/Object;

    new-instance v1, Lwe;

    invoke-direct {v1, p0, v3}, Lwe;-><init>(Lwf;Loku;)V

    invoke-static {p1, v0, v1, v2}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final e(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx;

    iget-object v1, p0, Lwf;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lwf;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrw;

    invoke-interface {v4, v0}, Lrw;->a(Lrx;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lrx;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lrx;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrw;

    invoke-interface {v3, v0}, Lrw;->a(Lrx;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lwf;->f:Lopu;

    iget-object v1, p0, Lwf;->n:Ldqx;

    iget-object v1, v1, Ldqx;->e:Ljava/lang/Object;

    new-instance v2, Lwb;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lwb;-><init>(Lwf;Loku;)V

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void
.end method

.method public final g()V
    .locals 10

    iget-object v0, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lwf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lwf;->k:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lwf;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lwf;->b:Lwg;

    iget-object v3, p0, Lwf;->h:Ljava/util/List;

    invoke-static {v3}, Lljr;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v1, :cond_a

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    iput-boolean v2, p0, Lwf;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#submit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_3
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lwf;->m:Lnt;

    monitor-enter v2

    monitor-exit v2

    iget-object v2, p0, Lwf;->e:Lqz;

    iget-object v2, v2, Lqz;->i:Ljava/util/Map;

    invoke-static {v8, v2}, Ljc;->b(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v2, p0, Lwf;->e:Lqz;

    iget-object v7, v2, Lqz;->g:Ljava/util/Map;

    const/4 v5, 0x0

    iget-object v9, p0, Lwf;->g:Ljava/util/List;

    move-object v4, v1

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lwg;->b(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v4, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v2, :cond_6

    :try_start_6
    iget-object v2, p0, Lwf;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lwf;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    iget-object v2, p0, Lwf;->h:Ljava/util/List;

    invoke-static {v2}, Lljr;->ai(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_5

    iput-boolean v0, p0, Lwf;->l:Z

    iput-boolean v0, p0, Lwf;->k:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v4

    return-void

    :cond_5
    move-object v3, v2

    goto :goto_2

    :cond_6
    :try_start_7
    iget-boolean v2, p0, Lwf;->l:Z

    if-nez v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to submit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", and the queue is not dirty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lwf;->k:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v4

    return-void

    :cond_7
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to submit "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " but the request queue or processor is dirty. Clearing dirty flag and attempting retry."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lwf;->l:Z

    iget-object v0, p0, Lwf;->b:Lwg;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_8

    move-object v1, v0

    :cond_8
    :goto_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v1

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v2, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-boolean v4, p0, Lwf;->l:Z

    if-nez v4, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to submit "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", and the queue is not dirty."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lwf;->k:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v2

    return-void

    :cond_9
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to submit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but the request queue or processor is dirty. Clearing dirty flag and attempting retry."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lwf;->l:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    monitor-exit v2

    throw v1

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_a
    :goto_3
    monitor-exit v0

    return-void

    :catchall_4
    move-exception v1

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public final h()V
    .locals 9

    iget-object v0, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lwf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lwf;->b:Lwg;

    iget-object v2, p0, Lwf;->j:Lrx;

    if-nez v2, :cond_1

    iget-object v2, p0, Lwf;->i:Lrx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    move-object v8, v2

    monitor-exit v0

    if-eqz v1, :cond_4

    if-eqz v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#startRepeating"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lwf;->m:Lnt;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lwf;->e:Lqz;

    iget-object v0, v0, Lqz;->i:Ljava/util/Map;

    invoke-static {v6, v0}, Ljc;->b(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v8}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lwf;->e:Lqz;

    iget-object v5, v0, Lqz;->g:Ljava/util/Map;

    const/4 v3, 0x1

    iget-object v7, p0, Lwf;->g:Ljava/util/List;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lwg;->b(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lwf;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lwf;->b:Lwg;

    if-ne v1, v2, :cond_2

    iput-object v8, p0, Lwf;->i:Lrx;

    iget-object v2, p0, Lwf;->j:Lrx;

    invoke-static {v2, v8}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lwf;->j:Lrx;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_0
    monitor-exit v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method
