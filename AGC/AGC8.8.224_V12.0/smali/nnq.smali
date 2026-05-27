.class public final Lnnq;
.super Lnni;


# instance fields
.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lmvm;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnni;-><init>(Lmvm;ZZ)V

    invoke-virtual {p1}, Lmvm;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmvm;->size()I

    move-result p2

    invoke-static {p2}, Llyh;->F(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lmvm;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lnnq;->c:Ljava/util/List;

    invoke-virtual {p0}, Lnni;->r()V

    return-void
.end method


# virtual methods
.method public final h(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnnq;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Llyd;

    invoke-direct {v1, p2}, Llyd;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lnnq;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Llyh;->F(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llyd;

    if-eqz v2, :cond_0

    iget-object v2, v2, Llyd;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnnb;->e(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final s(I)V
    .locals 0

    invoke-super {p0, p1}, Lnni;->s(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnnq;->c:Ljava/util/List;

    return-void
.end method
