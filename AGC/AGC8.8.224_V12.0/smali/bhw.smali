.class public final Lbhw;
.super Lbhx;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbhx;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic f(Lblt;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbhw;->k(Lblt;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lblt;F)I
    .locals 3

    iget-object v0, p1, Lblt;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lblt;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbhw;->d:Lbkc;

    if-nez v1, :cond_2

    iget v1, p1, Lblt;->k:I

    const v2, 0x2ec8fb09

    if-ne v1, v2, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lblt;->k:I

    :cond_0
    iget v0, p1, Lblt;->l:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lblt;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lblt;->l:I

    goto :goto_0

    :cond_1
    :goto_0
    sget-object p1, Lbln;->a:Landroid/graphics/PointF;

    int-to-float p1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_2
    iget p2, p1, Lblt;->g:F

    iget-object p2, p1, Lblt;->h:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    iget-object p2, p1, Lblt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    iget-object p1, p1, Lblt;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lbhs;->c()F

    iget-object p1, v1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
