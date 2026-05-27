.class public final Lhnd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lhna;

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhne;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhne;->b:Lhna;

    iput-object v0, p0, Lhnd;->a:Lhna;

    iget-object v0, p1, Lhne;->c:Ljava/lang/Runnable;

    iput-object v0, p0, Lhnd;->b:Ljava/lang/Runnable;

    iget-object v0, p1, Lhne;->d:Ljava/lang/Runnable;

    iput-object v0, p0, Lhnd;->c:Ljava/lang/Runnable;

    iget-object v0, p1, Lhne;->e:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lhnd;->d:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lhne;->f:Ljava/lang/String;

    iput-object p1, p0, Lhnd;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lhne;
    .locals 8

    invoke-virtual {p0}, Lhnd;->b()Lhna;

    move-result-object v0

    sget-object v1, Lhna;->c:Lhna;

    invoke-virtual {v0, v1}, Lhna;->a(Lhna;)Z

    move-result v0

    invoke-virtual {p0}, Lhnd;->b()Lhna;

    move-result-object v1

    const-string v2, "Cannot disable feature at NORMAL or lower, threshold = %s"

    invoke-static {v0, v2, v1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lhnd;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "featureName cannot be blank."

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v3, p0, Lhnd;->a:Lhna;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lhnd;->b:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lhnd;->c:Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lhnd;->d:Ljava/util/concurrent/Executor;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lhnd;->e:Ljava/lang/String;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lhne;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lhne;-><init>(Lhna;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhnd;->a:Lhna;

    if-nez v1, :cond_2

    const-string v1, " threshold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lhnd;->b:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    const-string v1, " onEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lhnd;->c:Ljava/lang/Runnable;

    if-nez v1, :cond_4

    const-string v1, " onDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lhnd;->d:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_5

    const-string v1, " executor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lhnd;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, " featureName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"featureName\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lhna;
    .locals 2

    iget-object v0, p0, Lhnd;->a:Lhna;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"threshold\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/util/concurrent/Executor;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhnd;->d:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null executor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhnd;->e:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null featureName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhnd;->c:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null onDisable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhnd;->b:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null onEnable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lhna;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhnd;->a:Lhna;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null threshold"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
