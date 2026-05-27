.class public final Lexm;
.super Ljava/lang/Object;

# interfaces
.implements Lexn;


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:[F

.field final c:[F

.field final d:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexm;->a:Ljava/util/ArrayList;

    const/16 v0, 0x26

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lexm;->b:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lexm;->c:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lexm;->d:[F

    return-void

    :array_0
    .array-data 4
        -0x409b4e87
        -0x40a3d70a    # -0.86f
        -0x40a3d70a    # -0.86f
        -0x40c5f927
        -0x40cb17df
        -0x40cb17df
        -0x40d70a3d    # -0.66f
        -0x40d70a3d    # -0.66f
        -0x41317e56
        -0x4134e810
        -0x4134e810
        -0x413bbbc7
        -0x413bbbc7
        -0x41428f5c    # -0.37f
        -0x41428f5c    # -0.37f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ebd70a4    # 0.37f
        0x3ebd70a4    # 0.37f
        0x3ec44439
        0x3ec44439
        0x3ecb17f0
        0x3ecb17f0
        0x3ece81aa
        0x3f28f5c3    # 0.66f
        0x3f28f5c3    # 0.66f
        0x3f34e821
        0x3f34e821
        0x3f3a06d9
        0x3f5c28f6    # 0.86f
        0x3f5c28f6    # 0.86f
        0x3f64b179
        -0x409b4e87
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x41444439
        0x3ebbbbc7
        0x0
        -0x413d70a4    # -0.38f
        0x3ec28f5c    # 0.38f
        -0x40d62fcf
        0x3f29d031
        0x0
        -0x41369d0f
        0x3ec962f1
        -0x40ca3d71    # -0.71f
        0x3f35c28f    # 0.71f
        -0x40a2fc9c
        0x3f5d0364
        -0x408e81ba
        -0x40c5f927
        -0x41317e56
        0x0
        0x3ece81aa
        0x3f3a06d9
        0x3f717e46
        -0x40a2fc9c
        0x3f5d0364
        -0x40ca3d71    # -0.71f
        0x3f35c28f    # 0.71f
        -0x41369d0f
        0x3ec962f1
        0x0
        -0x40d62fcf
        0x3f29d031
        -0x413d70a4    # -0.38f
        0x3ec28f5c    # 0.38f
        0x0
        -0x41444439
        0x3ebbbbc7
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public final a(FLexi;[FII)V
    .locals 7

    int-to-float p5, p5

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    div-float/2addr p5, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    mul-float v0, v0, v1

    iget-object v1, p0, Lexm;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iget-object v2, p2, Lexi;->h:Lext;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lewj;->c()V

    iget-object v2, p2, Lexi;->h:Lext;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lext;->j(F)V

    :goto_0
    const/16 v2, 0x26

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lexm;->b:[F

    aget v2, v2, v3

    mul-float v2, v2, p1

    mul-float v2, v2, v0

    add-float/2addr v2, p4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lexm;->c:[F

    aget v2, v2, v3

    mul-float v2, v2, p1

    mul-float v2, v2, v0

    add-float/2addr v2, p5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lexm;->d:[F

    aget v2, v2, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v4

    iget-object v4, p2, Lexi;->e:Lewl;

    if-eqz v4, :cond_1

    iget-object v5, p2, Lexi;->h:Lext;

    if-eqz v5, :cond_1

    :try_start_0
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, p3, v5, v6, v2}, Lewl;->f([FFFF)V
    :try_end_0
    .catch Lewi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lewi;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
