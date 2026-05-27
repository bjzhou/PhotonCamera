.class public final Lxg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic a:Z

.field public synthetic b:[I

.field public synthetic c:[Ljava/lang/Object;

.field public synthetic d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0}, Lxi;->d(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lxg;->b:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lxg;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-boolean v0, p0, Lxg;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxh;->b(Lxg;)V

    :cond_0
    iget-object v0, p0, Lxg;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lxg;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxh;->b(Lxg;)V

    :cond_0
    iget v0, p0, Lxg;->d:I

    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lxg;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxh;->b(Lxg;)V

    :cond_0
    iget-object v0, p0, Lxg;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lxg;

    iget-object v1, p0, Lxg;->b:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lxg;->b:[I

    iget-object v1, p0, Lxg;->c:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lxg;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lxg;->b:[I

    iget v1, p0, Lxg;->d:I

    invoke-static {v0, v1, p1}, Lxi;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lxg;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lxg;->d:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lxg;->c:[Ljava/lang/Object;

    aget-object v3, v2, v0

    sget-object v4, Lxh;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lxg;->b:[I

    aput p1, v1, v0

    aput-object p2, v2, v0

    return-void

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lxg;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lxg;->b:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    invoke-static {p0}, Lxh;->b(Lxg;)V

    iget-object v0, p0, Lxg;->b:[I

    iget v1, p0, Lxg;->d:I

    invoke-static {v0, v1, p1}, Lxi;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3
    iget v1, p0, Lxg;->d:I

    iget-object v2, p0, Lxg;->b:[I

    array-length v3, v2

    if-lt v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lxi;->d(I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lxg;->b:[I

    iget-object v2, p0, Lxg;->c:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lxg;->c:[Ljava/lang/Object;

    :cond_4
    iget v1, p0, Lxg;->d:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lxg;->b:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, v1}, Lljr;->aC([I[IIII)V

    iget-object v1, p0, Lxg;->c:[Ljava/lang/Object;

    iget v2, p0, Lxg;->d:I

    invoke-static {v1, v1, v3, v0, v2}, Lljr;->aD([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_5
    iget-object v1, p0, Lxg;->b:[I

    aput p1, v1, v0

    iget-object p1, p0, Lxg;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    iget p1, p0, Lxg;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lxg;->d:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lxg;->b()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lxg;->d:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lxg;->d:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-lez v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v2}, Lxg;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lxg;->c(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "(this Map)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method
