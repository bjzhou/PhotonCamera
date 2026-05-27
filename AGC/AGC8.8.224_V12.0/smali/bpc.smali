.class final Lbpc;
.super Ljava/lang/Object;

# interfaces
.implements Lbyk;


# instance fields
.field final synthetic a:Lbpd;

.field private final b:Lbyw;


# direct methods
.method public constructor <init>(Lbpd;Lbyw;)V
    .locals 0

    iput-object p1, p0, Lbpc;->a:Lbpd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbpc;->b:Lbyw;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbpc;->a:Lbpd;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lbpc;->b:Lbyw;

    iget-object v1, v0, Lbyw;->a:Ljava/util/Set;

    invoke-static {v1}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbzk;

    invoke-interface {v2}, Lbzk;->l()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lbzk;->k()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lbzk;->c()V

    iget-boolean v3, v0, Lbyw;->c:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lbzk;->b()V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lbyw;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-void
.end method
