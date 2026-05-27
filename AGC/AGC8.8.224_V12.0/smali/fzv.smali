.class public final Lfzv;
.super Ljava/lang/Object;

# interfaces
.implements Lfzz;


# instance fields
.field public final a:Lfte;

.field public final b:Ljuh;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lgxl;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lfzy;


# direct methods
.method public constructor <init>(Lfte;Ljuh;Lgxl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfzv;->a:Lfte;

    iput-object p2, p0, Lfzv;->b:Ljuh;

    iput-object p3, p0, Lfzv;->d:Lgxl;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfzv;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfzv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()Lfzy;
    .locals 2

    iget-object v0, p0, Lfzv;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    new-instance v0, Lfzs;

    invoke-direct {v0, p0}, Lfzs;-><init>(Lfzv;)V

    iput-object v0, p0, Lfzv;->f:Lfzy;

    return-object v0
.end method

.method public final b()Lfzy;
    .locals 2

    iget-object v0, p0, Lfzv;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    new-instance v0, Lfzt;

    invoke-direct {v0, p0}, Lfzt;-><init>(Lfzv;)V

    iput-object v0, p0, Lfzv;->f:Lfzy;

    return-object v0
.end method

.method public final c()Lfzy;
    .locals 2

    iget-object v0, p0, Lfzv;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->p(Z)V

    new-instance v0, Lfzu;

    invoke-direct {v0, p0}, Lfzu;-><init>(Lfzv;)V

    iput-object v0, p0, Lfzv;->f:Lfzy;

    return-object v0
.end method

.method public final d()Lfzy;
    .locals 1

    iget-object v0, p0, Lfzv;->f:Lfzy;

    return-object v0
.end method

.method public final e()Lfzy;
    .locals 1

    iget-object v0, p0, Lfzv;->f:Lfzy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lfzv;->c()Lfzy;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lfzv;->b:Ljuh;

    new-instance v1, Lfzr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfzr;-><init>(Lfzv;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final g()V
    .locals 1

    iget-object v0, p0, Lfzv;->d:Lgxl;

    invoke-interface {v0}, Lgxl;->y()V

    iget-object v0, p0, Lfzv;->a:Lfte;

    iget-object v0, v0, Lfte;->b:Lftf;

    invoke-interface {v0}, Lftf;->c()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lfzv;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
