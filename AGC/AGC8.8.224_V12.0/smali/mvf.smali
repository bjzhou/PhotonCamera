.class public final Lmvf;
.super Lmsy;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    invoke-static {v0}, Lmtq;->e(I)Lmtq;

    move-result-object v0

    invoke-direct {p0, v0}, Lmsy;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x2

    iput v0, p0, Lmvf;->e:I

    const/4 v1, 0x1

    invoke-static {v1}, Lmoz;->e(Z)V

    iput v0, p0, Lmvf;->e:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x2

    iput v0, p0, Lmvf;->e:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lmtq;->e(I)Lmtq;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmsp;->k(Ljava/util/Map;)V

    invoke-static {p0, p1, v0}, Lmjy;->G(Lmxy;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method public static v()Lmvf;
    .locals 1

    new-instance v0, Lmvf;

    invoke-direct {v0}, Lmvf;-><init>()V

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

    iget v0, p0, Lmvf;->e:I

    new-instance v1, Lmts;

    invoke-direct {v1, v0}, Lmts;-><init>(I)V

    return-object v1
.end method
