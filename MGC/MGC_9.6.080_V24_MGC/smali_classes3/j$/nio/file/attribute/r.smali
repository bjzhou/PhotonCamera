.class public abstract synthetic Lj$/nio/file/attribute/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic B()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic C()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic D()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic a(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/nio/file/attribute/FileOwnerAttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/nio/file/attribute/PosixFileAttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/PosixFileAttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/attribute/UserDefinedFileAttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/UserDefinedFileAttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Lj$/nio/file/w;)Ljava/nio/file/DirectoryStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/nio/file/spi/FileSystemProvider;Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/nio/file/spi/FileSystemProvider;Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Ljava/nio/file/attribute/AclFileAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/AclFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/nio/file/attribute/PosixFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/lang/Object;)Ljava/nio/file/attribute/GroupPrincipal;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/GroupPrincipal;

    return-object p0
.end method

.method public static bridge synthetic o()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic p(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/nio/file/spi/FileSystemProvider;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V

    return-void
.end method

.method public static bridge synthetic q(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static bridge synthetic r(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/AclFileAttributeView;

    return p0
.end method

.method public static bridge synthetic t(Ljava/nio/file/spi/FileSystemProvider;Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Ljava/security/Principal;Ljavax/security/auth/Subject;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/security/Principal;->implies(Ljavax/security/auth/Subject;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic w(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/GroupPrincipal;

    return p0
.end method

.method public static bridge synthetic x()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic y()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method public static bridge synthetic z()Ljava/nio/file/attribute/PosixFilePermission;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method
