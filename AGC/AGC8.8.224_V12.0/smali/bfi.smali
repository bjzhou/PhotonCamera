.class public final Lbfi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lbfi;

.field public d:Ljava/util/List;

.field public e:Lbfs;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbfs;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbfi;->j:Ljava/util/List;

    iput-object v0, p0, Lbfi;->d:Ljava/util/List;

    iput-object p1, p0, Lbfi;->a:Ljava/lang/String;

    iput-object p2, p0, Lbfi;->b:Ljava/lang/String;

    iput-object p3, p0, Lbfi;->e:Lbfs;

    return-void
.end method

.method private final u()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lbfi;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbfi;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lbfi;->d:Ljava/util/List;

    return-object v0
.end method

.method private final v(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lbfi;->c(Ljava/lang/String;)Lbfi;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lbeq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate property or field node \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final w()Z
    .locals 2

    const-string v0, "xml:lang"

    iget-object v1, p0, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final x()Z
    .locals 2

    const-string v0, "rdf:type"

    iget-object v1, p0, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final y(Ljava/util/List;Ljava/lang/String;)Lbfi;
    .locals 2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfi;

    iget-object v1, v0, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lbfi;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)Lbfi;
    .locals 1

    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lbfi;->y(Ljava/util/List;Ljava/lang/String;)Lbfi;

    move-result-object p1

    return-object p1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    new-instance v0, Lbfs;

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v1

    iget v1, v1, Lbfq;->a:I

    invoke-direct {v0, v1}, Lbfs;-><init>(I)V
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lbfs;

    invoke-direct {v0}, Lbfs;-><init>()V

    :goto_0
    new-instance v1, Lbfi;

    iget-object v2, p0, Lbfi;->a:Ljava/lang/String;

    iget-object v3, p0, Lbfi;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lbfi;-><init>(Ljava/lang/String;Ljava/lang/String;Lbfs;)V

    :try_start_1
    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    invoke-virtual {v2}, Lbfi;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    invoke-virtual {v1, v2}, Lbfi;->k(Lbfi;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lbfi;->i()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    invoke-virtual {v2}, Lbfi;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfi;

    invoke-virtual {v1, v2}, Lbfi;->m(Lbfi;)V
    :try_end_1
    .catch Lbeq; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_1
    return-object v1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfi;->b:Ljava/lang/String;

    check-cast p1, Lbfi;

    iget-object p1, p1, Lbfi;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lbfi;->a:Ljava/lang/String;

    check-cast p1, Lbfi;

    iget-object p1, p1, Lbfi;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;)Lbfi;
    .locals 1

    iget-object v0, p0, Lbfi;->d:Ljava/util/List;

    invoke-static {v0, p1}, Lbfi;->y(Ljava/util/List;Ljava/lang/String;)Lbfi;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Lbfi;
    .locals 1

    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfi;

    return-object p1
.end method

.method public final f(I)Lbfi;
    .locals 1

    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfi;

    return-object p1
.end method

.method public final g()Lbfs;
    .locals 1

    iget-object v0, p0, Lbfi;->e:Lbfs;

    if-nez v0, :cond_0

    new-instance v0, Lbfs;

    invoke-direct {v0}, Lbfs;-><init>()V

    iput-object v0, p0, Lbfi;->e:Lbfs;

    :cond_0
    iget-object v0, p0, Lbfi;->e:Lbfs;

    return-object v0
.end method

.method public final h()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lbfi;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lbfh;

    invoke-direct {v1, v0}, Lbfh;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbfi;->j:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    return-object v0
.end method

.method public final k(Lbfi;)V
    .locals 1

    iget-object v0, p1, Lbfi;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbfi;->v(Ljava/lang/String;)V

    iput-object p0, p1, Lbfi;->c:Lbfi;

    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(ILbfi;)V
    .locals 1

    iget-object v0, p2, Lbfi;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbfi;->v(Ljava/lang/String;)V

    iput-object p0, p2, Lbfi;->c:Lbfi;

    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final m(Lbfi;)V
    .locals 3

    iget-object v0, p1, Lbfi;->a:Ljava/lang/String;

    const-string v1, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lbfi;->d(Ljava/lang/String;)Lbfi;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lbeq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' qualifier"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-direct {p1, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    :goto_0
    iput-object p0, p1, Lbfi;->c:Lbfi;

    invoke-virtual {p1}, Lbfi;->g()Lbfs;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbfq;->f(IZ)V

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbfs;->v(Z)V

    invoke-direct {p1}, Lbfi;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbfi;->e:Lbfs;

    invoke-virtual {v0, v2}, Lbfs;->u(Z)V

    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-direct {p1}, Lbfi;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbfi;->e:Lbfs;

    invoke-virtual {v0, v2}, Lbfs;->w(Z)V

    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbfi;->e:Lbfs;

    invoke-virtual {v1}, Lbfs;->c()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lbfi;->j:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final o(Lbfi;)V
    .locals 1

    invoke-virtual {p0}, Lbfi;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbfi;->n()V

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbfi;->j:Ljava/util/List;

    return-void
.end method

.method public final q(Lbfi;)V
    .locals 3

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-direct {p1}, Lbfi;->w()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lbfs;->u(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Lbfi;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lbfs;->w(Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbfi;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Lbfs;->v(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lbfi;->d:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, Lbfi;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lbfi;->u()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lbfi;->b()I

    move-result v1

    new-array v1, v1, [Lbfi;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbfi;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-le v3, v2, :cond_1

    aget-object v4, v0, v2

    iget-object v4, v4, Lbfi;->a:Ljava/lang/String;

    const-string v5, "xml:lang"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v0, v2

    iget-object v4, v4, Lbfi;->a:Ljava/lang/String;

    const-string v5, "rdf:type"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lbfi;->r()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    iget-object v2, p0, Lbfi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lbfi;->r()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lbfi;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lbfi;->g()Lbfs;

    move-result-object v0

    invoke-virtual {v0}, Lbfs;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Lbfi;->h()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbfi;

    invoke-virtual {v1}, Lbfi;->r()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lbfi;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lbfi;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
