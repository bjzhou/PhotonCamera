.class public final Ljzr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljzr;

.field public static final b:Ljzr;

.field public static final c:Ljzr;


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljzr;->k(II)Ljzr;

    move-result-object v2

    sput-object v2, Ljzr;->a:Ljzr;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-static {v2, v3}, Ljzr;->k(II)Ljzr;

    move-result-object v4

    sput-object v4, Ljzr;->b:Ljzr;

    invoke-static {v1, v0}, Ljzr;->k(II)Ljzr;

    move-result-object v0

    sput-object v0, Ljzr;->c:Ljzr;

    invoke-static {v3, v2}, Ljzr;->k(II)Ljzr;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljzr;->d:I

    iput p2, p0, Ljzr;->e:I

    return-void
.end method

.method public static g(Lkaf;)Ljzr;
    .locals 1

    invoke-virtual {p0}, Lkaf;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lkaf;->a:I

    iget p0, p0, Lkaf;->b:I

    invoke-static {v0, p0}, Ljzr;->k(II)Ljzr;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lkaf;->b:I

    iget p0, p0, Lkaf;->a:I

    invoke-static {v0, p0}, Ljzr;->k(II)Ljzr;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/util/Size;)Ljzr;
    .locals 1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljzr;->k(II)Ljzr;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lkaf;)Ljzr;
    .locals 1

    iget v0, p0, Lkaf;->a:I

    iget p0, p0, Lkaf;->b:I

    invoke-static {v0, p0}, Ljzr;->k(II)Ljzr;

    move-result-object p0

    return-object p0
.end method

.method public static k(II)Ljzr;
    .locals 4

    int-to-long v0, p1

    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    div-int/2addr p0, v0

    :cond_0
    if-eqz v0, :cond_1

    div-int/2addr p1, v0

    :cond_1
    new-instance v0, Ljzr;

    invoke-direct {v0, p0, p1}, Ljzr;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a()D
    .locals 4

    iget v0, p0, Ljzr;->d:I

    int-to-double v0, v0

    iget v2, p0, Ljzr;->e:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final b(F)F
    .locals 2

    iget v0, p0, Ljzr;->e:I

    int-to-float v0, v0

    iget v1, p0, Ljzr;->d:I

    int-to-float v1, v1

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    return p1
.end method

.method public final c()F
    .locals 2

    iget v0, p0, Ljzr;->d:I

    int-to-float v0, v0

    iget v1, p0, Ljzr;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final d(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljzr;->k(II)Ljzr;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljzr;->n(Ljzr;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Ljzr;->e:I

    mul-int v0, v0, v1

    iget v1, p0, Ljzr;->d:I

    div-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr v3, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Ljzr;->d:I

    mul-int v0, v0, v1

    iget v1, p0, Ljzr;->e:I

    div-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v3, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public final e(Lkaf;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Lkaf;->a:I

    iget p1, p1, Lkaf;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Ljzr;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljzr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljzr;

    iget v1, p0, Ljzr;->e:I

    iget v3, p1, Ljzr;->e:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ljzr;->d:I

    iget p1, p1, Ljzr;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Ljzr;
    .locals 2

    iget v0, p0, Ljzr;->d:I

    iget v1, p0, Ljzr;->e:I

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljzr;->l()Ljzr;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljzr;
    .locals 2

    iget v0, p0, Ljzr;->d:I

    iget v1, p0, Ljzr;->e:I

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljzr;->l()Ljzr;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Ljzr;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Ljzr;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l()Ljzr;
    .locals 2

    iget v0, p0, Ljzr;->e:I

    iget v1, p0, Ljzr;->d:I

    invoke-static {v0, v1}, Ljzr;->k(II)Ljzr;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljzr;)Z
    .locals 4

    invoke-virtual {p0}, Ljzr;->c()F

    move-result v0

    invoke-virtual {p1}, Ljzr;->c()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f9999999999999aL    # 0.025

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Ljzr;)Z
    .locals 2

    iget v0, p0, Ljzr;->d:I

    iget v1, p1, Ljzr;->e:I

    mul-int v0, v0, v1

    iget p1, p1, Ljzr;->d:I

    iget v1, p0, Ljzr;->e:I

    mul-int p1, p1, v1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Ljzr;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Ljzr;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "AspectRatio[%d:%d]"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
