.class public final Lefw;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lefw;->a:Ljava/lang/Object;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lefw;->e:Ljava/lang/Object;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lefw;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lefx;
    .locals 11

    iget-object v0, p0, Lefw;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lefw;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lefw;->d:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v10, Lefx;

    iget-object v3, p0, Lefw;->a:Ljava/lang/Object;

    iget-object v4, p0, Lefw;->e:Ljava/lang/Object;

    iget-object v5, p0, Lefw;->f:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lj$/util/Optional;

    move-object v5, v4

    check-cast v5, Lj$/util/Optional;

    move-object v4, v3

    check-cast v4, Lj$/util/Optional;

    move-object v9, v2

    check-cast v9, Lmvv;

    move-object v8, v1

    check-cast v8, Lnqv;

    move-object v7, v0

    check-cast v7, Lcom/google/googlex/gcam/ShotMetadata;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lefx;-><init>(Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Lmvv;)V

    iget-object v0, v10, Lefx;->a:Lj$/util/Optional;

    sget-object v1, Lefv;->b:Lefv;

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lefx;->b:Lj$/util/Optional;

    sget-object v4, Lefv;->a:Lefv;

    invoke-virtual {v3, v4}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, v10, Lefx;->c:Lj$/util/Optional;

    sget-object v4, Lefv;->c:Lefv;

    invoke-virtual {v3, v4}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    const-string v0, "Exactly one of rawImage, rgbImage, or lumaDenoisedImage must be set."

    invoke-static {v1, v0}, Lmoz;->q(ZLjava/lang/Object;)V

    return-object v10

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lefw;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, " shotMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lefw;->c:Ljava/lang/Object;

    if-nez v1, :cond_4

    const-string v1, " makernoteMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lefw;->d:Ljava/lang/Object;

    if-nez v1, :cond_5

    const-string v1, " payloadMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lmvv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lefw;->d:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null payloadMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/googlex/gcam/RawReadView;)V
    .locals 0

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lefw;->a:Ljava/lang/Object;

    return-void
.end method

.method public final d(Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 0

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lefw;->e:Ljava/lang/Object;

    return-void
.end method

.method public final e()Lcuh;
    .locals 9

    iget-object v0, p0, Lefw;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lefw;->f:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lefw;->b:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lefw;->e:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v1, p0, Lefw;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcuh;

    iget-object v7, p0, Lefw;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Lhna;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcuh;-><init>(Lhna;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcug;)V

    return-object v8

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lefw;->c:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string v1, " threshold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lefw;->f:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, " onEnable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lefw;->b:Ljava/lang/Object;

    if-nez v1, :cond_4

    const-string v1, " onDisable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lefw;->e:Ljava/lang/Object;

    if-nez v1, :cond_5

    const-string v1, " executor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lefw;->a:Ljava/lang/Object;

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
.end method

.method public final f(Ljava/util/concurrent/Executor;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lefw;->e:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null executor"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lefw;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null onDisable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lefw;->f:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null onEnable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lhna;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lefw;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null threshold"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
