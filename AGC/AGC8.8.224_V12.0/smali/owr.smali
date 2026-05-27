.class public Lowr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Loop;

.field public final c:Loop;

.field public final d:Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Lowr;->c:Loop;

    invoke-static {p0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Lowr;->d:Loop;

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Lowr;->a:Loop;

    return-void
.end method

.method private final cR()Lowr;
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, Lowr;->d:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowr;

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v1

    :goto_1
    iget-object v4, v2, Lowr;->c:Loop;

    iget-object v4, v4, Loop;->a:Ljava/lang/Object;

    if-ne v4, p0, :cond_2

    if-ne v0, v2, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lowr;->d:Loop;

    invoke-virtual {v1, v0, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lowr;->cQ()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    if-nez v4, :cond_4

    return-object v2

    :cond_4
    instance-of v5, v4, Lowv;

    if-eqz v5, :cond_5

    check-cast v4, Lowv;

    invoke-virtual {v4, v2}, Lowv;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v5, v4, Loww;

    if-eqz v5, :cond_7

    if-eqz v3, :cond_6

    iget-object v5, v3, Lowr;->c:Loop;

    check-cast v4, Loww;

    iget-object v4, v4, Loww;->a:Lowr;

    invoke-virtual {v5, v2, v4}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    move-object v3, v1

    goto :goto_1

    :cond_6
    iget-object v2, v2, Lowr;->d:Loop;

    iget-object v2, v2, Loop;->a:Ljava/lang/Object;

    check-cast v2, Lowr;

    goto :goto_1

    :cond_7
    move-object v3, v4

    check-cast v3, Lowr;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1
.end method


# virtual methods
.method public cP()Z
    .locals 1

    invoke-virtual {p0}, Lowr;->n()Lowr;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cQ()Z
    .locals 1

    invoke-virtual {p0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Loww;

    return v0
.end method

.method public final j(Lowr;Lowr;Lowp;)I
    .locals 1

    iget-object v0, p1, Lowr;->d:Loop;

    invoke-virtual {v0, p0}, Loop;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Lowr;->c:Loop;

    invoke-virtual {p1, p2}, Loop;->b(Ljava/lang/Object;)V

    iput-object p2, p3, Lowp;->d:Lowr;

    iget-object p1, p0, Lowr;->c:Loop;

    invoke-virtual {p1, p2, p3}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p3, p0}, Lowv;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public final k()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lowr;->c:Loop;

    :goto_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    instance-of v2, v1, Lowv;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Lowv;

    invoke-virtual {v1, p0}, Lowv;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final l()Lowr;
    .locals 2

    invoke-virtual {p0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Loww;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Loww;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Loww;->a:Lowr;

    goto :goto_1

    :cond_1
    check-cast v0, Lowr;

    :goto_1
    return-object v0
.end method

.method public final m()Lowr;
    .locals 2

    invoke-direct {p0}, Lowr;->cR()Lowr;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lowr;->d:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowr;

    :goto_0
    invoke-virtual {v0}, Lowr;->cQ()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lowr;->d:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowr;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final n()Lowr;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loww;

    if-eqz v1, :cond_1

    check-cast v0, Loww;

    iget-object v0, v0, Loww;->a:Lowr;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_2

    check-cast v0, Lowr;

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lowr;

    iget-object v2, v1, Lowr;->a:Loop;

    iget-object v2, v2, Loop;->a:Ljava/lang/Object;

    check-cast v2, Loww;

    if-nez v2, :cond_3

    new-instance v2, Loww;

    invoke-direct {v2, v1}, Loww;-><init>(Lowr;)V

    iget-object v3, v1, Lowr;->a:Loop;

    invoke-virtual {v3, v2}, Loop;->b(Ljava/lang/Object;)V

    :cond_3
    iget-object v3, p0, Lowr;->c:Loop;

    invoke-virtual {v3, v0, v2}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {v1}, Lowr;->cR()Lowr;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o(Lowr;)V
    .locals 3

    iget-object v0, p1, Lowr;->d:Loop;

    :cond_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    check-cast v1, Lowr;

    invoke-virtual {p0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p1, Lowr;->d:Loop;

    invoke-virtual {v2, v1, p0}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lowr;->cQ()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p1}, Lowr;->cR()Lowr;

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Loww;

    iget-object v0, v0, Loww;->a:Lowr;

    invoke-virtual {v0}, Lowr;->q()V

    return-void
.end method

.method public final q()V
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lowr;->k()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Loww;

    if-eqz v2, :cond_0

    check-cast v1, Loww;

    iget-object v0, v1, Loww;->a:Lowr;

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lowr;->cR()Lowr;

    return-void
.end method

.method public final r(Lowr;Lowr;)Z
    .locals 1

    iget-object v0, p1, Lowr;->d:Loop;

    invoke-virtual {v0, p0}, Loop;->b(Ljava/lang/Object;)V

    iget-object v0, p1, Lowr;->c:Loop;

    invoke-virtual {v0, p2}, Loop;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lowr;->c:Loop;

    invoke-virtual {v0, p2, p1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Lowr;->o(Lowr;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lowq;

    invoke-direct {v0, p0}, Lowq;-><init>(Ljava/lang/Object;)V

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
