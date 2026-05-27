.class public final Lbht;
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

    invoke-virtual {p0, p1, p2}, Lbht;->l(Lblt;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final k()I
    .locals 2

    invoke-virtual {p0}, Lbhs;->d()Lblt;

    move-result-object v0

    invoke-virtual {p0}, Lbhs;->b()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbht;->l(Lblt;F)I

    move-result v0

    return v0
.end method

.method public final l(Lblt;F)I
    .locals 3

    iget-object v0, p1, Lblt;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lblt;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lblt;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lbht;->d:Lbkc;

    if-eqz v2, :cond_0

    iget p2, p1, Lblt;->g:F

    iget-object p1, p1, Lblt;->h:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    invoke-virtual {p0}, Lbhs;->c()F

    iget-object p1, v2, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v2}, Lbln;->a(FFF)F

    move-result p1

    invoke-static {p1, v0, v1}, Lbze;->L(FII)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
