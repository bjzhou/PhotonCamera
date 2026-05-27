.class public final Lnpo;
.super Lnod;

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# instance fields
.field private volatile a:Lnot;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1

    invoke-direct {p0}, Lnod;-><init>()V

    new-instance v0, Lnpn;

    invoke-direct {v0, p0, p1}, Lnpn;-><init>(Lnpo;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lnpo;->a:Lnot;

    return-void
.end method

.method public constructor <init>(Lnnn;)V
    .locals 1

    invoke-direct {p0}, Lnod;-><init>()V

    new-instance v0, Lnpm;

    invoke-direct {v0, p0, p1}, Lnpm;-><init>(Lnpo;Lnnn;)V

    iput-object v0, p0, Lnpo;->a:Lnot;

    return-void
.end method

.method public static g(Lnnn;)Lnpo;
    .locals 1

    new-instance v0, Lnpo;

    invoke-direct {v0, p0}, Lnpo;-><init>(Lnnn;)V

    return-object v0
.end method

.method public static h(Ljava/util/concurrent/Callable;)Lnpo;
    .locals 1

    new-instance v0, Lnpo;

    invoke-direct {v0, p0}, Lnpo;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Runnable;Ljava/lang/Object;)Lnpo;
    .locals 1

    new-instance v0, Lnpo;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lnpo;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected final bY()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnpo;->a:Lnot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lnod;->bY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()V
    .locals 1

    invoke-virtual {p0}, Lnnb;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnpo;->a:Lnot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnot;->h()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnpo;->a:Lnot;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lnpo;->a:Lnot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnot;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnpo;->a:Lnot;

    return-void
.end method
