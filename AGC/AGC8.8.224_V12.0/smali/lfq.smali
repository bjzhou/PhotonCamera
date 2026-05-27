.class public final Llfq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Llgw;


# instance fields
.field private final a:Lnox;

.field private final b:Llhe;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private volatile d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lnox;Llhe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Llfq;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Llfq;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Llfq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Llfq;->a:Lnox;

    iput-object p2, p0, Llfq;->b:Llhe;

    iget-object p1, p2, Llhe;->a:Ljava/lang/Object;

    check-cast p1, Llhe;

    iget-object p1, p1, Llhe;->a:Ljava/lang/Object;

    sget v0, Llhf;->c:I

    check-cast p1, Llhf;

    iget-object p1, p1, Llhf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Llfq;->d()V

    return-void

    :cond_0
    invoke-virtual {p2, p0}, Llhe;->a(Llhd;)V

    return-void
.end method

.method private final c()V
    .locals 2

    :goto_0
    iget-object v0, p0, Llfq;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llfq;->a:Lnox;

    invoke-interface {v1, v0}, Lnox;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final d()V
    .locals 5

    iget-object v0, p0, Llfq;->a:Lnox;

    new-instance v1, Lkhk;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lkhk;-><init>(Llfq;I)V

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lnox;->e(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Llfq;->b:Llhe;

    invoke-virtual {p1, p0}, Llhe;->b(Llhd;)V

    invoke-direct {p0}, Llfq;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llfq;->d:Z

    invoke-direct {p0}, Llfq;->c()V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    iget-boolean v0, p0, Llfq;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llfq;->a:Lnox;

    invoke-interface {v0, p1}, Lnox;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Llfq;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Llfq;->d:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Llfq;->c()V

    return-void

    :cond_1
    iget-object p1, p0, Llfq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Llfq;->a:Lnox;

    new-instance v0, Lkhk;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lkhk;-><init>(Llfq;I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1b58

    invoke-interface {p1, v0, v2, v3, v1}, Lnox;->e(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    :cond_2
    return-void
.end method
