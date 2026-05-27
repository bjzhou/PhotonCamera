.class Lmzj;
.super Lmye;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field public final a:Lmzi;


# direct methods
.method public constructor <init>(Lmzi;)V
    .locals 0

    invoke-direct {p0}, Lmye;-><init>()V

    iput-object p1, p0, Lmzj;->a:Lmzi;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lmyb;
    .locals 1

    iget-object v0, p0, Lmzj;->a:Lmzi;

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lmzj;->a:Lmzi;

    invoke-interface {v0}, Lmzi;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmzj;->a:Lmzi;

    invoke-interface {v0}, Lmzi;->j()Lmya;

    move-result-object v0

    invoke-static {v0}, Lmjy;->w(Lmya;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->p()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    invoke-interface {v0}, Lmzi;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lmyc;

    invoke-direct {v1, v0}, Lmyc;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmzj;->a:Lmzi;

    invoke-interface {v0}, Lmzi;->k()Lmya;

    move-result-object v0

    invoke-static {v0}, Lmjy;->w(Lmya;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lmzi;->q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->p()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lmzj;->a:Lmzi;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lmzi;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->p()Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
