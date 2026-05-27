.class public final synthetic Lj$/nio/file/attribute/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributes;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/N;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/N;)Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/L;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/L;

    iget-object p0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/M;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/M;-><init>(Lj$/nio/file/attribute/N;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->creationTime()Lj$/nio/file/attribute/E;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    instance-of v1, p1, Lj$/nio/file/attribute/M;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/M;

    iget-object p1, p1, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic group()Ljava/nio/file/attribute/GroupPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->b()Lj$/nio/file/attribute/H;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/G;->a(Lj$/nio/file/attribute/H;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->isOther()Z

    move-result v0

    return v0
.end method

.method public final synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public final synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public final synthetic lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->lastAccessTime()Lj$/nio/file/attribute/E;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->lastModifiedTime()Lj$/nio/file/attribute/E;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->d(Lj$/nio/file/attribute/E;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic owner()Ljava/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->c()Lj$/nio/file/attribute/V;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/U;->a(Lj$/nio/file/attribute/V;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic permissions()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    check-cast v0, Lj$/nio/file/attribute/L;

    invoke-virtual {v0}, Lj$/nio/file/attribute/L;->size()J

    move-result-wide v0

    return-wide v0
.end method
