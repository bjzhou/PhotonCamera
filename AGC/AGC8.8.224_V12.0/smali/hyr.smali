.class public final Lhyr;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/util/Size;

.field public b:Landroid/util/Size;

.field public c:Ljava/lang/Integer;

.field private d:Landroid/util/Size;

.field private e:Z

.field private f:Liko;

.field private g:Lika;

.field private h:Lhyn;

.field private i:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhys;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhys;->b:Landroid/util/Size;

    iput-object v0, p0, Lhyr;->a:Landroid/util/Size;

    iget-object v0, p1, Lhys;->c:Landroid/util/Size;

    iput-object v0, p0, Lhyr;->b:Landroid/util/Size;

    iget-object v0, p1, Lhys;->d:Landroid/util/Size;

    iput-object v0, p0, Lhyr;->d:Landroid/util/Size;

    iget-object v0, p1, Lhys;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lhyr;->c:Ljava/lang/Integer;

    iget-boolean v0, p1, Lhys;->f:Z

    iput-boolean v0, p0, Lhyr;->e:Z

    iget-object v0, p1, Lhys;->g:Liko;

    iput-object v0, p0, Lhyr;->f:Liko;

    iget-object v0, p1, Lhys;->h:Lika;

    iput-object v0, p0, Lhyr;->g:Lika;

    iget-object p1, p1, Lhys;->i:Lhyn;

    iput-object p1, p0, Lhyr;->h:Lhyn;

    const/4 p1, 0x3

    iput-byte p1, p0, Lhyr;->i:B

    return-void
.end method


# virtual methods
.method public final a()Lhys;
    .locals 12

    iget-object v0, p0, Lhyr;->b:Landroid/util/Size;

    iget-object v1, p0, Lhyr;->c:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v3, p0, Lhyr;->f:Liko;

    if-eqz v3, :cond_4

    iget v3, v3, Liko;->e:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v3, v1

    invoke-static {v3}, Lkab;->b(I)Lkab;

    move-result-object v1

    sget-object v3, Lkab;->b:Lkab;

    invoke-virtual {v1, v3}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lkab;->d:Lkab;

    invoke-virtual {v1, v3}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_2
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lhyr;->d:Landroid/util/Size;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"orientation\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    iget-byte v0, p0, Lhyr;->i:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lhyr;->f:Liko;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhyr;->g:Lika;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhyr;->h:Lhyn;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lhys;

    iget-object v4, p0, Lhyr;->a:Landroid/util/Size;

    iget-object v5, p0, Lhyr;->b:Landroid/util/Size;

    iget-object v6, p0, Lhyr;->d:Landroid/util/Size;

    iget-object v7, p0, Lhyr;->c:Ljava/lang/Integer;

    iget-boolean v8, p0, Lhyr;->e:Z

    iget-object v9, p0, Lhyr;->f:Liko;

    iget-object v10, p0, Lhyr;->g:Lika;

    iget-object v11, p0, Lhyr;->h:Lhyn;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lhys;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;Ljava/lang/Integer;ZLiko;Lika;Lhyn;)V

    return-object v0

    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lhyr;->i:B

    and-int/2addr v1, v2

    if-nez v1, :cond_8

    const-string v1, " isPreviewMaximized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v1, p0, Lhyr;->i:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    const-string v1, " hasCutout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lhyr;->f:Liko;

    if-nez v1, :cond_a

    const-string v1, " orientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lhyr;->g:Lika;

    if-nez v1, :cond_b

    const-string v1, " mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lhyr;->h:Lhyn;

    if-nez v1, :cond_c

    const-string v1, " decision"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lhyn;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyr;->h:Lhyn;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null decision"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lhyr;->e:Z

    iget-byte p1, p0, Lhyr;->i:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhyr;->i:B

    return-void
.end method

.method public final d()V
    .locals 1

    iget-byte v0, p0, Lhyr;->i:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lhyr;->i:B

    return-void
.end method

.method public final e(Lika;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyr;->g:Lika;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null mode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Liko;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhyr;->f:Liko;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null orientation"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
