.class public final Lmkd;
.super Lmjy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmjy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmkn;FF)V
    .locals 4

    mul-float v0, p3, p2

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0, v1, v2}, Lmkn;->f(FFF)V

    new-instance v0, Lmkj;

    add-float/2addr p3, p3

    mul-float p3, p3, p2

    const/4 p2, 0x0

    invoke-direct {v0, p2, p2, p3, p3}, Lmkj;-><init>(FFFF)V

    iput v1, v0, Lmkj;->e:F

    iput v2, v0, Lmkj;->f:F

    iget-object v2, p1, Lmkn;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lmkm;

    invoke-direct {v0}, Lmkm;-><init>()V

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v0, v1, v2}, Lmkn;->b(Lmkm;FF)V

    const-wide v0, 0x4070e00000000000L    # 270.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr p3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p3, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float p3, p3, v3

    mul-float v2, v2, p2

    add-float/2addr v2, p3

    iput v2, p1, Lmkn;->b:F

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p2, p2, v0

    add-float/2addr p3, p2

    iput p3, p1, Lmkn;->c:F

    return-void
.end method
