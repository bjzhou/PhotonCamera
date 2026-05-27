.class public final synthetic Lj$/nio/channels/b;
.super Ljava/nio/channels/AsynchronousFileChannel;


# instance fields
.field public final synthetic a:Lj$/nio/channels/c;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/channels/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/AsynchronousFileChannel;-><init>()V

    iput-object p1, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    return-void
.end method

.method public static synthetic b(Lj$/nio/channels/c;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/channels/a;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/channels/a;

    iget-object p0, p0, Lj$/nio/channels/a;->b:Ljava/nio/channels/AsynchronousFileChannel;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/channels/b;

    invoke-direct {v0, p0}, Lj$/nio/channels/b;-><init>(Lj$/nio/channels/c;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    check-cast v0, Lj$/nio/channels/a;

    invoke-virtual {v0}, Lj$/nio/channels/a;->close()V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    instance-of v1, p1, Lj$/nio/channels/b;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/channels/b;

    iget-object p1, p1, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic force(Z)V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-virtual {v0, p1}, Lj$/nio/channels/c;->b(Z)V

    return-void
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isOpen()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    check-cast v0, Lj$/nio/channels/a;

    invoke-virtual {v0}, Lj$/nio/channels/a;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final synthetic lock(JJZ)Ljava/util/concurrent/Future;
    .locals 6

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lj$/nio/channels/c;->c(JJZ)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 8

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-static {p7}, Lj$/nio/channels/d;->b(Ljava/nio/channels/CompletionHandler;)Lj$/nio/channels/f;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lj$/nio/channels/c;->d(JJZLjava/lang/Object;Lj$/nio/channels/f;)V

    return-void
.end method

.method public final synthetic read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/channels/c;->e(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 6

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-static {p5}, Lj$/nio/channels/d;->b(Ljava/nio/channels/CompletionHandler;)Lj$/nio/channels/f;

    move-result-object v5

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lj$/nio/channels/c;->f(Ljava/nio/ByteBuffer;JLjava/lang/Object;Lj$/nio/channels/f;)V

    return-void
.end method

.method public final synthetic size()J
    .locals 2

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-virtual {v0}, Lj$/nio/channels/c;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic truncate(J)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-virtual {v0, p1, p2}, Lj$/nio/channels/c;->g(J)Lj$/nio/channels/c;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/channels/b;->b(Lj$/nio/channels/c;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lj$/nio/channels/c;->h(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/channels/c;->i(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 6

    iget-object v0, p0, Lj$/nio/channels/b;->a:Lj$/nio/channels/c;

    invoke-static {p5}, Lj$/nio/channels/d;->b(Ljava/nio/channels/CompletionHandler;)Lj$/nio/channels/f;

    move-result-object v5

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lj$/nio/channels/c;->j(Ljava/nio/ByteBuffer;JLjava/lang/Object;Lj$/nio/channels/f;)V

    return-void
.end method
