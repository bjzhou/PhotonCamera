.class public abstract synthetic Lj$/nio/file/attribute/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    return p0
.end method

.method public static bridge synthetic C(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return p0
.end method

.method public static bridge synthetic a(Ljava/nio/file/attribute/BasicFileAttributes;)J
    .locals 2

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic b(Ljava/nio/file/attribute/FileTime;)J
    .locals 2

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/nio/file/attribute/FileAttribute;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/attribute/AttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/AttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/attribute/BasicFileAttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Ljava/nio/file/attribute/DosFileAttributeView;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributeView;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Ljava/nio/file/attribute/FileAttribute;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/nio/file/attribute/BasicFileAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/nio/file/attribute/BasicFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/nio/file/attribute/DosFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Ljava/lang/Object;)Ljava/nio/file/attribute/DosFileAttributes;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributes;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/nio/file/attribute/FileOwnerAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object p0
.end method

.method public static bridge synthetic n(J)Ljava/nio/file/attribute/FileTime;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFileAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/lang/Object;)Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/PosixFileAttributes;

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/lang/Object;)Ljava/nio/file/attribute/UserDefinedFileAttributeView;
    .locals 0

    check-cast p0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/nio/file/attribute/BasicFileAttributeView;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public static bridge synthetic t(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/DosFileAttributes;

    return p0
.end method

.method public static bridge synthetic u(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/PosixFileAttributes;

    return p0
.end method

.method public static bridge synthetic x(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/FileTime;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    return p0
.end method
