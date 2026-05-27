.class final Lmwe;
.super Lmwz;


# instance fields
.field private final a:Lmwa;


# direct methods
.method public constructor <init>(Lmwa;)V
    .locals 0

    invoke-direct {p0}, Lmwz;-><init>()V

    iput-object p1, p0, Lmwe;->a:Lmwa;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmwe;->a:Lmwa;

    invoke-virtual {v0}, Lmwa;->r()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmvm;->v()Lmvv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final cA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmwe;->a:Lmwa;

    invoke-virtual {v0, p1}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final cz()Lnac;
    .locals 1

    iget-object v0, p0, Lmwe;->a:Lmwa;

    invoke-virtual {v0}, Lmwa;->cD()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmwz;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmwe;->a:Lmwa;

    invoke-virtual {v0}, Lmwa;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmwd;

    iget-object v1, p0, Lmwe;->a:Lmwa;

    invoke-direct {v0, v1}, Lmwd;-><init>(Lmwa;)V

    return-object v0
.end method
