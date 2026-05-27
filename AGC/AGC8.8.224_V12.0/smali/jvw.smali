.class public final Ljvw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgnl;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lgnl;-><init>(I)V

    sput-object v0, Ljvw;->a:Lkad;

    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljvs;
    .locals 1

    new-instance v0, Ljvr;

    invoke-direct {v0, p0}, Ljvr;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs b([Ljvs;)Ljvs;
    .locals 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/Collection;)Ljvs;
    .locals 1

    invoke-static {p0}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object p0

    sget-object v0, Lhop;->g:Lhop;

    invoke-static {p0, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d([Ljvs;)Ljvs;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljvw;->c(Ljava/util/Collection;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljvs;Ljava/lang/Comparable;)Ljvs;
    .locals 2

    new-instance v0, Lhga;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lhga;-><init>(Ljava/lang/Comparable;I)V

    invoke-static {p0, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/Collection;)Ljvs;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {p0}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object p0

    sget-object v0, Lhop;->i:Lhop;

    invoke-static {p0, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;)Ljvs;
    .locals 1

    new-instance v0, Ljvu;

    invoke-direct {v0, p0}, Ljvu;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h(Ljava/util/Collection;)Ljvs;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {p0}, Ljvw;->a(Ljava/util/Collection;)Ljvs;

    move-result-object p0

    sget-object v0, Lhop;->h:Lhop;

    invoke-static {p0, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i([Ljvs;)Ljvs;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljvw;->h(Ljava/util/Collection;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljvs;Lmqi;)Ljvs;
    .locals 1

    new-instance v0, Ljvt;

    invoke-direct {v0, p0, p1, p0}, Ljvt;-><init>(Ljvs;Lmqi;Ljvs;)V

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljvs;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lkad;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Liiz;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Liiz;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {p0, v0, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljvs;Lkai;)Lkad;
    .locals 1

    invoke-static {}, Lnsy;->q()Lnow;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p0

    return-object p0
.end method
