.class public final Lmtb;
.super Lmsa;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lmtb;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-static {p1}, Lmtq;->e(I)Lmtq;

    move-result-object p1

    invoke-direct {p0, p1}, Lmsa;-><init>(Ljava/util/Map;)V

    const-string p1, "expectedValuesPerKey"

    invoke-static {p2, p1}, Llkj;->v(ILjava/lang/String;)V

    iput p2, p0, Lmtb;->e:I

    return-void
.end method

.method private constructor <init>(Lmxy;)V
    .locals 2

    invoke-interface {p1}, Lmxy;->r()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lmtb;

    iget v1, v1, Lmtb;->e:I

    invoke-direct {p0, v0, v1}, Lmtb;-><init>(II)V

    check-cast p1, Lmst;

    iget-object v0, p1, Lmst;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lmxz;

    invoke-direct {v0, p1}, Lmxz;-><init>(Lmst;)V

    iput-object v0, p1, Lmst;->c:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lmst;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x3

    iput v0, p0, Lmtb;->e:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-instance v1, Lmtq;

    invoke-direct {v1}, Lmtq;-><init>()V

    invoke-virtual {p0, v1}, Lmsp;->k(Ljava/util/Map;)V

    invoke-static {p0, p1, v0}, Lmjy;->G(Lmxy;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method public static v()Lmtb;
    .locals 3

    new-instance v0, Lmtb;

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lmtb;-><init>(II)V

    return-object v0
.end method

.method public static w(Lmxy;)Lmtb;
    .locals 1

    new-instance v0, Lmtb;

    invoke-direct {v0, p0}, Lmtb;-><init>(Lmxy;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lmjy;->I(Lmxy;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lmtb;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
