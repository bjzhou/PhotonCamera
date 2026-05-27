.class public final Lenb;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lva;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lva;Ljava/lang/Runnable;[B[B[B[B)V
    .locals 0

    iput-object p1, p0, Lenb;->b:Lva;

    iput-object p2, p0, Lenb;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lenb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lenb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lenb;->b:Lva;

    iget-object p1, p1, Lva;->a:Ljava/lang/Object;

    check-cast p1, Ldbf;

    invoke-virtual {p1}, Ldbf;->d()Lklv;

    move-result-object p1

    sget-object v0, Lklv;->a:Lklv;

    invoke-virtual {p1, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lenb;->b:Lva;

    iget-object p1, p1, Lva;->a:Ljava/lang/Object;

    iget-object v0, p0, Lenb;->a:Ljava/lang/Runnable;

    check-cast p1, Ldbf;

    invoke-virtual {p1, v0}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lenb;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
