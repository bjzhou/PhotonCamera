.class public abstract Lbai;
.super Ljava/lang/Object;

# interfaces
.implements Lazz;


# instance fields
.field public final a:Lbav;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:Ljava/lang/Object;

.field public e:Lbah;


# direct methods
.method public constructor <init>(Lbav;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbai;->a:Lbav;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbai;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbai;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lbai;->d:Ljava/lang/Object;

    iget-object v0, p0, Lbai;->e:Lbah;

    invoke-virtual {p0, v0, p1}, Lbai;->e(Lbah;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Lbcj;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
.end method

.method public final d(Lbah;)V
    .locals 1

    iget-object v0, p0, Lbai;->e:Lbah;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lbai;->e:Lbah;

    iget-object v0, p0, Lbai;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lbai;->e(Lbah;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(Lbah;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lbai;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lbai;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lbai;->b:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lbad;

    iget-object v0, v0, Lbad;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lbcj;

    iget-object v3, v3, Lbcj;->a:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lbad;

    invoke-virtual {v4, v3}, Lbad;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbcj;

    invoke-static {}, Laxq;->a()Laxq;

    sget v3, Lbae;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraints met for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    check-cast p1, Lbad;

    iget-object p1, p1, Lbad;->a:Lbab;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Lbab;->e(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_6
    :goto_2
    iget-object p2, p0, Lbai;->b:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lbad;

    iget-object v0, v0, Lbad;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    check-cast p1, Lbad;

    iget-object p1, p1, Lbad;->a:Lbab;

    if-eqz p1, :cond_7

    invoke-interface {p1, p2}, Lbab;->f(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method
