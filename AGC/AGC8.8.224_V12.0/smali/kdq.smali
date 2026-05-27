.class public final Lkdq;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic h:I

.field private static final i:Ljava/nio/charset/Charset;

.field private static final j:[I


# instance fields
.field public final a:S

.field public final b:S

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lkdq;->i:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lkdq;->j:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x4

    aput v2, v0, v2

    const/4 v3, 0x5

    const/16 v4, 0x8

    aput v4, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(SSIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkdq;->a:S

    iput-short p2, p0, Lkdq;->b:S

    iput p3, p0, Lkdq;->d:I

    iput-boolean p5, p0, Lkdq;->c:Z

    iput p4, p0, Lkdq;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lkdq;->f:Ljava/lang/Object;

    return-void
.end method

.method public static c(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "RATIONAL"

    return-object p0

    :pswitch_2
    const-string p0, "LONG"

    return-object p0

    :pswitch_3
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_4
    const-string p0, "UNSIGNED_RATIONAL"

    return-object p0

    :pswitch_5
    const-string p0, "UNSIGNED_LONG"

    return-object p0

    :pswitch_6
    const-string p0, "UNSIGNED_SHORT"

    return-object p0

    :pswitch_7
    const-string p0, "ASCII"

    return-object p0

    :pswitch_8
    const-string p0, "UNSIGNED_BYTE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static f(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private final n(I)Z
    .locals 1

    iget-boolean v0, p0, Lkdq;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lkdq;->d:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget v0, p0, Lkdq;->d:I

    iget-short v1, p0, Lkdq;->b:S

    sget-object v2, Lkdq;->j:[I

    aget v1, v2, v1

    mul-int v0, v0, v1

    return v0
.end method

.method public final b(I)J
    .locals 3

    iget-object v0, p0, Lkdq;->f:Ljava/lang/Object;

    instance-of v1, v0, [J

    if-eqz v1, :cond_0

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    check-cast v0, [B

    aget-byte p1, v0, p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-short v0, p0, Lkdq;->b:S

    invoke-static {v0}, Lkdq;->c(S)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot get integer value from "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lkdq;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    instance-of v2, v0, [B

    if-eqz v2, :cond_3

    check-cast v0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkdq;->i:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_3
    instance-of v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    check-cast v0, [I

    array-length v1, v0

    if-ne v1, v4, :cond_4

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_5
    instance-of v2, v0, [J

    if-eqz v2, :cond_7

    check-cast v0, [J

    array-length v1, v0

    if-ne v1, v4, :cond_6

    aget-wide v1, v0, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_7
    return-object v1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lkdq;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkdq;

    if-eqz v1, :cond_c

    check-cast p1, Lkdq;

    iget-short v1, p1, Lkdq;->a:S

    iget-short v2, p0, Lkdq;->a:S

    if-ne v1, v2, :cond_b

    iget v1, p1, Lkdq;->d:I

    iget v2, p0, Lkdq;->d:I

    if-ne v1, v2, :cond_b

    iget-short v1, p1, Lkdq;->b:S

    iget-short v2, p0, Lkdq;->b:S

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lkdq;->f:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object p1, p1, Lkdq;->f:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    :cond_2
    instance-of v2, v1, [J

    if-eqz v2, :cond_4

    instance-of v2, p1, [J

    if-nez v2, :cond_3

    return v0

    :cond_3
    check-cast v1, [J

    check-cast p1, [J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_4
    instance-of v2, v1, [Lkac;

    if-eqz v2, :cond_6

    instance-of v2, p1, [Lkac;

    if-nez v2, :cond_5

    return v0

    :cond_5
    check-cast v1, [Lkac;

    check-cast p1, [Lkac;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    instance-of v2, v1, [B

    if-eqz v2, :cond_8

    instance-of v2, p1, [B

    if-nez v2, :cond_7

    return v0

    :cond_7
    check-cast v1, [B

    check-cast p1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    iget-object p1, p1, Lkdq;->f:Ljava/lang/Object;

    if-nez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v0

    :cond_c
    return v0
.end method

.method public final g(I)Z
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lkdq;->j([I)Z

    move-result p1

    return p1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 5

    iget-short v0, p0, Lkdq;->b:S

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    sget-object v0, Lkdq;->i:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v4, 0x1

    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p1, v3

    if-eqz v3, :cond_3

    iget-short v3, p0, Lkdq;->b:S

    if-eq v3, v1, :cond_3

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-short v0, p0, Lkdq;->b:S

    if-ne v0, v3, :cond_3

    iget v0, p0, Lkdq;->d:I

    if-ne v0, v4, :cond_3

    new-array p1, v4, [B

    aput-byte v2, p1, v2

    :cond_3
    :goto_1
    array-length v0, p1

    invoke-direct {p0, v0}, Lkdq;->n(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iput v0, p0, Lkdq;->d:I

    iput-object p1, p0, Lkdq;->f:Ljava/lang/Object;

    return v4
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Lkdq;->a:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-short v1, p0, Lkdq;->b:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lkdq;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lkdq;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lkdq;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    iget-object v2, p0, Lkdq;->f:Ljava/lang/Object;

    aput-object v2, v0, v1

    iget v1, p0, Lkdq;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i([B)Z
    .locals 5

    array-length v0, p1

    invoke-direct {p0, v0}, Lkdq;->n(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-short v1, p0, Lkdq;->b:S

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x7

    if-ne v1, v4, :cond_0

    goto :goto_1

    :goto_0
    return v2

    :cond_2
    :goto_1
    new-array v1, v0, [B

    iput-object v1, p0, Lkdq;->f:Ljava/lang/Object;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lkdq;->d:I

    return v3
.end method

.method public final j([I)Z
    .locals 6

    array-length v0, p1

    invoke-direct {p0, v0}, Lkdq;->n(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-short v1, p0, Lkdq;->b:S

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2

    const/16 v0, 0x9

    if-eq v1, v0, :cond_5

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget v3, p1, v1

    const v5, 0xffff

    if-gt v3, v5, :cond_4

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    iget-short v0, p0, Lkdq;->b:S

    if-ne v0, v4, :cond_7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_7

    aget v3, p1, v1

    if-gez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    array-length v0, p1

    new-array v0, v0, [J

    :goto_4
    array-length v1, p1

    if-ge v2, v1, :cond_8

    aget v1, p1, v2

    int-to-long v3, v1

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iput-object v0, p0, Lkdq;->f:Ljava/lang/Object;

    iput v1, p0, Lkdq;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public final k([J)Z
    .locals 8

    array-length v0, p1

    invoke-direct {p0, v0}, Lkdq;->n(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-short v1, p0, Lkdq;->b:S

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-wide v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    const-wide v5, 0xffffffffL

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    iput-object p1, p0, Lkdq;->f:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lkdq;->d:I

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v2
.end method

.method public final l([Lkac;)Z
    .locals 11

    array-length v0, p1

    invoke-direct {p0, v0}, Lkdq;->n(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-short v1, p0, Lkdq;->b:S

    const/4 v3, 0x5

    const/16 v4, 0xa

    if-eq v1, v3, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p1, v1

    iget-wide v5, v3, Lkac;->a:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    iget-wide v9, v3, Lkac;->b:J

    cmp-long v3, v9, v7

    if-ltz v3, :cond_3

    const-wide v7, 0xffffffffL

    cmp-long v3, v5, v7

    if-gtz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    iget-short v0, p0, Lkdq;->b:S

    if-ne v0, v4, :cond_7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v3, p1, v1

    iget-wide v4, v3, Lkac;->a:J

    const-wide/32 v6, -0x80000000

    cmp-long v8, v4, v6

    if-ltz v8, :cond_6

    iget-wide v6, v3, Lkac;->b:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v4, v8

    if-gtz v3, :cond_6

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v2

    :cond_7
    iput-object p1, p0, Lkdq;->f:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lkdq;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public final m()[I
    .locals 5

    iget-object v0, p0, Lkdq;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, [J

    if-eqz v2, :cond_1

    check-cast v0, [J

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-wide v3, v0, v2

    long-to-int v4, v3

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-short v2, p0, Lkdq;->a:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "tag id: %04X\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lkdq;->e:I

    iget-short v4, p0, Lkdq;->b:S

    invoke-static {v4}, Lkdq;->c(S)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lkdq;->d:I

    iget v7, p0, Lkdq;->g:I

    iget-object v8, p0, Lkdq;->f:Ljava/lang/Object;

    const-string v9, ""

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    instance-of v10, v8, [B

    if-eqz v10, :cond_2

    const/4 v0, 0x2

    if-ne v4, v0, :cond_1

    new-instance v9, Ljava/lang/String;

    check-cast v8, [B

    sget-object v0, Lkdq;->i:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_1
    check-cast v8, [B

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    instance-of v4, v8, [J

    if-eqz v4, :cond_4

    check-cast v8, [J

    array-length v4, v8

    if-ne v4, v0, :cond_3

    aget-wide v3, v8, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_3
    invoke-static {v8}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_4
    instance-of v4, v8, [Ljava/lang/Object;

    if-eqz v4, :cond_7

    check-cast v8, [Ljava/lang/Object;

    array-length v4, v8

    if-ne v4, v0, :cond_6

    aget-object v0, v8, v3

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_6
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
