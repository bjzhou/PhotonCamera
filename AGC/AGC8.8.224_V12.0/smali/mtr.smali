.class final Lmtr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lmts;


# direct methods
.method public constructor <init>(Lmts;)V
    .locals 1

    iput-object p1, p0, Lmtr;->d:Lmts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lmts;->b:I

    iput v0, p0, Lmtr;->a:I

    invoke-virtual {p1}, Lmts;->a()I

    move-result p1

    iput p1, p0, Lmtr;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lmtr;->c:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lmtr;->d:Lmts;

    iget v0, v0, Lmts;->b:I

    iget v1, p0, Lmtr;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lmtr;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lmtr;->a()V

    invoke-virtual {p0}, Lmtr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmtr;->b:I

    iput v0, p0, Lmtr;->c:I

    iget-object v1, p0, Lmtr;->d:Lmts;

    invoke-virtual {v1, v0}, Lmts;->c(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmtr;->d:Lmts;

    iget v2, p0, Lmtr;->b:I

    invoke-virtual {v1, v2}, Lmts;->b(I)I

    move-result v1

    iput v1, p0, Lmtr;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    invoke-direct {p0}, Lmtr;->a()V

    iget v0, p0, Lmtr;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Llkj;->u(Z)V

    iget v0, p0, Lmtr;->a:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lmtr;->a:I

    iget-object v0, p0, Lmtr;->d:Lmts;

    iget v1, p0, Lmtr;->c:I

    invoke-virtual {v0, v1}, Lmts;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmts;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lmtr;->b:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lmtr;->b:I

    iput v1, p0, Lmtr;->c:I

    return-void
.end method
