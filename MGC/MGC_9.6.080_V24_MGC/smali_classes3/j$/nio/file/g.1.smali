.class public abstract synthetic Lj$/nio/file/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Ljava/nio/file/Path;)I
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/nio/file/Path;Ljava/lang/Object;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/nio/file/Path;Ljava/nio/file/Path;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Ljava/nio/file/Path;)Ljava/io/File;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/nio/file/Path;)Ljava/net/URI;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/nio/file/LinkOption;
    .locals 1

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static bridge synthetic j(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/nio/file/Path;I)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/nio/file/Path;II)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/nio/file/Path;Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/nio/file/Path;Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/nio/file/Path;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->isAbsolute()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic t(Ljava/nio/file/Path;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->endsWith(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Ljava/nio/file/FileSystem;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getFileStores()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Ljava/nio/file/Path;Ljava/lang/String;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
