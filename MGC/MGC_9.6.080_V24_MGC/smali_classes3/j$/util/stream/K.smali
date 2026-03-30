.class final Lj$/util/stream/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/o2;


# instance fields
.field final a:Lj$/util/stream/J;

.field final b:Lj$/util/stream/H;


# direct methods
.method constructor <init>(Lj$/util/stream/N1;Lj$/util/stream/J;Lj$/util/stream/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj$/util/stream/K;->a:Lj$/util/stream/J;

    iput-object p3, p0, Lj$/util/stream/K;->b:Lj$/util/stream/H;

    return-void
.end method


# virtual methods
.method public final b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/K;->b:Lj$/util/stream/H;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/I;

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;Lj$/util/stream/r1;)Lj$/util/stream/r1;

    iget-boolean p1, v0, Lj$/util/stream/I;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/L;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/L;-><init>(Lj$/util/stream/K;Lj$/util/stream/b;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public final d()I
    .locals 2

    sget v0, Lj$/util/stream/M1;->t:I

    sget v1, Lj$/util/stream/M1;->q:I

    or-int/2addr v0, v1

    return v0
.end method
