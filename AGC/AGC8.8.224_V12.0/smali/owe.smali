.class public final Lowe;
.super Ljava/lang/Object;


# instance fields
.field public final a:Loop;

.field public final b:J

.field public final c:Loon;

.field public final d:Llhz;

.field private final e:Loop;


# direct methods
.method public constructor <init>(JLowe;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Lowe;->e:Loop;

    invoke-static {p3}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object p3

    iput-object p3, p0, Lowe;->a:Loop;

    iput-wide p1, p0, Lowe;->b:J

    shl-int/lit8 p1, p4, 0x10

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Lowe;->c:Loon;

    sget p1, Loxw;->f:I

    invoke-static {p1}, Lolp;->V(I)Llhz;

    move-result-object p1

    iput-object p1, p0, Lowe;->d:Llhz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lowe;->e:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lowe;
    .locals 2

    invoke-virtual {p0}, Lowe;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lowd;->a:Loxb;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lowe;

    return-object v0
.end method

.method public final c()V
    .locals 3

    sget-boolean v0, Lopw;->a:Z

    :cond_0
    iget-object v0, p0, Lowe;->a:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowe;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lowe;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lowe;->a:Loop;

    iget-object v0, v0, Loop;->a:Ljava/lang/Object;

    check-cast v0, Lowe;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lowe;->b()Lowe;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1}, Lowe;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lowe;->b()Lowe;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lowe;->a:Loop;

    invoke-virtual {v2, v0}, Loop;->c(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    iget-object v2, v0, Lowe;->e:Loop;

    invoke-virtual {v2, v1}, Loop;->c(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lowe;->g()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lowe;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lowe;->b()Lowe;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lowe;)Z
    .locals 2

    iget-object v0, p0, Lowe;->e:Loop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Loop;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lowe;->c:Loon;

    sget-object v1, Loon;->a:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v0

    sget v1, Loxw;->f:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lowe;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lowe;->c:Loon;

    iget v0, v0, Loon;->b:I

    sget v1, Loxw;->f:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lowe;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Lowe;->c:Loon;

    :cond_0
    iget v1, v0, Loon;->b:I

    sget v2, Loxw;->f:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lowe;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Loon;->c(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lowe;->b:J

    invoke-virtual {p0}, Lowe;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemaphoreSegment[id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", hashCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
