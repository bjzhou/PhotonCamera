.class public final Lya;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field public b:[I

.field public c:[I

.field public d:[F

.field public e:I

.field protected final f:Landroidx/wear/ambient/AmbientDelegate;

.field private final g:Lyb;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lyb;Landroidx/wear/ambient/AmbientDelegate;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput p3, p0, Lya;->a:I

    const/16 p4, 0x8

    iput p4, p0, Lya;->h:I

    new-array v0, p4, [I

    iput-object v0, p0, Lya;->b:[I

    new-array v0, p4, [I

    iput-object v0, p0, Lya;->c:[I

    new-array p4, p4, [F

    iput-object p4, p0, Lya;->d:[F

    const/4 p4, -0x1

    iput p4, p0, Lya;->e:I

    iput p4, p0, Lya;->i:I

    iput-boolean p3, p0, Lya;->j:Z

    iput-object p1, p0, Lya;->g:Lyb;

    iput-object p2, p0, Lya;->f:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method


# virtual methods
.method public final a(Lyh;)F
    .locals 4

    iget v0, p0, Lya;->e:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Lya;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lya;->b:[I

    aget v2, v2, v0

    iget v3, p1, Lyh;->c:I

    if-ne v2, v3, :cond_0

    iget-object p1, p0, Lya;->d:[F

    aget p1, p1, v0

    return p1

    :cond_0
    iget-object v2, p0, Lya;->c:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)F
    .locals 3

    iget v0, p0, Lya;->e:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Lya;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lya;->d:[F

    aget p1, p1, v0

    return p1

    :cond_0
    iget-object v2, p0, Lya;->c:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lyh;Z)F
    .locals 8

    iget v0, p0, Lya;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-eq v0, v2, :cond_4

    iget v5, p0, Lya;->a:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lya;->b:[I

    aget v5, v5, v0

    iget v6, p1, Lyh;->c:I

    if-ne v5, v6, :cond_3

    iget v1, p0, Lya;->e:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lya;->c:[I

    aget v1, v1, v0

    iput v1, p0, Lya;->e:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lya;->c:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_1
    if-eqz p2, :cond_1

    iget-object p2, p0, Lya;->g:Lyb;

    invoke-virtual {p1, p2}, Lyh;->b(Lyb;)V

    :cond_1
    iget p2, p1, Lyh;->l:I

    add-int/2addr p2, v2

    iput p2, p1, Lyh;->l:I

    iget p1, p0, Lya;->a:I

    add-int/2addr p1, v2

    iput p1, p0, Lya;->a:I

    iget-object p1, p0, Lya;->b:[I

    aput v2, p1, v0

    iget-boolean p1, p0, Lya;->j:Z

    if-eqz p1, :cond_2

    iput v0, p0, Lya;->i:I

    :cond_2
    iget-object p1, p0, Lya;->d:[F

    aget p1, p1, v0

    return p1

    :cond_3
    iget-object v4, p0, Lya;->c:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final d(I)Lyh;
    .locals 3

    iget v0, p0, Lya;->e:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v2, p0, Lya;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lya;->f:Landroidx/wear/ambient/AmbientDelegate;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v1, p0, Lya;->b:[I

    aget v0, v1, v0

    check-cast p1, [Lyh;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    iget-object v2, p0, Lya;->c:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lyh;FZ)V
    .locals 10

    const v0, 0x3a83126f    # 0.001f

    const v1, -0x457ced91    # -0.001f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    cmpg-float v2, p2, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget v2, p0, Lya;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    iput v3, p0, Lya;->e:I

    iget-object p3, p0, Lya;->d:[F

    aput p2, p3, v3

    iget-object p2, p0, Lya;->b:[I

    iget p3, p1, Lyh;->c:I

    aput p3, p2, v3

    iget-object p2, p0, Lya;->c:[I

    aput v5, p2, v3

    iget p2, p1, Lyh;->l:I

    add-int/2addr p2, v4

    iput p2, p1, Lyh;->l:I

    iget-object p2, p0, Lya;->g:Lyb;

    invoke-virtual {p1, p2}, Lyh;->a(Lyb;)V

    iget p1, p0, Lya;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Lya;->a:I

    iget-boolean p1, p0, Lya;->j:Z

    if-nez p1, :cond_2

    iget p1, p0, Lya;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lya;->i:I

    iget-object p2, p0, Lya;->b:[I

    array-length p2, p2

    if-lt p1, p2, :cond_2

    iput-boolean v4, p0, Lya;->j:Z

    add-int/2addr p2, v5

    iput p2, p0, Lya;->i:I

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_1
    if-eq v2, v5, :cond_b

    iget v8, p0, Lya;->a:I

    if-ge v6, v8, :cond_b

    iget-object v8, p0, Lya;->b:[I

    aget v8, v8, v2

    iget v9, p1, Lyh;->c:I

    if-ne v8, v9, :cond_9

    iget-object v3, p0, Lya;->d:[F

    aget v4, v3, v2

    add-float/2addr v4, p2

    const/4 p2, 0x0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_4

    cmpg-float v0, v4, v0

    if-gez v0, :cond_4

    const/4 v4, 0x0

    :cond_4
    aput v4, v3, v2

    cmpl-float p2, v4, p2

    if-nez p2, :cond_8

    iget p2, p0, Lya;->e:I

    if-ne v2, p2, :cond_5

    iget-object p2, p0, Lya;->c:[I

    aget p2, p2, v2

    iput p2, p0, Lya;->e:I

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lya;->c:[I

    aget v0, p2, v2

    aput v0, p2, v7

    :goto_2
    if-eqz p3, :cond_6

    iget-object p2, p0, Lya;->g:Lyb;

    invoke-virtual {p1, p2}, Lyh;->b(Lyb;)V

    :cond_6
    iget-boolean p2, p0, Lya;->j:Z

    if-eqz p2, :cond_7

    iput v2, p0, Lya;->i:I

    :cond_7
    iget p2, p1, Lyh;->l:I

    add-int/2addr p2, v5

    iput p2, p1, Lyh;->l:I

    iget p1, p0, Lya;->a:I

    add-int/2addr p1, v5

    iput p1, p0, Lya;->a:I

    return-void

    :cond_8
    return-void

    :cond_9
    if-ge v8, v9, :cond_a

    move v7, v2

    :cond_a
    iget-object v8, p0, Lya;->c:[I

    aget v2, v8, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    iget p3, p0, Lya;->i:I

    add-int/lit8 v0, p3, 0x1

    iget-boolean v1, p0, Lya;->j:Z

    if-eqz v1, :cond_c

    iget-object v0, p0, Lya;->b:[I

    aget v1, v0, p3

    if-eq v1, v5, :cond_d

    array-length p3, v0

    goto :goto_3

    :cond_c
    move p3, v0

    :cond_d
    :goto_3
    iget-object v0, p0, Lya;->b:[I

    array-length v0, v0

    if-lt p3, v0, :cond_f

    iget v1, p0, Lya;->a:I

    if-ge v1, v0, :cond_f

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lya;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget v1, v1, v0

    if-ne v1, v5, :cond_e

    move p3, v0

    goto :goto_5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    iget-object v0, p0, Lya;->b:[I

    array-length v0, v0

    if-lt p3, v0, :cond_10

    iget p3, p0, Lya;->h:I

    add-int/2addr p3, p3

    iput p3, p0, Lya;->h:I

    iput-boolean v3, p0, Lya;->j:Z

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lya;->i:I

    iget-object v1, p0, Lya;->d:[F

    invoke-static {v1, p3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p3

    iput-object p3, p0, Lya;->d:[F

    iget-object p3, p0, Lya;->b:[I

    iget v1, p0, Lya;->h:I

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p0, Lya;->b:[I

    iget-object p3, p0, Lya;->c:[I

    iget v1, p0, Lya;->h:I

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p0, Lya;->c:[I

    move p3, v0

    :cond_10
    iget-object v0, p0, Lya;->b:[I

    iget v1, p1, Lyh;->c:I

    aput v1, v0, p3

    iget-object v0, p0, Lya;->d:[F

    aput p2, v0, p3

    if-eq v7, v5, :cond_11

    iget-object p2, p0, Lya;->c:[I

    aget v0, p2, v7

    aput v0, p2, p3

    aput p3, p2, v7

    goto :goto_6

    :cond_11
    iget-object p2, p0, Lya;->c:[I

    iget v0, p0, Lya;->e:I

    aput v0, p2, p3

    iput p3, p0, Lya;->e:I

    :goto_6
    iget p2, p1, Lyh;->l:I

    add-int/2addr p2, v4

    iput p2, p1, Lyh;->l:I

    iget-object p2, p0, Lya;->g:Lyb;

    invoke-virtual {p1, p2}, Lyh;->a(Lyb;)V

    iget p1, p0, Lya;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Lya;->a:I

    iget-boolean p1, p0, Lya;->j:Z

    if-nez p1, :cond_12

    iget p1, p0, Lya;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lya;->i:I

    :cond_12
    iget p1, p0, Lya;->i:I

    iget-object p2, p0, Lya;->b:[I

    array-length p2, p2

    if-lt p1, p2, :cond_13

    iput-boolean v4, p0, Lya;->j:Z

    add-int/2addr p2, v5

    iput p2, p0, Lya;->i:I

    :cond_13
    return-void
.end method

.method public final f()V
    .locals 5

    iget v0, p0, Lya;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v4, p0, Lya;->a:I

    if-ge v2, v4, :cond_1

    iget-object v3, p0, Lya;->f:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v3, v3, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v4, p0, Lya;->b:[I

    aget v4, v4, v0

    check-cast v3, [Lyh;

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v4, p0, Lya;->g:Lyb;

    invoke-virtual {v3, v4}, Lyh;->b(Lyb;)V

    :cond_0
    iget-object v3, p0, Lya;->c:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lya;->e:I

    iput v3, p0, Lya;->i:I

    iput-boolean v1, p0, Lya;->j:Z

    iput v1, p0, Lya;->a:I

    return-void
.end method

.method public final g(Lyh;F)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lya;->c(Lyh;Z)F

    return-void

    :cond_0
    iget v0, p0, Lya;->e:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    iput v2, p0, Lya;->e:I

    iget-object v0, p0, Lya;->d:[F

    aput p2, v0, v2

    iget-object p2, p0, Lya;->b:[I

    iget v0, p1, Lyh;->c:I

    aput v0, p2, v2

    iget-object p2, p0, Lya;->c:[I

    aput v3, p2, v2

    iget p2, p1, Lyh;->l:I

    add-int/2addr p2, v1

    iput p2, p1, Lyh;->l:I

    iget-object p2, p0, Lya;->g:Lyb;

    invoke-virtual {p1, p2}, Lyh;->a(Lyb;)V

    iget p1, p0, Lya;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lya;->a:I

    iget-boolean p1, p0, Lya;->j:Z

    if-nez p1, :cond_1

    iget p1, p0, Lya;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Lya;->i:I

    iget-object p2, p0, Lya;->b:[I

    array-length p2, p2

    if-lt p1, p2, :cond_1

    iput-boolean v1, p0, Lya;->j:Z

    add-int/2addr p2, v3

    iput p2, p0, Lya;->i:I

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-eq v0, v3, :cond_5

    iget v6, p0, Lya;->a:I

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lya;->b:[I

    aget v6, v6, v0

    iget v7, p1, Lyh;->c:I

    if-ne v6, v7, :cond_3

    iget-object p1, p0, Lya;->d:[F

    aput p2, p1, v0

    return-void

    :cond_3
    if-ge v6, v7, :cond_4

    move v5, v0

    :cond_4
    iget-object v6, p0, Lya;->c:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Lya;->i:I

    add-int/lit8 v4, v0, 0x1

    iget-boolean v6, p0, Lya;->j:Z

    if-eqz v6, :cond_6

    iget-object v4, p0, Lya;->b:[I

    aget v6, v4, v0

    if-eq v6, v3, :cond_7

    array-length v0, v4

    goto :goto_1

    :cond_6
    move v0, v4

    :cond_7
    :goto_1
    iget-object v4, p0, Lya;->b:[I

    array-length v4, v4

    if-lt v0, v4, :cond_9

    iget v6, p0, Lya;->a:I

    if-ge v6, v4, :cond_9

    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Lya;->b:[I

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
    iget-object v4, p0, Lya;->b:[I

    array-length v4, v4

    if-lt v0, v4, :cond_a

    iget v0, p0, Lya;->h:I

    add-int/2addr v0, v0

    iput v0, p0, Lya;->h:I

    iput-boolean v2, p0, Lya;->j:Z

    add-int/lit8 v2, v4, -0x1

    iput v2, p0, Lya;->i:I

    iget-object v2, p0, Lya;->d:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lya;->d:[F

    iget-object v0, p0, Lya;->b:[I

    iget v2, p0, Lya;->h:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lya;->b:[I

    iget-object v0, p0, Lya;->c:[I

    iget v2, p0, Lya;->h:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lya;->c:[I

    move v0, v4

    :cond_a
    iget-object v2, p0, Lya;->b:[I

    iget v4, p1, Lyh;->c:I

    aput v4, v2, v0

    iget-object v2, p0, Lya;->d:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_b

    iget-object p2, p0, Lya;->c:[I

    aget v2, p2, v5

    aput v2, p2, v0

    aput v0, p2, v5

    goto :goto_4

    :cond_b
    iget-object p2, p0, Lya;->c:[I

    iget v2, p0, Lya;->e:I

    aput v2, p2, v0

    iput v0, p0, Lya;->e:I

    :goto_4
    iget p2, p1, Lyh;->l:I

    add-int/2addr p2, v1

    iput p2, p1, Lyh;->l:I

    iget-object p2, p0, Lya;->g:Lyb;

    invoke-virtual {p1, p2}, Lyh;->a(Lyb;)V

    iget p1, p0, Lya;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lya;->a:I

    iget-boolean p2, p0, Lya;->j:Z

    if-nez p2, :cond_c

    iget p2, p0, Lya;->i:I

    add-int/2addr p2, v1

    iput p2, p0, Lya;->i:I

    :cond_c
    iget-object p2, p0, Lya;->b:[I

    array-length p2, p2

    if-lt p1, p2, :cond_d

    iput-boolean v1, p0, Lya;->j:Z

    :cond_d
    iget p1, p0, Lya;->i:I

    if-lt p1, p2, :cond_e

    iput-boolean v1, p0, Lya;->j:Z

    add-int/2addr p2, v3

    iput p2, p0, Lya;->i:I

    :cond_e
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lya;->e:I

    const/4 v1, 0x0

    const-string v2, ""

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Lya;->a:I

    if-ge v1, v3, :cond_0

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lya;->d:[F

    aget v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lya;->f:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v4, v4, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v5, p0, Lya;->b:[I

    aget v5, v5, v0

    check-cast v4, [Lyh;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lya;->c:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
