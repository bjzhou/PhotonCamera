.class public final Loko;
.super Lojt;

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lokj;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lokj;

    invoke-direct {v0}, Lokj;-><init>()V

    invoke-direct {p0, v0}, Loko;-><init>(Lokj;)V

    return-void
.end method

.method public constructor <init>(Lokj;)V
    .locals 0

    invoke-direct {p0}, Lojt;-><init>()V

    iput-object p1, p0, Loko;->a:Lokj;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Loko;->a:Lokj;

    iget-boolean v0, v0, Lokj;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lokm;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lokm;-><init>(Ljava/util/Collection;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The set cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    iget v0, v0, Lokj;->e:I

    return v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0, p1}, Lokj;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0}, Lokj;->f()V

    invoke-super {p0, p1}, Lojt;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0}, Lokj;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0, p1}, Lokj;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0}, Lokj;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0}, Lokj;->l()Loki;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0, p1}, Lokj;->d(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0}, Lokj;->f()V

    invoke-super {p0, p1}, Lojt;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loko;->a:Lokj;

    invoke-virtual {v0}, Lokj;->f()V

    invoke-super {p0, p1}, Lojt;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
