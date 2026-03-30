.class final Lj$/desugar/sun/nio/fs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/attribute/e;


# static fields
.field static final b:Ljava/util/HashSet;


# instance fields
.field private final a:Lj$/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v5, "isDirectory"

    const-string v6, "isRegularFile"

    const-string v0, "size"

    const-string v1, "creationTime"

    const-string v2, "lastAccessTime"

    const-string v3, "lastModifiedTime"

    const-string v4, "fileKey"

    const-string v7, "isSymbolicLink"

    const-string v8, "isOther"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lj$/desugar/sun/nio/fs/q;->b:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lj$/desugar/sun/nio/fs/b;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lj$/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final a(Lj$/nio/file/attribute/w;Lj$/nio/file/attribute/w;Lj$/nio/file/attribute/w;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    invoke-interface {p2}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/j;

    move-result-object p3

    invoke-virtual {p3}, Lj$/nio/file/j;->k()Lj$/nio/file/spi/d;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Lj$/nio/file/a;

    sget-object v1, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p3, p2, v0}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lj$/nio/file/attribute/w;->C(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "File.setLastModified did not succeed on "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    const-string v0, "basic"

    return-object v0
.end method

.method public final readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/j;

    move-result-object v2

    invoke-virtual {v2}, Lj$/nio/file/j;->k()Lj$/nio/file/spi/d;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lj$/nio/file/a;

    invoke-virtual {v2, v1, v4}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    invoke-interface {v1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v2}, Lj$/nio/file/attribute/w;->r(JLjava/util/concurrent/TimeUnit;)Lj$/nio/file/attribute/w;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v10

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v2

    move v12, v4

    goto :goto_1

    :catch_0
    nop

    const/4 v12, 0x0

    :goto_1
    new-instance v4, Lj$/desugar/sun/nio/fs/c;

    if-nez v10, :cond_1

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v6, v4

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v6 .. v16}, Lj$/desugar/sun/nio/fs/c;-><init>(Lj$/nio/file/attribute/w;Lj$/nio/file/attribute/w;Lj$/nio/file/attribute/w;ZZZZJLjava/lang/Integer;)V

    return-object v4
.end method
