.class final Lnyu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lnyw;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lnyw;)V
    .locals 0

    iput-object p1, p0, Lnyu;->a:Lnyw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lnyu;->b:I

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lnyu;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnyu;->a:Lnyw;

    iget-object v0, v0, Lnyw;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnyu;->d:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lnyu;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lnyu;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lnyu;->a:Lnyw;

    iget-object v2, v2, Lnyw;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lnyu;->a:Lnyw;

    iget-object v0, v0, Lnyw;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnyu;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnyu;->c:Z

    iget v1, p0, Lnyu;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lnyu;->b:I

    iget-object v0, p0, Lnyu;->a:Lnyw;

    iget-object v0, v0, Lnyw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lnyu;->a:Lnyw;

    iget-object v0, v0, Lnyw;->a:Ljava/util/List;

    iget v1, p0, Lnyu;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lnyu;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lnyu;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnyu;->c:Z

    iget-object v0, p0, Lnyu;->a:Lnyw;

    invoke-virtual {v0}, Lnyw;->g()V

    iget v0, p0, Lnyu;->b:I

    iget-object v1, p0, Lnyu;->a:Lnyw;

    iget-object v1, v1, Lnyw;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lnyu;->a:Lnyw;

    iget v1, p0, Lnyu;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lnyu;->b:I

    invoke-virtual {v0, v1}, Lnyw;->e(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lnyu;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
