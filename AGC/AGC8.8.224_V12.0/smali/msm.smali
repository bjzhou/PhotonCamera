.class final Lmsm;
.super Lmsk;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lmsn;


# direct methods
.method public constructor <init>(Lmsn;)V
    .locals 0

    iput-object p1, p0, Lmsm;->d:Lmsn;

    invoke-direct {p0, p1}, Lmsk;-><init>(Lmsl;)V

    return-void
.end method

.method public constructor <init>(Lmsn;I)V
    .locals 1

    iput-object p1, p0, Lmsm;->d:Lmsn;

    invoke-virtual {p1}, Lmsn;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmsk;-><init>(Lmsl;Ljava/util/Iterator;)V

    return-void
.end method

.method private final b()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lmsk;->a()V

    iget-object v0, p0, Lmsk;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmsm;->d:Lmsn;

    invoke-virtual {v0}, Lmsn;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lmsm;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lmsm;->d:Lmsn;

    iget-object p1, p1, Lmsn;->f:Lmsp;

    invoke-static {p1}, Lmsp;->l(Lmsp;)V

    if-eqz v0, :cond_0

    iget-object p1, p0, Lmsm;->d:Lmsn;

    invoke-virtual {p1}, Lmsl;->a()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lmsm;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-direct {p0}, Lmsm;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lmsm;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-direct {p0}, Lmsm;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lmsm;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
