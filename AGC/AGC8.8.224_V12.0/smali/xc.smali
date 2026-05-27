.class public final Lxc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic a:Z

.field public synthetic b:[J

.field public synthetic c:[Ljava/lang/Object;

.field public synthetic d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lxc;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lxi;->b:[J

    iput-object p1, p0, Lxc;->b:[J

    sget-object p1, Lxi;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lxc;->c:[Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Lxi;->e(I)I

    move-result p1

    new-array v0, p1, [J

    iput-object v0, p0, Lxc;->b:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lxc;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 9

    iget-boolean v0, p0, Lxc;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lxc;->d:I

    iget-object v1, p0, Lxc;->b:[J

    iget-object v2, p0, Lxc;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lxd;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lxc;->a:Z

    iput v5, p0, Lxc;->d:I

    :cond_3
    iget-object v0, p0, Lxc;->b:[J

    iget v1, p0, Lxc;->d:I

    invoke-static {v0, v1, p1, p2}, Lxi;->b([JIJ)I

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 9

    iget-boolean v0, p0, Lxc;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lxc;->d:I

    iget-object v1, p0, Lxc;->b:[J

    iget-object v2, p0, Lxc;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lxd;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lxc;->a:Z

    iput v5, p0, Lxc;->d:I

    :cond_3
    iget v0, p0, Lxc;->d:I

    return v0
.end method

.method public final c(I)J
    .locals 9

    if-ltz p1, :cond_4

    iget v0, p0, Lxc;->d:I

    if-ge p1, v0, :cond_4

    iget-boolean v1, p0, Lxc;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lxc;->b:[J

    iget-object v2, p0, Lxc;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lxd;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lxc;->a:Z

    iput v5, p0, Lxc;->d:I

    :cond_3
    iget-object v0, p0, Lxc;->b:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lxc;

    iget-object v1, p0, Lxc;->b:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lxc;->b:[J

    iget-object v1, p0, Lxc;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lxc;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final d(J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxc;->b:[J

    iget v1, p0, Lxc;->d:I

    invoke-static {v0, v1, p1, p2}, Lxi;->b([JIJ)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lxc;->c:[Ljava/lang/Object;

    aget-object p1, p2, p1

    sget-object p2, Lxd;->a:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 9

    if-ltz p1, :cond_4

    iget v0, p0, Lxc;->d:I

    if-ge p1, v0, :cond_4

    iget-boolean v1, p0, Lxc;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lxc;->b:[J

    iget-object v2, p0, Lxc;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lxd;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    aput-object v6, v2, v5

    const/4 v6, 0x0

    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lxc;->a:Z

    iput v5, p0, Lxc;->d:I

    :cond_3
    iget-object v0, p0, Lxc;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final f()V
    .locals 5

    iget v0, p0, Lxc;->d:I

    iget-object v1, p0, Lxc;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lxc;->d:I

    iput-boolean v2, p0, Lxc;->a:Z

    return-void
.end method

.method public final g(JLjava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lxc;->b:[J

    iget v1, p0, Lxc;->d:I

    invoke-static {v0, v1, p1, p2}, Lxi;->b([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lxc;->c:[Ljava/lang/Object;

    aput-object p3, p1, v0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lxc;->d:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lxc;->c:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Lxd;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lxc;->b:[J

    aput-wide p1, v1, v0

    aput-object p3, v2, v0

    return-void

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lxc;->a:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lxc;->b:[J

    array-length v3, v2

    if-lt v1, v3, :cond_6

    iget-object v0, p0, Lxc;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    aget-object v6, v0, v4

    sget-object v7, Lxd;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_4

    if-eq v4, v5, :cond_3

    aget-wide v7, v2, v4

    aput-wide v7, v2, v5

    aput-object v6, v0, v5

    const/4 v6, 0x0

    aput-object v6, v0, v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iput-boolean v3, p0, Lxc;->a:Z

    iput v5, p0, Lxc;->d:I

    iget-object v0, p0, Lxc;->b:[J

    invoke-static {v0, v5, p1, p2}, Lxi;->b([JIJ)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_6
    iget v1, p0, Lxc;->d:I

    iget-object v2, p0, Lxc;->b:[J

    array-length v3, v2

    if-lt v1, v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lxi;->e(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lxc;->b:[J

    iget-object v2, p0, Lxc;->c:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lxc;->c:[Ljava/lang/Object;

    :cond_7
    iget v1, p0, Lxc;->d:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_8

    iget-object v2, p0, Lxc;->b:[J

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lxc;->c:[Ljava/lang/Object;

    iget v2, p0, Lxc;->d:I

    invoke-static {v1, v1, v3, v0, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_8
    iget-object v1, p0, Lxc;->b:[J

    aput-wide p1, v1, v0

    iget-object p1, p0, Lxc;->c:[Ljava/lang/Object;

    aput-object p3, p1, v0

    iget p1, p0, Lxc;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lxc;->d:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lxc;->b()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    goto :goto_2

    :cond_0
    iget v0, p0, Lxc;->d:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lxc;->d:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v2}, Lxc;->c(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lxc;->e(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Map)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method
