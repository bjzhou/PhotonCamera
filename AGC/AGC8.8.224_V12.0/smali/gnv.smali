.class public final Lgnv;
.super Ljava/lang/Object;

# interfaces
.implements Lgnt;


# instance fields
.field private final a:Lken;


# direct methods
.method public constructor <init>(Lken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnv;->a:Lken;

    return-void
.end method

.method private static final c(Ljava/util/Set;)Lmwn;
    .locals 3

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    invoke-static {v1}, Lgky;->g(Lkfj;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lgky;->f(Lkfj;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lgli;)Lmwn;
    .locals 0

    iget-object p1, p1, Lgli;->a:Lkeb;

    invoke-interface {p1}, Lkeb;->j()Lkgq;

    move-result-object p1

    iget-object p1, p1, Lkgq;->c:Lmwn;

    invoke-static {p1}, Lgnv;->c(Ljava/util/Set;)Lmwn;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkgq;)Lkgq;
    .locals 3

    iget-object v0, p1, Lkgq;->c:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lgnv;->a:Lken;

    invoke-static {v0}, Lgnv;->c(Ljava/util/Set;)Lmwn;

    move-result-object v0

    iget-object p1, p1, Lkgq;->d:Lmwn;

    invoke-interface {v1, v0, p1}, Lken;->v(Ljava/util/Set;Ljava/util/Set;)Lkgq;

    move-result-object p1

    return-object p1
.end method
