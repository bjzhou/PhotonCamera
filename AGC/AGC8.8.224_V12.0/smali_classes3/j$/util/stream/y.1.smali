.class final Lj$/util/stream/y;
.super Lj$/util/I;


# instance fields
.field d:I

.field e:Z

.field final synthetic f:Ljava/util/function/IntUnaryOperator;

.field final synthetic g:I


# direct methods
.method constructor <init>(Ljava/util/function/IntUnaryOperator;I)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/y;->f:Ljava/util/function/IntUnaryOperator;

    iput p2, p0, Lj$/util/stream/y;->g:I

    invoke-direct {p0}, Lj$/util/I;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/y;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lj$/util/stream/y;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/y;->f:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Lj$/util/stream/y;->d:I

    invoke-interface {v0, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lj$/util/stream/y;->e:Z

    iget v0, p0, Lj$/util/stream/y;->g:I

    :goto_0
    iput v0, p0, Lj$/util/stream/y;->d:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return v1
.end method
