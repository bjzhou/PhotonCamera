.class public final Lfws;
.super Lkoy;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkpb;)V
    .locals 0

    invoke-direct {p0, p1}, Lkoy;-><init>(Lkpb;)V

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lfws;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lkpb;Lnou;)V
    .locals 1

    invoke-direct {p0, p1}, Lfws;-><init>(Lkpb;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lfws;->a:Ljava/util/Map;

    sget-object v0, Lfwr;->a:Lfwq;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final k()Lnou;
    .locals 1

    sget-object v0, Lfwr;->a:Lfwq;

    invoke-virtual {p0, v0}, Lfws;->l(Lfwq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    return-object v0
.end method

.method public final l(Lfwq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfws;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfws;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, Lkoy;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
