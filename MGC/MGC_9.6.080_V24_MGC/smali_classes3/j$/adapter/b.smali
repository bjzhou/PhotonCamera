.class public abstract synthetic Lj$/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic D()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    return-object v0
.end method

.method public static bridge synthetic b(Ljava/nio/file/FileSystem;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/nio/file/AccessMode;
    .locals 1

    sget-object v0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    return-object v0
.end method

.method public static bridge synthetic d()Ljava/nio/file/FileSystem;
    .locals 1

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Ljava/nio/file/OpenOption;
    .locals 0

    check-cast p0, Ljava/nio/file/OpenOption;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/nio/file/FileSystem;Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/nio/file/FileSystem;)Ljava/nio/file/WatchService;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/nio/file/attribute/FileTime;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/FileTime;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFilePermission;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/nio/file/FileSystem;)Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/nio/file/FileSystem;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/FileSystem;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/nio/channels/AsynchronousChannel;)V
    .locals 0

    invoke-interface {p0}, Ljava/nio/channels/AsynchronousChannel;->close()V

    return-void
.end method

.method public static bridge synthetic o(Ljava/nio/file/FileSystem;)V
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->close()V

    return-void
.end method

.method public static bridge synthetic p(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/FileTime;

    return p0
.end method

.method public static bridge synthetic q(Ljava/nio/file/FileSystem;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->isOpen()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    return-object v0
.end method

.method public static bridge synthetic s()Ljava/nio/file/AccessMode;
    .locals 1

    sget-object v0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    return-object v0
.end method

.method public static bridge synthetic t(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/PosixFilePermission;

    return p0
.end method

.method public static bridge synthetic u(Ljava/nio/file/FileSystem;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/FileSystem;->isReadOnly()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/DosFileAttributes;

    return-object v0
.end method

.method public static bridge synthetic w()Ljava/nio/file/AccessMode;
    .locals 1

    sget-object v0, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    return-object v0
.end method

.method public static bridge synthetic x(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/OpenOption;

    return p0
.end method

.method public static bridge synthetic y()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object v0
.end method

.method public static bridge synthetic z()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/AclFileAttributeView;

    return-object v0
.end method
