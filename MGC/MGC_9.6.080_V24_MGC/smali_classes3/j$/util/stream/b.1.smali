.class abstract Lj$/util/stream/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# instance fields
.field private final a:Lj$/util/stream/b;

.field private final b:Lj$/util/stream/b;

.field protected final c:I

.field private d:Lj$/util/stream/b;

.field private e:I

.field private f:I

.field private g:Lj$/util/Spliterator;

.field private h:Ljava/util/function/Supplier;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Z


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    iput-object p0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    sget p1, Lj$/util/stream/M1;->g:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->c:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Lj$/util/stream/M1;->l:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/b;->e:I

    iput-boolean p3, p0, Lj$/util/stream/b;->l:Z

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lj$/util/stream/b;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/stream/b;->i:Z

    iput-object p0, p1, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    sget v1, Lj$/util/stream/M1;->h:I

    and-int/2addr v1, p2

    iput v1, p0, Lj$/util/stream/b;->c:I

    iget v1, p1, Lj$/util/stream/b;->f:I

    invoke-static {p2, v1}, Lj$/util/stream/M1;->k(II)I

    move-result p2

    iput p2, p0, Lj$/util/stream/b;->f:I

    iget-object p2, p1, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iput-object p2, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    invoke-virtual {p0}, Lj$/util/stream/b;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p2, Lj$/util/stream/b;->j:Z

    :cond_0
    iget p1, p1, Lj$/util/stream/b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lj$/util/stream/b;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream has already been operated upon or closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    iput-object p0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    sget p1, Lj$/util/stream/M1;->g:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->c:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Lj$/util/stream/M1;->l:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/b;->e:I

    iput-boolean p3, p0, Lj$/util/stream/b;->l:Z

    return-void
.end method

.method private v(I)Lj$/util/Spliterator;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/Spliterator;

    iput-object v2, v0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    :goto_0
    iget-boolean v2, v0, Lj$/util/stream/b;->l:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lj$/util/stream/b;->j:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    const/4 v3, 0x1

    :goto_1
    if-eq v0, p0, :cond_4

    iget v4, v2, Lj$/util/stream/b;->c:I

    invoke-virtual {v2}, Lj$/util/stream/b;->t()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Lj$/util/stream/M1;->SHORT_CIRCUIT:Lj$/util/stream/M1;

    invoke-virtual {v3, v4}, Lj$/util/stream/M1;->s(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lj$/util/stream/M1;->t:I

    not-int v3, v3

    and-int/2addr v4, v3

    :cond_1
    invoke-virtual {v2, v0, v1}, Lj$/util/stream/b;->s(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    const/16 v3, 0x40

    invoke-interface {v1, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lj$/util/stream/M1;->s:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/M1;->r:I

    :goto_2
    or-int/2addr v3, v4

    move v4, v3

    goto :goto_3

    :cond_2
    sget v3, Lj$/util/stream/M1;->r:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/M1;->s:I

    goto :goto_2

    :goto_3
    const/4 v3, 0x0

    :cond_3
    add-int/lit8 v5, v3, 0x1

    iput v3, v2, Lj$/util/stream/b;->e:I

    iget v0, v0, Lj$/util/stream/b;->f:I

    invoke-static {v4, v0}, Lj$/util/stream/M1;->k(II)I

    move-result v0

    iput v0, v2, Lj$/util/stream/b;->f:I

    iget-object v0, v2, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    move v3, v5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lj$/util/stream/b;->f:I

    invoke-static {p1, v0}, Lj$/util/stream/M1;->k(II)I

    move-result p1

    iput p1, p0, Lj$/util/stream/b;->f:I

    :cond_5
    return-object v1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final A(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/b;->e:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lj$/util/stream/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean p1, p1, Lj$/util/stream/b;->l:Z

    invoke-virtual {p0, p0, v0, p1}, Lj$/util/stream/b;->x(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->l:Z

    return v0
.end method

.method public final b()Lj$/util/stream/BaseStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/b;->l:Z

    return-object p0
.end method

.method final c(Lj$/util/Spliterator;Lj$/util/stream/r1;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/M1;->SHORT_CIRCUIT:Lj$/util/stream/M1;

    iget v1, p0, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lj$/util/stream/r1;->k(J)V

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Lj$/util/stream/r1;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/b;->d(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z

    :goto_0
    return-void
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    iput-object v0, p0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v2, v1, Lj$/util/stream/b;->k:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iput-object v0, v1, Lj$/util/stream/b;->k:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method final d(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z
    .locals 3

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lj$/util/stream/r1;->k(J)V

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/b;->j(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z

    move-result p1

    invoke-interface {p2}, Lj$/util/stream/r1;->j()V

    return p1
.end method

.method final e(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0, p1, p2, p3}, Lj$/util/stream/b;->h(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/b;->i(Lj$/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lj$/util/stream/b;->q(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    invoke-interface {p2}, Lj$/util/stream/Q;->a()Lj$/util/stream/Z;

    move-result-object p1

    return-object p1
.end method

.method final f(Lj$/util/stream/o2;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/b;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->i:Z

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->l:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/stream/o2;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->v(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/o2;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/o2;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->v(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/o2;->b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final g(Ljava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 4

    iget-boolean v0, p0, Lj$/util/stream/b;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->i:Z

    iget-object v1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v1, v1, Lj$/util/stream/b;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lj$/util/stream/b;->e:I

    invoke-direct {v1, v2}, Lj$/util/stream/b;->v(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/b;->r(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v2}, Lj$/util/stream/b;->v(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/b;->e(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract h(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;
.end method

.method final i(Lj$/util/Spliterator;)J
    .locals 2

    sget-object v0, Lj$/util/stream/M1;->SIZED:Lj$/util/stream/M1;

    iget v1, p0, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method abstract j(Lj$/util/Spliterator;Lj$/util/stream/r1;)Z
.end method

.method abstract k()Lj$/util/stream/N1;
.end method

.method final l()Lj$/util/stream/N1;
    .locals 2

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/b;->k()Lj$/util/stream/N1;

    move-result-object v0

    return-object v0
.end method

.method final m()I
    .locals 1

    iget v0, p0, Lj$/util/stream/b;->f:I

    return v0
.end method

.method final n()Z
    .locals 2

    sget-object v0, Lj$/util/stream/M1;->ORDERED:Lj$/util/stream/M1;

    iget v1, p0, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    return v0
.end method

.method final synthetic o()Lj$/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->v(I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;
    .locals 4

    iget-boolean v0, p0, Lj$/util/stream/b;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v1, v0, Lj$/util/stream/b;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lj$/util/stream/l2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Lj$/util/stream/l2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v2

    :goto_0
    iput-object p1, v0, Lj$/util/stream/b;->k:Ljava/lang/Runnable;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract p(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
.end method

.method abstract q(JLjava/util/function/IntFunction;)Lj$/util/stream/Q;
.end method

.method r(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parallel evaluation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method s(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    new-instance v0, Lj$/util/stream/f;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lj$/util/stream/f;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/b;->r(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Z;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 3

    iget-boolean v0, p0, Lj$/util/stream/b;->i:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->i:Z

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    if-ne p0, v0, :cond_2

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    iget-object v1, v0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1

    iput-object v2, v0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    invoke-virtual {p0, v1}, Lj$/util/stream/b;->p(Ljava/util/function/Supplier;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lj$/util/stream/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    iget-boolean v0, v0, Lj$/util/stream/b;->l:Z

    invoke-virtual {p0, p0, v1, v0}, Lj$/util/stream/b;->x(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract t()Z
.end method

.method abstract u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
.end method

.method final w()Lj$/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    if-ne p0, v0, :cond_3

    iget-boolean v1, p0, Lj$/util/stream/b;->i:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/b;->i:Z

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    iget-object v1, v0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/Spliterator;

    iput-object v2, v0, Lj$/util/stream/b;->h:Ljava/util/function/Supplier;

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method abstract x(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
.end method

.method final y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/b;->c(Lj$/util/Spliterator;Lj$/util/stream/r1;)V

    return-object p2
.end method

.method final z(Lj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iget v2, v1, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v2, p1}, Lj$/util/stream/b;->u(ILj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object p1

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method
