.class public final Liws;
.super Ljava/lang/Object;

# interfaces
.implements Liwt;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Liws;->a:F

    iput p2, p0, Liws;->b:F

    return-void
.end method

.method private final c(Landroid/graphics/Rect;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Liws;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Liws;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Canvas;IF)V
    .locals 3

    invoke-direct {p0, p1}, Liws;->c(Landroid/graphics/Rect;)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr p1, v2

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p1, p3

    sub-float/2addr p1, p4

    const p3, 0x40d33333    # 6.6f

    mul-float p1, p1, p3

    neg-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->rotate(F)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final b(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0, p1}, Liws;->c(Landroid/graphics/Rect;)F

    move-result p1

    neg-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const v0, -0x3f2ccccd    # -6.6f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
