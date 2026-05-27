.class public final Lah;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[I

.field public c:[I

.field public d:[F

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Landroidx/wear/ambient/AmbientDelegate;

.field private final i:Lai;

.field private j:I


# direct methods
.method public constructor <init>(Lai;Landroidx/wear/ambient/AmbientDelegate;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput p3, p0, Lah;->a:I

    const/16 p4, 0x8

    iput p4, p0, Lah;->j:I

    new-array p5, p4, [I

    iput-object p5, p0, Lah;->b:[I

    new-array p5, p4, [I

    iput-object p5, p0, Lah;->c:[I

    new-array p4, p4, [F

    iput-object p4, p0, Lah;->d:[F

    const/4 p4, -0x1

    iput p4, p0, Lah;->e:I

    iput p4, p0, Lah;->f:I

    iput-boolean p3, p0, Lah;->g:Z

    iput-object p1, p0, Lah;->i:Lai;

    iput-object p2, p0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method


# virtual methods
.method public final a(Lal;)F
    .locals 4

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Lah;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lah;->b:[I

    aget v2, v2, v0

    iget v3, p1, Lal;->a:I

    if-ne v2, v3, :cond_0

    iget-object p1, p0, Lah;->d:[F

    aget p1, p1, v0

    return p1

    :cond_0
    iget-object v2, p0, Lah;->c:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final b(I)F
    .locals 3

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Lah;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lah;->d:[F

    aget p1, p1, v0

    return p1

    :cond_0
    iget-object v2, p0, Lah;->c:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lal;)F
    .locals 8

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-eq v0, v2, :cond_3

    iget v5, p0, Lah;->a:I

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lah;->b:[I

    aget v5, v5, v0

    iget v6, p1, Lal;->a:I

    if-ne v5, v6, :cond_2

    iget p1, p0, Lah;->e:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lah;->c:[I

    aget p1, p1, v0

    iput p1, p0, Lah;->e:I

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lah;->c:[I

    aget v1, p1, v0

    aput v1, p1, v4

    :goto_1
    iget-object p1, p0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast p1, [Lal;

    aget-object p1, p1, v5

    iget-object v1, p0, Lah;->i:Lai;

    invoke-virtual {p1, v1}, Lal;->a(Lai;)V

    iget p1, p0, Lah;->a:I

    add-int/2addr p1, v2

    iput p1, p0, Lah;->a:I

    iget-object p1, p0, Lah;->b:[I

    aput v2, p1, v0

    iget-boolean p1, p0, Lah;->g:Z

    if-eqz p1, :cond_1

    iput v0, p0, Lah;->f:I

    :cond_1
    iget-object p1, p0, Lah;->d:[F

    aget p1, p1, v0

    return p1

    :cond_2
    iget-object v4, p0, Lah;->c:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_3
    return v1
.end method

.method final d(I)Lal;
    .locals 3

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Lah;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v1, p0, Lah;->b:[I

    aget v0, v1, v0

    check-cast p1, [Lal;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    iget-object v2, p0, Lah;->c:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lal;F)V
    .locals 9

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lah;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iput v2, p0, Lah;->e:I

    iget-object v0, p0, Lah;->d:[F

    aput p2, v0, v2

    iget-object p2, p0, Lah;->b:[I

    iget p1, p1, Lal;->a:I

    aput p1, p2, v2

    iget-object p1, p0, Lah;->c:[I

    aput v4, p1, v2

    iget p1, p0, Lah;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Lah;->a:I

    iget-boolean p1, p0, Lah;->g:Z

    if-nez p1, :cond_1

    iget p1, p0, Lah;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Lah;->f:I

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_0
    if-eq v1, v4, :cond_8

    iget v7, p0, Lah;->a:I

    if-ge v5, v7, :cond_8

    iget-object v7, p0, Lah;->b:[I

    aget v7, v7, v1

    iget v8, p1, Lal;->a:I

    if-ne v7, v8, :cond_6

    iget-object p1, p0, Lah;->d:[F

    aget v2, p1, v1

    add-float/2addr v2, p2

    aput v2, p1, v1

    cmpl-float p1, v2, v0

    if-nez p1, :cond_5

    iget p1, p0, Lah;->e:I

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lah;->c:[I

    aget p1, p1, v1

    iput p1, p0, Lah;->e:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lah;->c:[I

    aget p2, p1, v1

    aput p2, p1, v6

    :goto_1
    iget-object p1, p0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast p1, [Lal;

    aget-object p1, p1, v7

    iget-object p2, p0, Lah;->i:Lai;

    invoke-virtual {p1, p2}, Lal;->a(Lai;)V

    iget-boolean p1, p0, Lah;->g:Z

    if-eqz p1, :cond_4

    iput v1, p0, Lah;->f:I

    :cond_4
    iget p1, p0, Lah;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Lah;->a:I

    return-void

    :cond_5
    return-void

    :cond_6
    if-ge v7, v8, :cond_7

    move v6, v1

    :cond_7
    iget-object v7, p0, Lah;->c:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    iget v0, p0, Lah;->f:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v5, p0, Lah;->g:Z

    if-eqz v5, :cond_9

    iget-object v1, p0, Lah;->b:[I

    aget v5, v1, v0

    if-eq v5, v4, :cond_a

    array-length v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    :cond_a
    :goto_2
    iget-object v1, p0, Lah;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    iget v5, p0, Lah;->a:I

    if-ge v5, v1, :cond_c

    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lah;->b:[I

    array-length v7, v5

    if-ge v1, v7, :cond_c

    aget v5, v5, v1

    if-ne v5, v4, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    iget-object v1, p0, Lah;->b:[I

    array-length v1, v1

    if-lt v0, v1, :cond_d

    iget v0, p0, Lah;->j:I

    add-int/2addr v0, v0

    iput v0, p0, Lah;->j:I

    iput-boolean v2, p0, Lah;->g:Z

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lah;->f:I

    iget-object v2, p0, Lah;->d:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lah;->d:[F

    iget-object v0, p0, Lah;->b:[I

    iget v2, p0, Lah;->j:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lah;->b:[I

    iget-object v0, p0, Lah;->c:[I

    iget v2, p0, Lah;->j:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lah;->c:[I

    move v0, v1

    :cond_d
    iget-object v1, p0, Lah;->b:[I

    iget p1, p1, Lal;->a:I

    aput p1, v1, v0

    iget-object p1, p0, Lah;->d:[F

    aput p2, p1, v0

    if-eq v6, v4, :cond_e

    iget-object p1, p0, Lah;->c:[I

    aget p2, p1, v6

    aput p2, p1, v0

    aput v0, p1, v6

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lah;->c:[I

    iget p2, p0, Lah;->e:I

    aput p2, p1, v0

    iput v0, p0, Lah;->e:I

    :goto_5
    iget p1, p0, Lah;->a:I

    add-int/2addr p1, v3

    iput p1, p0, Lah;->a:I

    iget-boolean p1, p0, Lah;->g:Z

    if-nez p1, :cond_f

    iget p1, p0, Lah;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Lah;->f:I

    :cond_f
    iget p1, p0, Lah;->f:I

    array-length p2, v1

    if-lt p1, p2, :cond_10

    iput-boolean v3, p0, Lah;->g:Z

    add-int/2addr p2, v4

    iput p2, p0, Lah;->f:I

    :cond_10
    return-void
.end method

.method public final f(Lal;F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lah;->c(Lal;)F

    return-void

    :cond_0
    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    iput v1, p0, Lah;->e:I

    iget-object v0, p0, Lah;->d:[F

    aput p2, v0, v1

    iget-object p2, p0, Lah;->b:[I

    iget p1, p1, Lal;->a:I

    aput p1, p2, v1

    iget-object p1, p0, Lah;->c:[I

    aput v3, p1, v1

    iget p1, p0, Lah;->a:I

    add-int/2addr p1, v2

    iput p1, p0, Lah;->a:I

    iget-boolean p1, p0, Lah;->g:Z

    if-nez p1, :cond_1

    iget p1, p0, Lah;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lah;->f:I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eq v0, v3, :cond_5

    iget v6, p0, Lah;->a:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lah;->b:[I

    aget v6, v6, v0

    iget v7, p1, Lal;->a:I

    if-ne v6, v7, :cond_3

    iget-object p1, p0, Lah;->d:[F

    aput p2, p1, v0

    return-void

    :cond_3
    if-ge v6, v7, :cond_4

    move v5, v0

    :cond_4
    iget-object v6, p0, Lah;->c:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lah;->f:I

    add-int/lit8 v4, v0, 0x1

    iget-boolean v6, p0, Lah;->g:Z

    if-eqz v6, :cond_6

    iget-object v4, p0, Lah;->b:[I

    aget v6, v4, v0

    if-eq v6, v3, :cond_7

    array-length v0, v4

    goto :goto_1

    :cond_6
    move v0, v4

    :cond_7
    :goto_1
    iget-object v4, p0, Lah;->b:[I

    array-length v4, v4

    if-lt v0, v4, :cond_9

    iget v6, p0, Lah;->a:I

    if-ge v6, v4, :cond_9

    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Lah;->b:[I

    array-length v7, v6

    if-ge v4, v7, :cond_9

    aget v6, v6, v4

    if-ne v6, v3, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v4, p0, Lah;->b:[I

    array-length v4, v4

    if-lt v0, v4, :cond_a

    iget v0, p0, Lah;->j:I

    add-int/2addr v0, v0

    iput v0, p0, Lah;->j:I

    iput-boolean v1, p0, Lah;->g:Z

    add-int/lit8 v1, v4, -0x1

    iput v1, p0, Lah;->f:I

    iget-object v1, p0, Lah;->d:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lah;->d:[F

    iget-object v0, p0, Lah;->b:[I

    iget v1, p0, Lah;->j:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lah;->b:[I

    iget-object v0, p0, Lah;->c:[I

    iget v1, p0, Lah;->j:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lah;->c:[I

    move v0, v4

    :cond_a
    iget-object v1, p0, Lah;->b:[I

    iget p1, p1, Lal;->a:I

    aput p1, v1, v0

    iget-object p1, p0, Lah;->d:[F

    aput p2, p1, v0

    if-eq v5, v3, :cond_b

    iget-object p1, p0, Lah;->c:[I

    aget p2, p1, v5

    aput p2, p1, v0

    aput v0, p1, v5

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lah;->c:[I

    iget p2, p0, Lah;->e:I

    aput p2, p1, v0

    iput v0, p0, Lah;->e:I

    :goto_4
    iget p1, p0, Lah;->a:I

    add-int/2addr p1, v2

    iput p1, p0, Lah;->a:I

    iget-boolean p2, p0, Lah;->g:Z

    if-nez p2, :cond_c

    iget p2, p0, Lah;->f:I

    add-int/2addr p2, v2

    iput p2, p0, Lah;->f:I

    :cond_c
    array-length p2, v1

    if-lt p1, p2, :cond_d

    iput-boolean v2, p0, Lah;->g:Z

    :cond_d
    return-void
.end method

.method final g(Lai;Lai;)V
    .locals 8

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget v4, p0, Lah;->a:I

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lah;->b:[I

    aget v4, v4, v0

    iget-object v5, p2, Lai;->a:Lal;

    iget v6, v5, Lal;->a:I

    if-ne v4, v6, :cond_1

    iget-object v2, p0, Lah;->d:[F

    aget v0, v2, v0

    invoke-virtual {p0, v5}, Lah;->c(Lal;)F

    iget-object v2, p2, Lai;->d:Lah;

    iget v4, v2, Lah;->e:I

    const/4 v5, 0x0

    :goto_1
    if-eq v4, v3, :cond_0

    iget v6, v2, Lah;->a:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v6, v6, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v7, v2, Lah;->b:[I

    aget v7, v7, v4

    check-cast v6, [Lal;

    aget-object v6, v6, v7

    iget-object v7, v2, Lah;->d:[F

    aget v7, v7, v4

    mul-float v7, v7, v0

    invoke-virtual {p0, v6, v7}, Lah;->e(Lal;F)V

    iget-object v6, v2, Lah;->c:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget v2, p1, Lai;->b:F

    iget v3, p2, Lai;->b:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, p1, Lai;->b:F

    iget-object v0, p2, Lai;->a:Lal;

    invoke-virtual {v0, p1}, Lal;->a(Lai;)V

    iget v0, p0, Lah;->e:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lah;->c:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lah;->e:I

    const/4 v1, 0x0

    const-string v2, ""

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Lah;->a:I

    if-ge v1, v3, :cond_0

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lah;->d:[F

    aget v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lah;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v4, v4, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v5, p0, Lah;->b:[I

    aget v5, v5, v0

    check-cast v4, [Lal;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lah;->c:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
