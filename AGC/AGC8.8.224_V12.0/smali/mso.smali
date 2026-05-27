.class final Lmso;
.super Lmsl;

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic f:Lmsp;


# direct methods
.method public constructor <init>(Lmsp;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1

    iput-object p1, p0, Lmso;->f:Lmsp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmsl;-><init>(Lmsp;Ljava/lang/Object;Ljava/util/Collection;Lmsl;)V

    return-void
.end method


# virtual methods
.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lmsl;->size()I

    move-result v0

    iget-object v1, p0, Lmso;->b:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Lmjy;->D(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmso;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lmso;->f:Lmsp;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lmsp;->n(Lmsp;I)V

    invoke-virtual {p0}, Lmsl;->c()V

    :cond_1
    return p1
.end method
