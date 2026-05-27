.class public synthetic Lllj;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lkyb;

    invoke-direct {p1}, Lkyb;-><init>()V

    new-instance p1, Lkyb;

    invoke-direct {p1}, Lkyb;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Llof;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Llof;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-interface {p0}, Llof;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static c(Ljava/lang/String;)Lluq;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lluq;

    const/16 v1, 0xb

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lluq;-><init>([B)V

    invoke-virtual {v0}, Lluq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "encodedId has superfluous padding: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs d([Lkwx;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-interface {v1}, Lkwx;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lkrn;)Lnyy;
    .locals 2

    invoke-interface {p0}, Lkrn;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnzs;->b(J)Lnyy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static f(Lnyy;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lnzs;->c(Lnyy;)V

    iget-wide v0, p0, Lnyy;->a:J

    iget p0, p0, Lnyy;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    sget-object v0, Lnzs;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xf4240

    rem-int v1, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    div-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "%1$03d"

    invoke-static {v1, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    rem-int/lit16 v0, p0, 0x3e8

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "%1$06d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "%1$09d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, "Z"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lkxn;)Lkxm;
    .locals 11

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x8

    cmp-long v6, v0, v4

    if-ltz v6, :cond_4

    iget-wide v0, p0, Lkxn;->d:J

    iget-object v6, p0, Lkxn;->a:Ljava/io/FileInputStream;

    invoke-static {v6}, Lllj;->j(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v6

    iget-wide v7, p0, Lkxn;->b:J

    add-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lkxn;->a:Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v0, v6

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    const-wide/16 v6, 0x10

    cmp-long v10, v0, v6

    if-ltz v10, :cond_1

    iget-wide v0, p0, Lkxn;->d:J

    add-long/2addr v0, v4

    iget-object v4, p0, Lkxn;->a:Ljava/io/FileInputStream;

    invoke-static {v4}, Lllj;->j(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v4

    iget-wide v5, p0, Lkxn;->b:J

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object p0, p0, Lkxn;->a:Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    cmp-long p0, v0, v8

    if-ltz p0, :cond_0

    new-instance p0, Lkxm;

    invoke-direct {p0, v0, v1, v3}, Lkxm;-><init>(JZ)V

    return-object p0

    :cond_0
    new-instance p0, Lkxk;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "64-bit box size too large: 0x%x"

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lkxk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lkxk;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "64-bit box too small just %s bytes remaining"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkxk;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v3, v0, v8

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    :goto_0
    new-instance p0, Lkxm;

    invoke-direct {p0, v0, v1, v2}, Lkxm;-><init>(JZ)V

    return-object p0

    :cond_4
    new-instance v0, Lkxk;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "Box too small: remaining=%s"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkxk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Lkxn;)Lkxn;
    .locals 5

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {p0}, Lllj;->g(Lkxn;)Lkxm;

    move-result-object v0

    iget-wide v0, v0, Lkxm;->a:J

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lkxn;->b()Lkxn;

    move-result-object v2

    iget-wide v3, v2, Lkxn;->d:J

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lkxn;->d(J)V

    iget-wide v3, p0, Lkxn;->d:J

    add-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lkxn;->e(J)V

    invoke-virtual {v2}, Lkxn;->c()Lkxn;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v2, Lkxo;

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Lkxo;-><init>(JJ)V

    throw v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lkxn;)[B
    .locals 7

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x8

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v2}, Lmoz;->e(Z)V

    invoke-virtual {p0}, Lkxn;->b()Lkxn;

    move-result-object v0

    iget-wide v1, p0, Lkxn;->d:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lkxn;->e(J)V

    iget-wide v1, v0, Lkxn;->d:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lkxn;->d(J)V

    invoke-virtual {v0}, Lkxn;->c()Lkxn;

    move-result-object p0

    iget-object v0, p0, Lkxn;->a:Ljava/io/FileInputStream;

    invoke-static {v0}, Lllj;->j(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-wide v1, p0, Lkxn;->b:J

    iget-wide v3, p0, Lkxn;->d:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lkxn;->a:Ljava/io/FileInputStream;

    invoke-static {v1}, Lllj;->j(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p0, 0x4

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Was supposed to have "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes remaining but only read "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Can\'t read contents of a >2GB span"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Lkxk;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lkxn;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "Can\'t get type of short (%d bytes) box"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkxk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic j(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .locals 0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lber;)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkwx;

    new-instance v1, Lkwv;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lkwv;-><init>(Lber;I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkwv;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lkwv;-><init>(Lber;I)V

    aput-object v1, v0, v3

    sget-object p0, Lkww;->b:Lkww;

    aput-object p0, v0, v2

    invoke-static {v0}, Lllj;->d([Lkwx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static l(Lber;)I
    .locals 11

    invoke-static {p0}, Lllj;->k(Lber;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    invoke-static {p0}, Lllj;->k(Lber;)I

    move-result v0

    if-eq v0, v2, :cond_5

    const-string v0, "http://ns.google.com/photos/1.0/container/"

    invoke-static {v0}, Let;->k(Ljava/lang/String;)V

    const-string v3, "Directory"

    invoke-static {v3}, Let;->h(Ljava/lang/String;)V

    invoke-static {v0, v3}, Ldp;->x(Ljava/lang/String;Ljava/lang/String;)Lbfm;

    move-result-object v0

    move-object v4, p0

    check-cast v4, Lbff;

    iget-object v4, v4, Lbff;->a:Lbfi;

    const/4 v5, 0x0

    invoke-static {v4, v0, v1, v5}, Leu;->n(Lbfi;Lbfm;ZLbfs;)Lbfi;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbfi;->g()Lbfs;

    move-result-object v4

    invoke-virtual {v4}, Lbfs;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lbfi;->a()I

    move-result v0

    :goto_0
    new-instance v4, Llhe;

    invoke-direct {v4, v5}, Llhe;-><init>([C)V

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v0, :cond_1

    invoke-static {v3, v5}, Lbdm;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Mime"

    invoke-static {p0, v6, v7}, Lkya;->d(Lber;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkya;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Semantic"

    invoke-static {p0, v6, v7}, Lkya;->d(Lber;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lkya;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Length"

    invoke-static {p0, v6, v7}, Lkya;->d(Lber;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkya;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "Padding"

    invoke-static {p0, v6, v10}, Lkya;->d(Lber;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkya;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lkya;->a()Lkxz;

    move-result-object v10

    iput-object v8, v10, Lkxz;->a:Ljava/lang/Object;

    iput-object v9, v10, Lkxz;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Lkxz;->b(I)V

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v6}, Lkxz;->c(I)V

    invoke-virtual {v10}, Lkxz;->a()Lkya;

    move-result-object v6

    invoke-virtual {v4, v6}, Llhe;->h(Lkya;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Llhe;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkya;

    if-eqz v2, :cond_2

    invoke-static {v3}, Lllj;->n(Lkya;)Ljava/lang/String;

    iget v2, v3, Lkya;->d:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lllj;->o(Lkya;)Ljava/lang/String;

    iget v4, v3, Lkya;->c:I

    iget v3, v3, Lkya;->d:I

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    new-instance p0, Lbeq;

    const-string v0, "The named property is not an array"

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lbeq;

    const-string v0, "V1 format does not have a container"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [Lkwx;

    new-instance v3, Lkwv;

    invoke-direct {v3, p0, v1}, Lkwv;-><init>(Lber;I)V

    aput-object v3, v0, v1

    sget-object p0, Lkww;->a:Lkww;

    aput-object p0, v0, v2

    invoke-static {v0}, Lllj;->d([Lkwx;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lbeq;

    const-string v1, "Property value missing for "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static n(Lkya;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lkya;->b:Ljava/lang/String;

    const-string v1, "Primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MVXmpMetadata"

    if-nez v0, :cond_0

    const-string v0, "Badly formatted file. First container item is not primary"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "First container item must be primary.\n"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget p0, p0, Lkya;->c:I

    if-lez p0, :cond_1

    const-string v2, "First container item must have length of 0.\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First container length expected to be 0. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static o(Lkya;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkya;->b:Ljava/lang/String;

    const-string v1, "Primary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MVXmpMetadata"

    if-eqz v0, :cond_0

    const-string v0, "Badly formatted file. Only first container item should be primary"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Secondary container items must not be primary.\n"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget p0, p0, Lkya;->d:I

    if-lez p0, :cond_1

    const-string p0, "Secondary container items must have 0 padding.\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Badly formatted file. Only primary container items may have padding."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static synthetic p(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static r(ILandroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    new-instance v0, Lmgx;

    invoke-direct {v0, p1}, Lmgx;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0401ae

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkwp;->m(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lmgx;->a(IF)I

    move-result p0

    return p0
.end method

.method public static s(Landroidx/wear/ambient/AmbientMode$AmbientController;Lber;Lber;Lkwu;Ljava/io/OutputStream;)V
    .locals 4

    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p0, [B

    invoke-static {p0, p4, p1, p2}, Lkrm;->m([BLjava/io/OutputStream;Lber;Lber;)V

    :try_start_0
    iget-object p0, p3, Lkwu;->b:Ljava/io/InputStream;

    invoke-static {p0, p4}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    iget p2, p3, Lkwu;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p2

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    iget-object p0, p3, Lkwu;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "Bundled input stream claimed length of %d but had %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p3, Lkwu;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    iget-object p1, p3, Lkwu;->b:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p0
.end method
