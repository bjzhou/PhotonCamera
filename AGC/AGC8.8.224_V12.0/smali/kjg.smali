.class final Lkjg;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljuf;

.field final synthetic b:Lkiq;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lkoo;

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Landroid/os/Handler;

.field final synthetic h:Ljava/util/concurrent/Executor;

.field final synthetic i:Lkji;


# direct methods
.method public constructor <init>(Lkji;Ljuf;Lkiq;Ljava/util/List;Lkoo;Ljava/util/List;Ljava/util/List;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lkjg;->i:Lkji;

    iput-object p2, p0, Lkjg;->a:Ljuf;

    iput-object p3, p0, Lkjg;->b:Lkiq;

    iput-object p4, p0, Lkjg;->c:Ljava/util/List;

    iput-object p5, p0, Lkjg;->d:Lkoo;

    iput-object p6, p0, Lkjg;->e:Ljava/util/List;

    iput-object p7, p0, Lkjg;->f:Ljava/util/List;

    iput-object p8, p0, Lkjg;->g:Landroid/os/Handler;

    iput-object p9, p0, Lkjg;->h:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lkjg;->i:Lkji;

    iget-object v0, v0, Lkji;->b:Lkaq;

    iget-object v1, p0, Lkjg;->b:Lkiq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkjg;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to receive required outputs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lkjg;->b:Lkiq;

    invoke-virtual {p1}, Lkiq;->b()V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lkjg;->a:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkjg;->i:Lkji;

    iget-object v0, v0, Lkji;->b:Lkaq;

    iget-object v1, p0, Lkjg;->b:Lkiq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refusing to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Delayed streams were configured, but the session is now closed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, " "

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lkjg;->i:Lkji;

    iget-object p1, p1, Lkji;->b:Lkaq;

    iget-object v1, p0, Lkjg;->b:Lkiq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkjg;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Required outputs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " are available."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lkjg;->i:Lkji;

    iget-object v2, p0, Lkjg;->d:Lkoo;

    iget-object v3, p0, Lkjg;->b:Lkiq;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p1

    iget-object v0, p0, Lkjg;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmvq;->h(Ljava/lang/Iterable;)V

    iget-object v0, p0, Lkjg;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object v4

    iget-object v5, p0, Lkjg;->f:Ljava/util/List;

    iget-object v6, p0, Lkjg;->a:Ljuf;

    iget-object v7, p0, Lkjg;->g:Landroid/os/Handler;

    iget-object v8, p0, Lkjg;->h:Ljava/util/concurrent/Executor;

    invoke-virtual/range {v1 .. v8}, Lkji;->b(Lkoo;Lkiq;Ljava/util/List;Ljava/util/List;Ljuf;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    iget-object p1, p0, Lkjg;->i:Lkji;

    iget-object p1, p1, Lkji;->b:Lkaq;

    iget-object v1, p0, Lkjg;->b:Lkiq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkjg;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to receive required outputs for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". The list of outputs was null or empty!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lkjg;->b:Lkiq;

    invoke-virtual {p1}, Lkiq;->b()V

    return-void
.end method
