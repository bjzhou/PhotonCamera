.class public final Lkxl;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lmqp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Mp4BoxFileSlicer"

    invoke-static {v0}, Lnbj;->h(Ljava/lang/String;)Lnbj;

    return-void
.end method

.method public constructor <init>(Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxl;->a:Lmqp;

    return-void
.end method

.method public static a()Lkxl;
    .locals 2

    new-instance v0, Lkxl;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-direct {v0, v1}, Lkxl;-><init>(Lmqp;)V

    return-object v0
.end method

.method public static c(Ljava/io/FileInputStream;)Lkxl;
    .locals 8

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-gez v2, :cond_0

    invoke-static {}, Lkxl;->a()Lkxl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkxl;

    new-instance v7, Lkxn;

    const-wide/16 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lkxn;-><init>(Ljava/io/FileInputStream;JJ)V

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    invoke-direct {v0, p0}, Lkxl;-><init>(Lmqp;)V

    return-object v0
.end method

.method public static d(Lkxn;)Lkxl;
    .locals 1

    new-instance v0, Lkxl;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    invoke-direct {v0, p0}, Lkxl;-><init>(Lmqp;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lkxl;
    .locals 9

    iget-object v0, p0, Lkxl;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lkxl;->a()Lkxl;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lkxl;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxn;

    invoke-static {v0}, Lllj;->g(Lkxn;)Lkxm;

    move-result-object v2

    iget-wide v3, v2, Lkxm;->a:J

    invoke-virtual {v0}, Lkxn;->a()J

    move-result-wide v5

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_3

    iget-boolean v2, v2, Lkxm;->b:Z

    if-eq v7, v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {v0}, Lkxn;->b()Lkxn;

    move-result-object v3

    iget-wide v4, v0, Lkxn;->d:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-wide v6, v3, Lkxn;->e:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    invoke-virtual {v3, v4, v5}, Lkxn;->e(J)V

    invoke-virtual {v3}, Lkxn;->c()Lkxn;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    invoke-direct {v1, v0}, Lkxl;-><init>(Lmqp;)V

    return-object v1

    :cond_3
    new-instance v1, Lkxk;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkxn;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-wide v5, v2, Lkxm;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "contents failed - argument has length %s but claims length of %s"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkxk;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(Ljava/lang/String;)Lkxl;
    .locals 1

    invoke-virtual {p0}, Lkxl;->b()Lkxl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkxl;->f(Ljava/lang/String;)Lkxl;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Lkxl;
    .locals 4

    iget-object v0, p0, Lkxl;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lkxl;->a()Lkxl;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxn;

    invoke-virtual {v0}, Lkxn;->b()Lkxn;

    move-result-object v0

    invoke-static {p1}, Lkxp;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lllj;->h(Lkxn;)Lkxn;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lllj;->i(Lkxn;)[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkxl;->a()Lkxl;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Lkxl;->a()Lkxl;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lkxl;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-direct {p1, v0}, Lkxl;-><init>(Lmqp;)V

    return-object p1
.end method

.method public final g()Lkxn;
    .locals 1

    iget-object v0, p0, Lkxl;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxn;

    return-object v0
.end method
