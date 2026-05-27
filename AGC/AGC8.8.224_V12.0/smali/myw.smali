.class final Lmyw;
.super Lmwn;


# instance fields
.field public final transient a:[Ljava/lang/Object;

.field public final transient b:I

.field public final transient c:I

.field private final transient d:Lmwa;


# direct methods
.method public constructor <init>(Lmwa;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lmwn;-><init>()V

    iput-object p1, p0, Lmyw;->d:Lmwa;

    iput-object p2, p0, Lmyw;->a:[Ljava/lang/Object;

    iput p3, p0, Lmyw;->b:I

    iput p4, p0, Lmyw;->c:I

    return-void
.end method


# virtual methods
.method public final C()Lmvv;
    .locals 1

    new-instance v0, Lmyv;

    invoke-direct {v0, p0}, Lmyv;-><init>(Lmyw;)V

    return-object v0
.end method

.method public final cA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lmyw;->d:Lmwa;

    invoke-virtual {v2, v0}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final cz()Lnac;
    .locals 1

    invoke-virtual {p0}, Lmvm;->v()Lmvv;

    move-result-object v0

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmyw;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lmyw;->c:I

    return v0
.end method

.method public final x([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lmvm;->v()Lmvv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmvm;->x([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
