.class final Lj$/util/stream/C;
.super Lj$/util/Z;
.source "SourceFile"


# instance fields
.field c:I

.field d:Z

.field final synthetic e:Ljava/util/function/IntUnaryOperator;

.field final synthetic f:I


# direct methods
.method constructor <init>(ILjava/util/function/IntUnaryOperator;)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/C;->e:Ljava/util/function/IntUnaryOperator;

    iput p1, p0, Lj$/util/stream/C;->f:I

    invoke-direct {p0}, Lj$/util/Z;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/C;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lj$/util/stream/C;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/C;->e:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Lj$/util/stream/C;->c:I

    invoke-interface {v0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lj$/util/stream/C;->d:Z

    iget v0, p0, Lj$/util/stream/C;->f:I

    :goto_0
    iput v0, p0, Lj$/util/stream/C;->c:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v1
.end method
