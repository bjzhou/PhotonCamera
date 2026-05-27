.class final Lojo;
.super Lojn;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic c:Lojq;


# direct methods
.method public constructor <init>(Lojq;I)V
    .locals 0

    iput-object p1, p0, Lojo;->c:Lojq;

    invoke-direct {p0, p1}, Lojn;-><init>(Lojq;)V

    invoke-virtual {p1}, Lojl;->a()I

    move-result p1

    invoke-static {p2, p1}, Lljr;->aK(II)V

    iput p2, p0, Lojn;->a:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lojn;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lojn;->a:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lojo;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lojo;->c:Lojq;

    iget v1, p0, Lojn;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lojn;->a:I

    invoke-virtual {v0, v1}, Lojq;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lojn;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
