.class public final Lj$/time/temporal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/temporal/r;->a:J

    iput-wide p3, p0, Lj$/time/temporal/r;->b:J

    iput-wide p5, p0, Lj$/time/temporal/r;->c:J

    iput-wide p7, p0, Lj$/time/temporal/r;->d:J

    return-void
.end method

.method private c(JLj$/time/temporal/n;)Ljava/lang/String;
    .locals 4

    const-string v0, "): "

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (valid values "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value (valid values "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static j(JJ)Lj$/time/temporal/r;
    .locals 10

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    new-instance v0, Lj$/time/temporal/r;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lj$/time/temporal/r;-><init>(JJJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(JJJ)Lj$/time/temporal/r;
    .locals 10

    const-wide/16 v3, 0x1

    cmp-long v0, p0, v3

    if-gtz v0, :cond_2

    cmp-long v0, p2, p4

    if-gtz v0, :cond_1

    cmp-long v0, v3, p4

    if-gtz v0, :cond_0

    new-instance v9, Lj$/time/temporal/r;

    move-object v0, v9

    move-wide v1, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, Lj$/time/temporal/r;-><init>(JJJJ)V

    return-object v9

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-wide v0, p0, Lj$/time/temporal/r;->a:J

    iget-wide v2, p0, Lj$/time/temporal/r;->b:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    iget-wide v0, p0, Lj$/time/temporal/r;->c:J

    iget-wide v4, p0, Lj$/time/temporal/r;->d:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_1

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Minimum value must be less than maximum value"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(JLj$/time/temporal/n;)I
    .locals 1

    invoke-virtual {p0}, Lj$/time/temporal/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lj$/time/temporal/r;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    long-to-int p2, p1

    return p2

    :cond_0
    new-instance v0, Lj$/time/b;

    invoke-direct {p0, p1, p2, p3}, Lj$/time/temporal/r;->c(JLj$/time/temporal/n;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(JLj$/time/temporal/n;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lj$/time/temporal/r;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lj$/time/b;

    invoke-direct {p0, p1, p2, p3}, Lj$/time/temporal/r;->c(JLj$/time/temporal/n;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lj$/time/temporal/r;->d:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lj$/time/temporal/r;->a:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/temporal/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/temporal/r;

    iget-wide v3, p1, Lj$/time/temporal/r;->a:J

    iget-wide v5, p0, Lj$/time/temporal/r;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    iget-wide v3, p0, Lj$/time/temporal/r;->b:J

    iget-wide v5, p1, Lj$/time/temporal/r;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lj$/time/temporal/r;->c:J

    iget-wide v5, p1, Lj$/time/temporal/r;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lj$/time/temporal/r;->d:J

    iget-wide v5, p1, Lj$/time/temporal/r;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lj$/time/temporal/r;->c:J

    return-wide v0
.end method

.method public final g()Z
    .locals 5

    iget-wide v0, p0, Lj$/time/temporal/r;->a:J

    iget-wide v2, p0, Lj$/time/temporal/r;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lj$/time/temporal/r;->c:J

    iget-wide v2, p0, Lj$/time/temporal/r;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 5

    const-wide/32 v0, -0x80000000

    iget-wide v2, p0, Lj$/time/temporal/r;->a:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lj$/time/temporal/r;->d:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 9

    iget-wide v0, p0, Lj$/time/temporal/r;->b:J

    const/16 v2, 0x10

    shl-long v3, v0, v2

    iget-wide v5, p0, Lj$/time/temporal/r;->a:J

    add-long/2addr v5, v3

    const/16 v3, 0x30

    shr-long/2addr v0, v3

    add-long/2addr v5, v0

    iget-wide v0, p0, Lj$/time/temporal/r;->c:J

    const/16 v4, 0x20

    shl-long v7, v0, v4

    add-long/2addr v5, v7

    shr-long/2addr v0, v4

    add-long/2addr v5, v0

    iget-wide v0, p0, Lj$/time/temporal/r;->d:J

    shl-long v7, v0, v3

    add-long/2addr v5, v7

    shr-long/2addr v0, v2

    add-long/2addr v5, v0

    ushr-long v0, v5, v4

    xor-long/2addr v0, v5

    long-to-int v1, v0

    return v1
.end method

.method public final i(J)Z
    .locals 3

    iget-wide v0, p0, Lj$/time/temporal/r;->a:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lj$/time/temporal/r;->d:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lj$/time/temporal/r;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    iget-wide v4, p0, Lj$/time/temporal/r;->b:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj$/time/temporal/r;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lj$/time/temporal/r;->d:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
