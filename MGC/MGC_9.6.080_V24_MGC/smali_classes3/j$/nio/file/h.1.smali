.class public final synthetic Lj$/nio/file/h;
.super Lj$/nio/file/j;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/nio/file/FileSystem;


# direct methods
.method private constructor <init>(Ljava/nio/file/FileSystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    return-void
.end method

.method public static synthetic m(Ljava/nio/file/FileSystem;)Lj$/nio/file/j;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/i;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/i;

    iget-object p0, p0, Lj$/nio/file/i;->a:Lj$/nio/file/j;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/h;

    invoke-direct {v0, p0}, Lj$/nio/file/h;-><init>(Ljava/nio/file/FileSystem;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/nio/file/g;->v(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->o(Ljava/nio/file/FileSystem;)V

    return-void
.end method

.method public final synthetic d(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0, p1, p2}, Lj$/adapter/b;->f(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/u;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Ljava/lang/String;)Lj$/nio/file/D;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0, p1}, Lj$/adapter/b;->g(Ljava/nio/file/FileSystem;Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/B;->b(Ljava/nio/file/PathMatcher;)Lj$/nio/file/D;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    instance-of v1, p1, Lj$/nio/file/h;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/h;

    iget-object p1, p1, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/Iterable;
    .locals 2

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/nio/file/g;->e(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lj$/nio/file/z;

    invoke-direct {v1, v0}, Lj$/nio/file/z;-><init>(Ljava/lang/Iterable;)V

    return-object v1
.end method

.method public final synthetic g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->b(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lj$/nio/file/attribute/F;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->k(Ljava/nio/file/FileSystem;)Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/F;->a(Ljava/nio/file/attribute/UserPrincipalLookupService;)Lj$/nio/file/attribute/F;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic i()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->u(Ljava/nio/file/FileSystem;)Z

    move-result v0

    return v0
.end method

.method public final synthetic isOpen()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->q(Ljava/nio/file/FileSystem;)Z

    move-result v0

    return v0
.end method

.method public final synthetic j()Lj$/nio/file/M;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->h(Ljava/nio/file/FileSystem;)Ljava/nio/file/WatchService;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/M;->c(Ljava/nio/file/WatchService;)Lj$/nio/file/M;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k()Lj$/nio/file/spi/d;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->l(Ljava/nio/file/FileSystem;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/spi/b;->B(Ljava/nio/file/spi/FileSystemProvider;)Lj$/nio/file/spi/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/h;->a:Ljava/nio/file/FileSystem;

    invoke-static {v0}, Lj$/adapter/b;->m(Ljava/nio/file/FileSystem;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
