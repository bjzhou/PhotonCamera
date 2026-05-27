.class public final Llca;
.super Ljava/lang/Object;

# interfaces
.implements Llbd;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Llbd;

.field private final d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Llbd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Llca;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Llca;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Llca;->c:Llbd;

    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Context stacktrace"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Llca;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lkzf;
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0}, Llbd;->a()Lkzf;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Llca;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    return-void
.end method

.method public final d()Llcg;
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0}, Llbd;->d()Llcg;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lldg;
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0}, Llbd;->e()Lldg;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Llca;->d:Ljava/lang/Throwable;

    iget-object v1, p0, Llca;->c:Llbd;

    new-instance v2, Llbz;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Llbz;-><init>(Llca;Ljava/lang/Runnable;Ljava/lang/Throwable;I)V

    invoke-interface {v1, v2}, Llbd;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Llcj;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0, p1, p2}, Llbd;->f(Llcj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0}, Llbd;->g()Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/Object;Lmrl;)Llfl;
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0, p1, p2}, Llbd;->h(Ljava/lang/Object;Lmrl;)Llfl;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lldc;
    .locals 1

    iget-object v0, p0, Llca;->c:Llbd;

    invoke-interface {v0}, Llbd;->i()Lldc;

    move-result-object v0

    return-object v0
.end method
