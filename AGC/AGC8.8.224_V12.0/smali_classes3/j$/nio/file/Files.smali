.class public final Lj$/nio/file/Files;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Set;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lj$/nio/file/D;->CREATE_NEW:Lj$/nio/file/D;

    sget-object v1, Lj$/nio/file/D;->WRITE:Lj$/nio/file/D;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/desugar/sun/nio/fs/g;->c([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/nio/file/Files;->a:Ljava/util/Set;

    return-void
.end method

.method private static varargs a(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/nio/file/spi/c;->c(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    sget-object v1, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_1
    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v1, v0}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    invoke-interface {p0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    throw p1
.end method

.method public static varargs b(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 6

    array-length v0, p1

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should not get here"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object p1

    invoke-virtual {p1}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object p1

    new-array v1, v0, [Lj$/nio/file/b;

    invoke-virtual {p1, p0, v1}, Lj$/nio/file/spi/c;->a(Lj$/nio/file/Path;[Lj$/nio/file/b;)V

    goto :goto_1

    :cond_3
    const-class p1, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v1, v2, [Lj$/nio/file/LinkOption;

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v3, v1, v0

    invoke-static {p0, p1, v1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :catch_0
    return v0
.end method

.method public static varargs createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lj$/nio/file/Files;->a(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0}, Lj$/nio/file/Path;->toAbsolutePath()Lj$/nio/file/Path;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object v3

    invoke-virtual {v3}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/nio/file/b;

    invoke-virtual {v3, v2, v4}, Lj$/nio/file/spi/c;->a(Lj$/nio/file/Path;[Lj$/nio/file/b;)V
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    invoke-interface {v2}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v2

    goto :goto_1

    :cond_0
    :goto_2
    if-nez v2, :cond_2

    if-nez v1, :cond_1

    new-instance p1, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to determine if root directory exists"

    invoke-direct {p1, p0, v0, v1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v1

    :cond_2
    invoke-interface {v2, p0}, Lj$/nio/file/Path;->w(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/nio/file/Path;

    invoke-interface {v2, v1}, Lj$/nio/file/Path;->o(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v2

    invoke-static {v2, p1}, Lj$/nio/file/Files;->a(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    goto :goto_3

    :cond_3
    return-object p0

    :catch_3
    move-exception p0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static varargs createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object v0

    sget-object v1, Lj$/nio/file/Files;->a:Ljava/util/Set;

    invoke-virtual {v0, p0, v1, p1}, Lj$/nio/file/spi/c;->q(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V

    return-object p0
.end method

.method public static newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object v0

    sget-object v1, Lj$/nio/file/n;->a:Lj$/nio/file/n;

    invoke-virtual {v0, p0, v1}, Lj$/nio/file/spi/c;->r(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Lj$/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/nio/file/k;->j()Lj$/nio/file/spi/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/c;->x(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method
