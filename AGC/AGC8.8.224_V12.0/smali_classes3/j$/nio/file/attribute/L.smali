.class public final synthetic Lj$/nio/file/attribute/L;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/attribute/N;


# instance fields
.field public final synthetic a:Ljava/nio/file/attribute/PosixFileAttributes;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/attribute/PosixFileAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/attribute/PosixFileAttributes;)Lj$/nio/file/attribute/N;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/M;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/M;

    iget-object p0, p0, Lj$/nio/file/attribute/M;->a:Lj$/nio/file/attribute/N;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/L;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/L;-><init>(Ljava/nio/file/attribute/PosixFileAttributes;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b()Lj$/nio/file/attribute/H;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/F;->a(Ljava/nio/file/attribute/GroupPrincipal;)Lj$/nio/file/attribute/H;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lj$/nio/file/attribute/V;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/T;->a(Ljava/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/V;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic creationTime()Lj$/nio/file/attribute/E;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/attribute/L;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/attribute/L;

    iget-object p1, p1, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isDirectory()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final synthetic isOther()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public final synthetic isRegularFile()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public final synthetic isSymbolicLink()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public final synthetic lastAccessTime()Lj$/nio/file/attribute/E;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic lastModifiedTime()Lj$/nio/file/attribute/E;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/attribute/t;->b(Ljava/nio/file/attribute/FileTime;)Lj$/nio/file/attribute/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/L;->a:Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
