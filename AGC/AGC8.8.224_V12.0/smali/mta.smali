.class abstract Lmta;
.super Lmsv;

# interfaces
.implements Lmzi;


# instance fields
.field private transient b:Lmzi;

.field final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-direct {p0, v0}, Lmta;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lmsv;-><init>()V

    iput-object p1, p0, Lmta;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lmta;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public final bridge synthetic e()Ljava/util/Set;
    .locals 1

    new-instance v0, Lmzk;

    invoke-direct {v0, p0}, Lmzk;-><init>(Lmzi;)V

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lmta;->p()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lmya;
    .locals 2

    invoke-virtual {p0}, Lmta;->c()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lmzy;

    invoke-virtual {v0}, Lmzy;->a()Lmya;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lmya;
    .locals 2

    invoke-virtual {p0}, Lmta;->o()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lmzy;

    invoke-virtual {v0}, Lmzy;->a()Lmya;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lmya;
    .locals 3

    invoke-virtual {p0}, Lmta;->c()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmzy;

    invoke-virtual {v1}, Lmzy;->a()Lmya;

    move-result-object v1

    invoke-interface {v1}, Lmya;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lmya;->a()I

    move-result v1

    invoke-static {v2, v1}, Llyh;->o(Ljava/lang/Object;I)Lmya;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lmya;
    .locals 3

    invoke-virtual {p0}, Lmta;->o()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmzy;

    invoke-virtual {v1}, Lmzy;->a()Lmya;

    move-result-object v1

    invoke-interface {v1}, Lmya;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lmya;->a()I

    move-result v1

    invoke-static {v2, v1}, Llyh;->o(Ljava/lang/Object;I)Lmya;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lmzi;
    .locals 1

    iget-object v0, p0, Lmta;->b:Lmzi;

    if-nez v0, :cond_0

    new-instance v0, Lmsz;

    invoke-direct {v0, p0}, Lmsz;-><init>(Lmta;)V

    iput-object v0, p0, Lmta;->b:Lmzi;

    :cond_0
    return-object v0
.end method

.method public abstract o()Ljava/util/Iterator;
.end method

.method public final p()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lmsv;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmsv;->e()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lmsv;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmta;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    return-object p1
.end method
