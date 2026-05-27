.class public final synthetic Loe;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lxa;I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lxa;->a:[I

    iget p0, p0, Lxa;->c:I

    invoke-static {v0, p0, p1}, Lxi;->a([III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static final b(Lxa;Ljava/lang/Object;I)I
    .locals 5

    iget v0, p0, Lxa;->c:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p2}, Loe;->a(Lxa;I)I

    move-result v2

    if-gez v2, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lxa;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lxa;->a:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_4

    iget-object v4, p0, Lxa;->b:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-static {p1, v4}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_6

    iget-object v0, p0, Lxa;->a:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object v0, p0, Lxa;->b:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    xor-int/lit8 p0, v3, -0x1

    return p0
.end method

.method public static final c(Lxa;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Loe;->b(Lxa;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static final d(Lxa;I)V
    .locals 1

    new-array v0, p1, [I

    invoke-virtual {p0, v0}, Lxa;->d([I)V

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lxa;->c([Ljava/lang/Object;)V

    return-void
.end method
