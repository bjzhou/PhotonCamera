.class abstract Lmwc;
.super Lmwn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmwn;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use EntrySetSerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()Lmwa;
.end method

.method public final cA()Z
    .locals 1

    invoke-virtual {p0}, Lmwc;->a()Lmwa;

    move-result-object v0

    invoke-virtual {v0}, Lmwa;->cE()Z

    move-result v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lmwc;->a()Lmwa;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lmwc;->a()Lmwa;

    move-result-object v0

    invoke-virtual {v0}, Lmwa;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lmwc;->a()Lmwa;

    move-result-object v0

    invoke-virtual {v0}, Lmwa;->size()I

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lmwb;

    invoke-virtual {p0}, Lmwc;->a()Lmwa;

    move-result-object v1

    invoke-direct {v0, v1}, Lmwb;-><init>(Lmwa;)V

    return-object v0
.end method
