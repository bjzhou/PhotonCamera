.class final Lfsa;
.super Ljava/lang/Object;

# interfaces
.implements Lfsl;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lfsl;

.field final synthetic d:Lfsb;


# direct methods
.method public constructor <init>(Lfsb;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lfsl;)V
    .locals 0

    iput-object p1, p0, Lfsa;->d:Lfsb;

    iput-object p2, p0, Lfsa;->a:Ljava/lang/Object;

    iput-object p3, p0, Lfsa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lfsa;->c:Lfsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfsa;->d:Lfsb;

    iget-object v0, v0, Lfsb;->b:Landroid/os/Handler;

    iget-object v1, p0, Lfsa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lfsa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfsa;->c:Lfsl;

    invoke-interface {v0}, Lfsl;->a()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lfsa;->d:Lfsb;

    iget-object v0, v0, Lfsb;->b:Landroid/os/Handler;

    iget-object v1, p0, Lfsa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lfsa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfsa;->c:Lfsl;

    invoke-interface {v0, p1}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    sget-object v0, Lfsb;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "HDR+ also failed after timeout"

    const/16 v2, 0x9b6

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lkpb;)V
    .locals 2

    iget-object v0, p0, Lfsa;->d:Lfsb;

    iget-object v0, v0, Lfsb;->b:Landroid/os/Handler;

    iget-object v1, p0, Lfsa;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lfsa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfsa;->c:Lfsl;

    invoke-interface {v0, p1}, Lfsl;->c(Lkpb;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lkpb;->close()V

    return-void
.end method
