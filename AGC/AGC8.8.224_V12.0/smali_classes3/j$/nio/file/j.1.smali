.class public final synthetic Lj$/nio/file/j;
.super Ljava/nio/file/FileSystem;


# instance fields
.field public final synthetic a:Lj$/nio/file/k;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    iput-object p1, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    return-void
.end method

.method public static synthetic b(Lj$/nio/file/k;)Ljava/nio/file/FileSystem;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/i;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/i;

    iget-object p0, p0, Lj$/nio/file/i;->a:Ljava/nio/file/FileSystem;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/j;

    invoke-direct {v0, p0}, Lj$/nio/file/j;-><init>(Lj$/nio/file/k;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->close()V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    instance-of v1, p1, Lj$/nio/file/j;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/j;

    iget-object p1, p1, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getFileStores()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->b()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/k;->c(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/t;->a(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0, p1}, Lj$/nio/file/k;->d(Ljava/lang/String;)Lj$/nio/file/B;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/A;->a(Lj$/nio/file/B;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    return-object p1
.end method

.method public final getRootDirectories()Ljava/lang/Iterable;
    .locals 2

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->e()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lj$/nio/file/x;

    invoke-direct {v1, v0}, Lj$/nio/file/x;-><init>(Ljava/lang/Iterable;)V

    return-object v1
.end method

.method public final synthetic getSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->g()Lj$/nio/file/attribute/Y;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/X;->a(Lj$/nio/file/attribute/Y;)Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isOpen()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final synthetic isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->h()Z

    move-result v0

    return v0
.end method

.method public final synthetic newWatchService()Ljava/nio/file/WatchService;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->i()Lj$/nio/file/U;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/T;->b(Lj$/nio/file/U;)Ljava/nio/file/WatchService;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/spi/b;->a(Lj$/nio/file/spi/c;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic supportedFileAttributeViews()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/j;->a:Lj$/nio/file/k;

    invoke-virtual {v0}, Lj$/nio/file/k;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
