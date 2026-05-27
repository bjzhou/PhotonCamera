.class public Lmvl;
.super Ljava/lang/Object;


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Llkj;->v(ILjava/lang/String;)V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lmvl;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lmvl;->b:I

    return-void
.end method

.method static a(II)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    add-int/2addr p0, p0

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0
.end method

.method private final f(I)V
    .locals 3

    iget-object v0, p0, Lmvl;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    invoke-static {v1, p1}, Lmvl;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmvl;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lmvl;->c:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lmvl;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lmvl;->a:[Ljava/lang/Object;

    iput-boolean v2, p0, Lmvl;->c:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b([Ljava/lang/Object;I)V
    .locals 3

    invoke-static {p1, p2}, Llyh;->n([Ljava/lang/Object;I)V

    iget v0, p0, Lmvl;->b:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lmvl;->f(I)V

    iget-object v0, p0, Lmvl;->a:[Ljava/lang/Object;

    iget v1, p0, Lmvl;->b:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lmvl;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lmvl;->b:I

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lmvl;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmvl;->f(I)V

    iget-object v0, p0, Lmvl;->a:[Ljava/lang/Object;

    iget v1, p0, Lmvl;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmvl;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljava/lang/Iterable;)V
    .locals 3

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lmvl;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lmvl;->f(I)V

    instance-of v1, v0, Lmvm;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lmvm;

    iget-object p1, p0, Lmvl;->a:[Ljava/lang/Object;

    iget v1, p0, Lmvl;->b:I

    invoke-virtual {v0, p1, v1}, Lmvm;->x([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lmvl;->b:I

    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmvl;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method
