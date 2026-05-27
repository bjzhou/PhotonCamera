.class public final Lyg;
.super Lyb;


# instance fields
.field public f:I

.field final g:Lyf;

.field private h:[Lyh;

.field private i:[Lyh;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;[B[B)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lyb;-><init>(Landroidx/wear/ambient/AmbientDelegate;[B[B)V

    const/16 p1, 0x80

    new-array p2, p1, [Lyh;

    iput-object p2, p0, Lyg;->h:[Lyh;

    new-array p1, p1, [Lyh;

    iput-object p1, p0, Lyg;->i:[Lyh;

    const/4 p1, 0x0

    iput p1, p0, Lyg;->f:I

    new-instance p1, Lyf;

    invoke-direct {p1, p0}, Lyf;-><init>(Lyg;)V

    iput-object p1, p0, Lyg;->g:Lyf;

    return-void
.end method


# virtual methods
.method public final d(Lyc;Lyb;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lyb;->a:Lyh;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lyb;->e:Lya;

    iget v4, v3, Lya;->a:I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    invoke-virtual {v3, v6}, Lya;->d(I)Lyh;

    move-result-object v7

    invoke-virtual {v3, v6}, Lya;->b(I)F

    move-result v8

    iget-object v9, v0, Lyg;->g:Lyf;

    iput-object v7, v9, Lyf;->a:Lyh;

    iget-object v10, v9, Lyf;->a:Lyh;

    iget-boolean v10, v10, Lyh;->b:Z

    const v11, 0x38d1b717    # 1.0E-4f

    const/16 v12, 0x9

    const/4 v13, 0x0

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_2

    iget-object v14, v9, Lyf;->a:Lyh;

    iget-object v14, v14, Lyh;->i:[F

    aget v15, v14, v10

    iget-object v5, v2, Lyh;->i:[F

    aget v5, v5, v10

    mul-float v5, v5, v8

    add-float/2addr v15, v5

    aput v15, v14, v10

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_1

    iget-object v5, v9, Lyf;->a:Lyh;

    iget-object v5, v5, Lyh;->i:[F

    aput v13, v5, v10

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_7

    iget-object v5, v9, Lyf;->b:Lyg;

    iget-object v7, v9, Lyf;->a:Lyh;

    invoke-virtual {v5, v7}, Lyg;->n(Lyh;)V

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_6

    iget-object v10, v2, Lyh;->i:[F

    aget v10, v10, v5

    cmpl-float v14, v10, v13

    if-eqz v14, :cond_5

    mul-float v10, v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v14, v14, v11

    if-gez v14, :cond_4

    const/4 v10, 0x0

    :cond_4
    iget-object v14, v9, Lyf;->a:Lyh;

    iget-object v14, v14, Lyh;->i:[F

    aput v10, v14, v5

    goto :goto_4

    :cond_5
    iget-object v10, v9, Lyf;->a:Lyh;

    iget-object v10, v10, Lyh;->i:[F

    aput v13, v10, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v7}, Lyg;->m(Lyh;)V

    :cond_7
    :goto_5
    iget v5, v0, Lyg;->b:F

    iget v7, v1, Lyb;->b:F

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    iput v5, v0, Lyg;->b:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v2}, Lyg;->n(Lyh;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lyg;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k([Z)Lyh;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    iget v3, p0, Lyg;->f:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lyg;->h:[Lyh;

    aget-object v4, v3, v0

    iget v5, v4, Lyh;->c:I

    aget-boolean v5, p1, v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lyg;->g:Lyf;

    iput-object v4, v5, Lyf;->a:Lyh;

    const/16 v4, 0x8

    if-ne v2, v1, :cond_1

    :goto_1
    if-ltz v4, :cond_3

    iget-object v3, v5, Lyf;->a:Lyh;

    iget-object v3, v3, Lyh;->i:[F

    aget v3, v3, v4

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-gtz v7, :cond_3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    aget-object v3, v3, v2

    :goto_2
    if-ltz v4, :cond_3

    iget-object v6, v3, Lyh;->i:[F

    aget v6, v6, v4

    iget-object v7, v5, Lyf;->a:Lyh;

    iget-object v7, v7, Lyh;->i:[F

    aget v7, v7, v4

    cmpl-float v8, v7, v6

    if-nez v8, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    cmpg-float v3, v7, v6

    if-gez v3, :cond_3

    :goto_3
    move v2, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-ne v2, v1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    iget-object p1, p0, Lyg;->h:[Lyh;

    aget-object p1, p1, v2

    return-object p1
.end method

.method public final m(Lyh;)V
    .locals 5

    iget v0, p0, Lyg;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lyg;->h:[Lyh;

    array-length v3, v2

    if-le v0, v3, :cond_0

    add-int/2addr v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyh;

    iput-object v0, p0, Lyg;->h:[Lyh;

    array-length v2, v0

    add-int/2addr v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyh;

    iput-object v0, p0, Lyg;->i:[Lyh;

    :cond_0
    iget-object v0, p0, Lyg;->h:[Lyh;

    iget v2, p0, Lyg;->f:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    iput v2, p0, Lyg;->f:I

    if-le v2, v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget v0, v0, Lyh;->c:I

    iget v2, p1, Lyh;->c:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lyg;->f:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lyg;->i:[Lyh;

    iget-object v4, p0, Lyg;->h:[Lyh;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lyg;->i:[Lyh;

    new-instance v4, Lye;

    invoke-direct {v4, v0}, Lye;-><init>(I)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_1
    iget v2, p0, Lyg;->f:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lyg;->h:[Lyh;

    iget-object v3, p0, Lyg;->i:[Lyh;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p1, Lyh;->b:Z

    invoke-virtual {p1, p0}, Lyh;->a(Lyb;)V

    return-void
.end method

.method public final n(Lyh;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lyg;->f:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lyg;->h:[Lyh;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    iget v2, p0, Lyg;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lyg;->h:[Lyh;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    iput v2, p0, Lyg;->f:I

    iput-boolean v0, p1, Lyh;->b:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lyg;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lyg;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lyg;->h:[Lyh;

    aget-object v2, v2, v1

    iget-object v3, p0, Lyg;->g:Lyf;

    iput-object v2, v3, Lyf;->a:Lyh;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyg;->g:Lyf;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
