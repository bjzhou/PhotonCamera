.class public abstract Lmvk;
.super Lmwa;

# interfaces
.implements Lj$/util/Map;
.implements Lmtc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmwa;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvk;
    .locals 3

    invoke-static {p0, p1}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2, p3}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4, p5}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lmyt;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p1, 0x4

    aput-object p4, v1, p1

    const/4 p1, 0x5

    aput-object p5, v1, p1

    invoke-direct {v0, v1, p0}, Lmyt;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvk;
    .locals 3

    invoke-static {p0, p1}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2, p3}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p4, p5}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p6, p7}, Llkj;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lmyt;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p1, 0x5

    aput-object p5, v1, p1

    const/4 p1, 0x6

    aput-object p6, v1, p1

    const/4 p1, 0x7

    aput-object p7, v1, p1

    invoke-direct {v0, v1, p0}, Lmyt;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()Lmvk;
.end method

.method public final bridge synthetic d()Lmvm;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic e()Lmtc;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic f()Lmvm;
    .locals 1

    invoke-virtual {p0}, Lmvk;->h()Lmwn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()Lmwn;
    .locals 1

    invoke-virtual {p0}, Lmvk;->a()Lmvk;

    move-result-object v0

    invoke-virtual {v0}, Lmwa;->s()Lmwn;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lmvk;->h()Lmwn;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lmvj;

    invoke-direct {v0, p0}, Lmvj;-><init>(Lmvk;)V

    return-object v0
.end method
