.class public final Llfl;
.super Lkyj;

# interfaces
.implements Llfg;


# instance fields
.field public final c:Llfk;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Llfg;)V
    .locals 2

    invoke-direct {p0}, Lkyj;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Llfl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Llfk;

    invoke-direct {v0, p1}, Llfk;-><init>(Llfg;)V

    iput-object v0, p0, Llfl;->c:Llfk;

    return-void
.end method

.method public constructor <init>(Llfk;)V
    .locals 2

    invoke-direct {p0}, Lkyj;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Llfl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Llfl;->c:Llfk;

    return-void
.end method


# virtual methods
.method protected final b()Lkzf;
    .locals 2

    iget-object v0, p0, Llfl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Llfl;->c:Llfk;

    iget-object v1, v0, Llfk;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Llfk;->c:Z

    iget-object v0, v0, Llfk;->b:Llfg;

    invoke-interface {v0}, Llfg;->a()Lkzf;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    sget-object v0, Lkze;->a:Lkzf;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reference count dropped below zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llfl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llfl;->c:Llfk;

    iget-object v0, v0, Llfk;->b:Llfg;

    invoke-interface {v0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Llfi;

    invoke-direct {v0}, Llfi;-><init>()V

    throw v0
.end method

.method public final cu()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected final cv()V
    .locals 2

    iget-object v0, p0, Llfl;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Llfl;->c:Llfk;

    iget-object v1, v0, Llfk;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Llfk;->c:Z

    iget-object v0, v0, Llfk;->b:Llfg;

    invoke-interface {v0}, Llfg;->close()V

    return-void

    :cond_0
    if-ltz v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reference count dropped below zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Llfl;->c:Llfk;

    iget-object v0, v0, Llfk;->b:Llfg;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ref-counted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
