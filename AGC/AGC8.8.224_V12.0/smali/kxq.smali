.class public final Lkxq;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljfg;Ljfb;[Ljca;I)V
    .locals 0

    iput-object p1, p0, Lkxq;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkxq;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkxq;->b:Ljava/lang/Object;

    iput p4, p0, Lkxq;->a:I

    return-void
.end method

.method public constructor <init>(Lloi;Lkxt;[B[B[B)V
    .locals 6

    iput-object p1, p0, Lkxq;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p1, Lloi;->b:Ljava/lang/Object;

    iget p4, p2, Lkxt;->a:I

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-lez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    const/16 v0, 0x8

    if-eq p3, p5, :cond_2

    if-lt p3, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Box size too small"

    invoke-static {v1, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, p1, Lloi;->b:Ljava/lang/Object;

    iget v5, p2, Lkxt;->a:I

    add-int/2addr v5, v1

    add-int/2addr v5, v3

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lj$/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lkxq;->b:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lmoz;->p(Z)V

    if-ne p3, p5, :cond_6

    iget-object p1, p1, Lloi;->b:Ljava/lang/Object;

    iget p3, p2, Lkxt;->a:I

    add-int/2addr p3, v0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    const-string p3, "We don\'t support >2GB boxes (since we\'re using ByteBuffers)."

    invoke-static {p1, p3}, Lmoz;->f(ZLjava/lang/Object;)V

    long-to-int p3, v0

    const/16 p1, 0x10

    iput p1, p0, Lkxq;->a:I

    goto :goto_5

    :cond_6
    iput v0, p0, Lkxq;->a:I

    :goto_5
    iget p1, p2, Lkxt;->b:I

    if-gt p3, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lkxq;->a:I

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p4

    iget p4, p2, Lkxt;->b:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, p5

    const-string p4, "Signalled box length %d does not fit length of %d"

    invoke-static {v0, p4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance p1, Lkxt;

    iget p2, p2, Lkxt;->a:I

    iget p4, p0, Lkxq;->a:I

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-direct {p1, p2, p3}, Lkxt;-><init>(II)V

    iput-object p1, p0, Lkxq;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljez;
    .locals 1

    iget-object v0, p0, Lkxq;->c:Ljava/lang/Object;

    check-cast v0, Ljfb;

    iget-object v0, v0, Ljfb;->b:Ljez;

    return-object v0
.end method

.method public final b(Ljcu;Lkgd;)V
    .locals 1

    iget-object v0, p0, Lkxq;->d:Ljava/lang/Object;

    check-cast v0, Ljfg;

    iget-object v0, v0, Ljfg;->a:Ljfh;

    invoke-interface {v0, p1, p2}, Ljfh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
