.class public final Lkjk;
.super Ljava/lang/Object;

# interfaces
.implements Lkol;


# instance fields
.field public final a:Lmws;

.field public final b:Ljava/util/Map;

.field public final synthetic c:Lkjl;


# direct methods
.method public constructor <init>(Lkjl;Lmws;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lkjk;->c:Lkjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkjk;->a:Lmws;

    iput-object p3, p0, Lkjk;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lkjk;->a:Lmws;

    invoke-virtual {v0}, Lmws;->r()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lkfg;->bD(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lkop;Lkkp;)V
    .locals 3

    invoke-static {p1}, Lkjl;->g(Lkop;)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lkjk;->c:Lkjl;

    iget-object v0, v0, Lkjl;->a:Lkbc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkjk;->a:Lmws;

    invoke-virtual {v0, p1}, Lmws;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Lkfg;->bi(Lkkp;)V

    iget-object p2, p0, Lkjk;->c:Lkjl;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lkjk;->c:Lkjl;

    iget-boolean v1, v0, Lkjl;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkjl;->i(J)V

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lkjk;->c:Lkjl;

    iget-object p1, p1, Lkjl;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
