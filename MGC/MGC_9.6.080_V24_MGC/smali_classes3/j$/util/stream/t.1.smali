.class final Lj$/util/stream/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/o2;
.implements Lj$/util/stream/p2;


# instance fields
.field private final a:Z

.field final b:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lj$/util/stream/t;->a:Z

    iput-object p1, p0, Lj$/util/stream/t;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/t;->b:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p0}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/b;->c(Lj$/util/Spliterator;Lj$/util/stream/r1;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/t;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/stream/u;

    invoke-direct {v0, p1, p2, p0}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/stream/t;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/v;

    invoke-virtual {p1, p0}, Lj$/util/stream/b;->z(Lj$/util/stream/r1;)Lj$/util/stream/r1;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lj$/util/stream/v;-><init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/stream/r1;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/t;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lj$/util/stream/M1;->q:I

    :goto_0
    return v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic j()V
    .locals 0

    return-void
.end method

.method public final synthetic k(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
