.class final Lfep;
.super Ljava/lang/Object;

# interfaces
.implements Lhfv;


# instance fields
.field final synthetic a:Lfeq;


# direct methods
.method public constructor <init>(Lfeq;)V
    .locals 0

    iput-object p1, p0, Lfep;->a:Lfeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lfep;->a:Lfeq;

    iget-object v0, v0, Lfeq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfep;->a:Lfeq;

    invoke-virtual {v0}, Lfeq;->a()Lkad;

    move-result-object v1

    iput-object v1, v0, Lfeq;->d:Lkad;

    :cond_0
    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lfep;->a:Lfeq;

    iget-object v0, v0, Lfeq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method
