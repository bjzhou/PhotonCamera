.class final Lmjf;
.super Landroid/util/Property;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "animationFraction"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lmjg;

    sget v0, Lmjg;->f:I

    iget p1, p1, Lmjg;->e:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lmjg;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lmjg;->e:F

    const v0, 0x43a68000    # 333.0f

    mul-float p2, p2, v0

    iget-object v0, p1, Lmjg;->k:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p1, Lmjg;->a:Lakf;

    float-to-int p2, p2

    const/16 v3, 0x29b

    invoke-static {p2, v2, v3}, Lmjg;->f(III)F

    move-result p2

    invoke-virtual {v1, p2}, Lakf;->getInterpolation(F)F

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x1

    aput v1, v0, v4

    iget-object v0, p1, Lmjg;->k:[F

    iget-object v1, p1, Lmjg;->a:Lakf;

    const v5, 0x3eff9dbf

    add-float/2addr p2, v5

    invoke-virtual {v1, p2}, Lakf;->getInterpolation(F)F

    move-result p2

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    iget-object p2, p1, Lmjg;->k:[F

    const/4 v0, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, p2, v0

    iget-boolean v0, p1, Lmjg;->d:Z

    if-eqz v0, :cond_0

    aget p2, p2, v1

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    iget-object p2, p1, Lmjg;->l:[I

    aget v0, p2, v4

    aput v0, p2, v3

    aget v0, p2, v2

    aput v0, p2, v4

    iget-object v0, p1, Lmjg;->b:Lmim;

    iget-object v0, v0, Lmim;->c:[I

    iget v1, p1, Lmjg;->c:I

    aget v0, v0, v1

    iget-object v1, p1, Lmjg;->j:Lmjc;

    iget v1, v1, Lmiz;->i:I

    invoke-static {v0, v1}, Lkwp;->k(II)I

    move-result v0

    aput v0, p2, v2

    iput-boolean v2, p1, Lmjg;->d:Z

    :cond_0
    iget-object p1, p1, Lmjg;->j:Lmjc;

    invoke-virtual {p1}, Lmjc;->invalidateSelf()V

    return-void
.end method
