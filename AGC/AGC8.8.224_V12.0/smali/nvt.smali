.class public abstract Lnvt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lnvt;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnvs;

    sget-object v1, Lnxb;->b:[B

    invoke-direct {v0, v1}, Lnvs;-><init>([B)V

    sput-object v0, Lnvt;->b:Lnvt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnvt;->c:I

    return-void
.end method

.method static q(III)I
    .locals 3

    or-int v0, p0, p1

    sub-int v1, p1, p0

    or-int/2addr v0, v1

    sub-int v2, p2, p1

    or-int/2addr v0, v2

    if-gez v0, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public static s(Ljava/util/Iterator;I)Lnvt;
    .locals 6

    const/4 v0, 0x1

    if-lez p1, :cond_9

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnvt;

    goto/16 :goto_1

    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lnvt;->s(Ljava/util/Iterator;I)Lnvt;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-static {p0, p1}, Lnvt;->s(Ljava/util/Iterator;I)Lnvt;

    move-result-object p0

    invoke-virtual {v2}, Lnvt;->d()I

    move-result p1

    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lnvt;->d()I

    move-result p1

    if-lt v1, p1, :cond_8

    sget-object p1, Lnyn;->a:[I

    invoke-virtual {p0}, Lnvt;->d()I

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Lnvt;->d()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2}, Lnvt;->d()I

    move-result p1

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v1

    add-int/2addr p1, v1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_2

    invoke-static {v2, p0}, Lnyn;->g(Lnvt;Lnvt;)Lnvt;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    instance-of v3, v2, Lnyn;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lnyn;

    iget-object v4, v3, Lnyn;->f:Lnvt;

    invoke-virtual {v4}, Lnvt;->d()I

    move-result v4

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    iget-object p1, v3, Lnyn;->f:Lnvt;

    invoke-static {p1, p0}, Lnyn;->g(Lnvt;Lnvt;)Lnvt;

    move-result-object p0

    new-instance p1, Lnyn;

    iget-object v0, v3, Lnyn;->e:Lnvt;

    invoke-direct {p1, v0, p0}, Lnyn;-><init>(Lnvt;Lnvt;)V

    move-object p0, p1

    goto :goto_1

    :cond_3
    iget-object v1, v3, Lnyn;->e:Lnvt;

    invoke-virtual {v1}, Lnvt;->f()I

    move-result v1

    iget-object v4, v3, Lnyn;->f:Lnvt;

    invoke-virtual {v4}, Lnvt;->f()I

    move-result v4

    if-le v1, v4, :cond_4

    iget v1, v3, Lnyn;->g:I

    invoke-virtual {p0}, Lnvt;->f()I

    move-result v4

    if-le v1, v4, :cond_4

    new-instance p1, Lnyn;

    iget-object v0, v3, Lnyn;->f:Lnvt;

    invoke-direct {p1, v0, p0}, Lnyn;-><init>(Lnvt;Lnvt;)V

    new-instance p0, Lnyn;

    iget-object v0, v3, Lnyn;->e:Lnvt;

    invoke-direct {p0, v0, p1}, Lnyn;-><init>(Lnvt;Lnvt;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lnvt;->f()I

    move-result v1

    invoke-virtual {p0}, Lnvt;->f()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lnyn;->c(I)I

    move-result v0

    if-lt p1, v0, :cond_5

    new-instance p1, Lnyn;

    invoke-direct {p1, v2, p0}, Lnyn;-><init>(Lnvt;Lnvt;)V

    move-object p0, p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-static {v2, p1}, Lkwp;->S(Lnvt;Ljava/util/ArrayDeque;)V

    invoke-static {p0, p1}, Lkwp;->S(Lnvt;Ljava/util/ArrayDeque;)V

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnvt;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnvt;

    new-instance v1, Lnyn;

    invoke-direct {v1, v0, p0}, Lnyn;-><init>(Lnvt;Lnvt;)V

    move-object p0, v1

    goto :goto_0

    :cond_6
    move-object p0, v2

    :cond_7
    :goto_1
    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lnvt;->d()I

    move-result v0

    invoke-virtual {p0}, Lnvt;->d()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteString would be too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "length (%s) must be >= 1"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static t(Ljava/nio/ByteBuffer;)Lnvt;
    .locals 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lnvt;->q(III)I

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Lnvs;

    invoke-direct {p0, v0}, Lnvs;-><init>([B)V

    return-object p0
.end method

.method public static u([B)Lnvt;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lnvt;->v([BII)Lnvt;

    move-result-object p0

    return-object p0
.end method

.method public static v([BII)Lnvt;
    .locals 3

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lnvt;->q(III)I

    new-instance v0, Lnvs;

    new-array v1, p2, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v0, v1}, Lnvs;-><init>([B)V

    return-object v0
.end method

.method public static w(Ljava/lang/String;)Lnvt;
    .locals 2

    new-instance v0, Lnvs;

    sget-object v1, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lnvs;-><init>([B)V

    return-object v0
.end method

.method static x([B)Lnvt;
    .locals 1

    new-instance v0, Lnvs;

    invoke-direct {v0, p0}, Lnvs;-><init>([B)V

    return-object v0
.end method

.method static z(II)V
    .locals 3

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_1

    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A()[B
    .locals 3

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnxb;->b:[B

    return-object v0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lnvt;->e([BIII)V

    return-object v1
.end method

.method public final B([BII)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lnvt;->q(III)I

    add-int v0, p2, p3

    array-length v2, p1

    invoke-static {p2, v0, v2}, Lnvt;->q(III)I

    if-lez p3, :cond_0

    invoke-virtual {p0, p1, v1, p2, p3}, Lnvt;->e([BIII)V

    :cond_0
    return-void
.end method

.method public abstract a(I)B
.end method

.method public abstract b(I)B
.end method

.method public abstract d()I
.end method

.method protected abstract e([BIII)V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected abstract f()I
.end method

.method public abstract h()Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lnvt;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v1

    invoke-virtual {p0, v1, v0, v1}, Lnvt;->i(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lnvt;->c:I

    :cond_1
    return v0
.end method

.method protected abstract i(III)I
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lnvt;->r()Lnvq;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j(III)I
.end method

.method public abstract k(II)Lnvt;
.end method

.method public abstract l()Lnvy;
.end method

.method protected abstract m(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract n()Ljava/nio/ByteBuffer;
.end method

.method public abstract o(Lnvm;)V
.end method

.method public abstract p()Z
.end method

.method public r()Lnvq;
    .locals 1

    new-instance v0, Lnvn;

    invoke-direct {v0, p0}, Lnvn;-><init>(Lnvt;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lkwp;->R(Lnvt;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lnvt;->k(II)Lnvt;

    move-result-object v2

    invoke-static {v2}, Lkwp;->R(Lnvt;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnxb;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lnvt;->d()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnvt;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
