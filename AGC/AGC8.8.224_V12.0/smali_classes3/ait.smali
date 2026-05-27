.class public final Lait;
.super Lais;


# instance fields
.field public final q:Lfow;


# direct methods
.method public constructor <init>(Lgtb;[B)V
    .locals 1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lais;-><init>(Lgtb;[B)V

    new-instance p1, Lfow;

    invoke-direct {p1}, Lfow;-><init>()V

    iput-object p1, p0, Lait;->q:Lfow;

    invoke-virtual {p0}, Lais;->b()F

    move-result p2

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float p2, p2, v0

    iput p2, p1, Lfow;->b:F

    return-void
.end method


# virtual methods
.method public final e(J)Z
    .locals 7

    iget-object v0, p0, Lait;->q:Lfow;

    iget v1, p0, Lait;->i:F

    iget v2, p0, Lait;->h:F

    iget-object v3, v0, Lfow;->c:Ljava/lang/Object;

    float-to-double v4, v2

    iget v6, v0, Lfow;->a:F

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    mul-float p1, p1, v6

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, p1

    check-cast v3, Laio;

    double-to-float p1, v4

    iput p1, v3, Laio;->b:F

    iget-object p1, v0, Lfow;->c:Ljava/lang/Object;

    check-cast p1, Laio;

    iget p2, p1, Laio;->b:F

    sub-float v2, p2, v2

    iget v3, v0, Lfow;->a:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Laio;->a:F

    invoke-virtual {v0, p2}, Lfow;->a(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lfow;->c:Ljava/lang/Object;

    check-cast p1, Laio;

    const/4 p2, 0x0

    iput p2, p1, Laio;->b:F

    :cond_0
    iget-object p1, v0, Lfow;->c:Ljava/lang/Object;

    check-cast p1, Laio;

    iget p2, p1, Laio;->a:F

    iput p2, p0, Lait;->i:F

    iget p1, p1, Laio;->b:F

    iput p1, p0, Lait;->h:F

    iget v0, p0, Lait;->o:F

    const/4 v1, 0x1

    cmpg-float v2, p2, v0

    if-gez v2, :cond_1

    iput v0, p0, Lait;->i:F

    return v1

    :cond_1
    iget v2, p0, Lait;->n:F

    cmpl-float v3, p2, v2

    if-lez v3, :cond_2

    iput v2, p0, Lait;->i:F

    return v1

    :cond_2
    cmpl-float v2, p2, v2

    if-gez v2, :cond_4

    cmpg-float p2, p2, v0

    if-lez p2, :cond_4

    iget-object p2, p0, Lait;->q:Lfow;

    invoke-virtual {p2, p1}, Lfow;->a(F)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public final k()V
    .locals 0

    invoke-super {p0}, Lais;->h()V

    return-void
.end method
