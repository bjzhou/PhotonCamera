.class public final Lfzi;
.super Ljuf;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lkbc;

.field private final c:Loiw;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lj$/util/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/lifecycle/TwoStageShutdown"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfzi;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Loiw;Ljve;Lj$/util/Optional;Lkbc;)V
    .locals 0

    invoke-direct {p0, p2}, Ljuf;-><init>(Ljve;)V

    iput-object p1, p0, Lfzi;->c:Loiw;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfzi;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lfzi;->e:Lj$/util/Optional;

    iput-object p4, p0, Lfzi;->a:Lkbc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lfzi;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfzh;

    :try_start_0
    invoke-interface {v2}, Lfzh;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lfzi;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Error thrown while running shutdown task"

    const/16 v4, 0x9e1

    invoke-static {v2, v3, v4, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljuf;->close()V

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lfzi;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lfzi;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfzi;->e:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfzi;->e:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lfzr;

    invoke-direct {v2, p0, v1}, Lfzr;-><init>(Lfzi;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    iget-object v0, p0, Lfzi;->a:Lkbc;

    const-string v1, "Critical Path OneCamera Shutdown"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfzi;->a()V

    iget-object v0, p0, Lfzi;->a:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method
