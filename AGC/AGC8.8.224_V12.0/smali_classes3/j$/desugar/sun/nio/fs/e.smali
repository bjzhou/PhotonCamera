.class final Lj$/desugar/sun/nio/fs/e;
.super Ljava/nio/channels/FileChannel;

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field final a:Ljava/nio/channels/FileChannel;

.field final b:Z

.field final c:Z

.field final d:Lj$/nio/file/Path;


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    iput-boolean p2, p0, Lj$/desugar/sun/nio/fs/e;->b:Z

    iput-boolean p3, p0, Lj$/desugar/sun/nio/fs/e;->c:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-object p4, p0, Lj$/desugar/sun/nio/fs/e;->d:Lj$/nio/file/Path;

    return-void
.end method

.method public static b(Ljava/nio/channels/FileChannel;Ljava/util/Set;Lj$/nio/file/Path;)Ljava/nio/channels/FileChannel;
    .locals 3

    instance-of v0, p0, Lj$/desugar/sun/nio/fs/e;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/desugar/sun/nio/fs/e;

    iget-object p0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/e;

    sget-object v1, Lj$/nio/file/D;->DELETE_ON_CLOSE:Lj$/nio/file/D;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Lj$/nio/file/D;->APPEND:Lj$/nio/file/D;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v0, p0, v1, p1, p2}, Lj$/desugar/sun/nio/fs/e;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object v0
.end method

.method public static c(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 3

    instance-of v0, p0, Lj$/desugar/sun/nio/fs/e;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/desugar/sun/nio/fs/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lj$/desugar/sun/nio/fs/e;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object v0
.end method


# virtual methods
.method public final force(Z)V
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method public final implCloseChannel()V
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->d:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lj$/desugar/sun/nio/fs/f;

    invoke-direct {p2, p1, p0}, Lj$/desugar/sun/nio/fs/f;-><init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/e;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 6

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final position()J
    .locals 2

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public final position(J)Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-static {p1}, Lj$/desugar/sun/nio/fs/e;->c(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/e;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(Ljava/nio/ByteBuffer;J)I
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method

.method public final size()J
    .locals 2

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 6

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 6

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final truncate(J)Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-static {p1}, Lj$/desugar/sun/nio/fs/e;->c(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/desugar/sun/nio/fs/e;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lj$/desugar/sun/nio/fs/f;

    invoke-direct {p2, p1, p0}, Lj$/desugar/sun/nio/fs/f;-><init>(Ljava/nio/channels/FileLock;Lj$/desugar/sun/nio/fs/e;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 4

    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/e;->c:Z

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/desugar/sun/nio/fs/e;->size()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final write(Ljava/nio/ByteBuffer;J)I
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    return p1
.end method

.method public final write([Ljava/nio/ByteBuffer;II)J
    .locals 1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    return-wide p1
.end method
