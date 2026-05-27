.class public final Lgnw;
.super Ljava/lang/Object;

# interfaces
.implements Lgnt;


# instance fields
.field private final a:Lken;

.field private final b:Ljava/util/Map;

.field private final c:Lmqp;


# direct methods
.method public constructor <init>(Lken;Ljava/util/Map;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnw;->a:Lken;

    iput-object p2, p0, Lgnw;->b:Ljava/util/Map;

    iput-object p3, p0, Lgnw;->c:Lmqp;

    return-void
.end method

.method public static synthetic b$001(Lgli;)Lkfj;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lgli;->b()Lkfj;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b$002(Lgli;)Lkfj;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lgli;->b()Lkfj;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$004(Lkfj;)Lkll;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkfj;->c()Lkll;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c$009(Lkfj;)Lkll;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkfj;->c()Lkll;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic equals$010(Lkll;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic f$012(Lmwl;)Lmwn;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lmwl;->f()Lmwn;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g$011(Lmwl;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lmwl;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic getClass$003(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic hasNext$007(Ljava/util/Iterator;)Z
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public static synthetic iterator$006(Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j$005(Lkeb;)Lkgq;
    .locals 1

    invoke-interface/range {p0 .. p0}, Lkeb;->j()Lkgq;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic next$008(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lgli;)Lmwn;
    .locals 5

    const v1, 0x0

    return-object v1
.end method

.method public final b(Lkgq;)Lkgq;
    .locals 9

    iget-object v0, p1, Lkgq;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lgml;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v2, p0, Lgnw;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgnw;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lgnw;->b:Ljava/util/Map;

    sget-object v3, Lgml;->c:Lgml;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lkfj;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfj;

    invoke-static {v3}, Lgky;->g(Lkfj;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lkfj;->c()Lkll;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkfj;->c()Lkll;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lgml;->a:Lgml;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v4, Lgml;->a:Lgml;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lgml;->a:Lgml;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lgky;->f(Lkfj;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lgml;->i:Lgml;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Lkfj;->a()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x23

    cmp-long v8, v4, v6

    if-eqz v8, :cond_6

    const-wide/16 v6, 0x27

    cmp-long v8, v4, v6

    if-eqz v8, :cond_6

    const-wide/16 v6, 0x28

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    :cond_6
    sget-object v4, Lgml;->m:Lgml;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lgnw;->a:Lken;

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lkgq;->d:Lmwn;

    invoke-interface {v0, v2, p1}, Lken;->v(Ljava/util/Set;Ljava/util/Set;)Lkgq;

    move-result-object p1

    return-object p1
.end method
