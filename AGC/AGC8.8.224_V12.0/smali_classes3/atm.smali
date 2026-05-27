.class final Latm;
.super Lasp;


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;

.field c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field public l:[I

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lasp;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Latm;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latm;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Latm;->c:F

    iput v0, p0, Latm;->d:F

    iput v0, p0, Latm;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Latm;->f:F

    iput v1, p0, Latm;->g:F

    iput v0, p0, Latm;->h:F

    iput v0, p0, Latm;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Latm;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Latm;Lwy;)V
    .locals 4

    invoke-direct {p0}, Lasp;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Latm;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latm;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Latm;->c:F

    iput v0, p0, Latm;->d:F

    iput v0, p0, Latm;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Latm;->f:F

    iput v1, p0, Latm;->g:F

    iput v0, p0, Latm;->h:F

    iput v0, p0, Latm;->i:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iput-object v1, p0, Latm;->m:Ljava/lang/String;

    iget v2, p1, Latm;->c:F

    iput v2, p0, Latm;->c:F

    iget v2, p1, Latm;->d:F

    iput v2, p0, Latm;->d:F

    iget v2, p1, Latm;->e:F

    iput v2, p0, Latm;->e:F

    iget v2, p1, Latm;->f:F

    iput v2, p0, Latm;->f:F

    iget v2, p1, Latm;->g:F

    iput v2, p0, Latm;->g:F

    iget v2, p1, Latm;->h:F

    iput v2, p0, Latm;->h:F

    iget v2, p1, Latm;->i:F

    iput v2, p0, Latm;->i:F

    iget-object v2, p1, Latm;->l:[I

    iput-object v1, p0, Latm;->l:[I

    iget-object v1, p1, Latm;->m:Ljava/lang/String;

    iput-object v1, p0, Latm;->m:Ljava/lang/String;

    iget v2, p1, Latm;->k:I

    const/4 v2, 0x0

    iput v2, p0, Latm;->k:I

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1, p0}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p1, Latm;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Latm;->b:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Latm;

    if-eqz v1, :cond_1

    check-cast v0, Latm;

    iget-object v1, p0, Latm;->b:Ljava/util/ArrayList;

    new-instance v3, Latm;

    invoke-direct {v3, v0, p2}, Latm;-><init>(Latm;Lwy;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v1, v0, Latl;

    if-eqz v1, :cond_2

    new-instance v1, Latl;

    check-cast v0, Latl;

    invoke-direct {v1, v0}, Latl;-><init>(Latl;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Latk;

    if-eqz v1, :cond_4

    new-instance v1, Latk;

    check-cast v0, Latk;

    invoke-direct {v1, v0}, Latk;-><init>(Latk;)V

    :goto_1
    iget-object v0, p0, Latm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Latn;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0, v1}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Latm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Latm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasp;

    invoke-virtual {v2}, Lasp;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final c([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Latm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Latm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasp;

    invoke-virtual {v2, p1}, Lasp;->c([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    iget v1, p0, Latm;->d:F

    neg-float v1, v1

    iget v2, p0, Latm;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    iget v1, p0, Latm;->f:F

    iget v2, p0, Latm;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    iget v1, p0, Latm;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    iget v1, p0, Latm;->h:F

    iget v2, p0, Latm;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Latm;->i:F

    iget v3, p0, Latm;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Latm;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Latm;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    iget v0, p0, Latm;->d:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget v0, p0, Latm;->e:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Latm;->c:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Latm;->f:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Latm;->g:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    iget v0, p0, Latm;->h:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    iget v0, p0, Latm;->i:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    iget v0, p0, Latm;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->d:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget v0, p0, Latm;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->e:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Latm;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->c:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Latm;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->f:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Latm;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->g:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    iget v0, p0, Latm;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->h:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    iget v0, p0, Latm;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Latm;->i:F

    invoke-virtual {p0}, Latm;->d()V

    :cond_0
    return-void
.end method
