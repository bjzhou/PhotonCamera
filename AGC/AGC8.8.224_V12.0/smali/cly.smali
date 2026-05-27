.class public abstract Lcly;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile h:Lnph;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcly;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcly;->a:Ljava/util/concurrent/Executor;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lcly;->h:Lnph;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final bl()Lnou;
    .locals 3

    iget-object v0, p0, Lcly;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcly;->h:Lnph;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcly;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lclr;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcly;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcly;->h:Lnph;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
