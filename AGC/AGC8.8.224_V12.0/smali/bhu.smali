.class public final Lbhu;
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

    invoke-virtual {p0, p1, p2}, Lbhu;->l(Lblt;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final k()F
    .locals 2

    invoke-virtual {p0}, Lbhs;->d()Lblt;

    move-result-object v0

    invoke-virtual {p0}, Lbhs;->b()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbhu;->l(Lblt;F)F

    move-result v0

    return v0
.end method

.method final l(Lblt;F)F
    .locals 4

    iget-object v0, p1, Lblt;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lblt;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbhu;->d:Lbkc;

    if-nez v1, :cond_2

    iget v1, p1, Lblt;->i:F

    const v2, -0x358c9d09

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p1, Lblt;->i:F

    :cond_0
    iget v0, p1, Lblt;->j:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p1, Lblt;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lblt;->j:F

    goto :goto_0

    :cond_1
    :goto_0
    sget-object p1, Lbln;->a:Landroid/graphics/PointF;

    sub-float/2addr v0, v1

    mul-float p2, p2, v0

    add-float/2addr v1, p2

    return v1

    :cond_2
    iget p2, p1, Lblt;->g:F

    iget-object p2, p1, Lblt;->h:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    iget-object p2, p1, Lblt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    iget-object p1, p1, Lblt;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0}, Lbhs;->c()F

    iget-object p1, v1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
