.class public final Llfe;
.super Ljava/lang/Object;

# interfaces
.implements Llfg;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Llaa;

.field private final c:Lkzf;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    iput-object v0, p0, Llfe;->b:Llaa;

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    iput-object v0, p0, Llfe;->c:Lkzf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Llfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a()Lkzf;
    .locals 5

    invoke-virtual {p0}, Llfe;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Llfe;->b:Llaa;

    check-cast v0, Lkyc;

    invoke-interface {v0}, Lkyc;->a()Lkzf;

    move-result-object v0

    sget-object v2, Lnnv;->a:Lnnv;

    new-instance v3, Lkzl;

    invoke-direct {v3, v1}, Lkzl;-><init>(Llaa;)V

    new-instance v4, Lkzk;

    invoke-direct {v4, v1}, Lkzk;-><init>(Llaa;)V

    invoke-interface {v0, v2, v3, v4}, Lkzc;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object v0

    sget-object v1, Lkyo;->a:Lkyo;

    invoke-interface {v0, v1}, Lkzc;->h(Lkyo;)V

    :cond_0
    iget-object v0, p0, Llfe;->c:Lkzf;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Llfi;

    invoke-direct {v0}, Llfi;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Llfe;->a()Lkzf;

    move-result-object v0

    invoke-static {v0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    return-void
.end method

.method public final cu()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Llfe;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Llfe;->b:Llaa;

    sget-object v2, Lkyd;->a:Lkyd;

    invoke-virtual {v1, v2}, Llaa;->l(Ljava/lang/Object;)V

    iget-object v1, p0, Llfe;->c:Lkzf;

    invoke-static {v1}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Llfi;

    invoke-direct {v0}, Llfi;-><init>()V

    throw v0
.end method

.method protected final d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Llfe;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-owner["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
