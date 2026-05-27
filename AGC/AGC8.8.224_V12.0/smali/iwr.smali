.class public final Liwr;
.super Ljava/lang/Object;

# interfaces
.implements Liwt;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Liwr;->a:F

    iput p1, p0, Liwr;->b:F

    iput p3, p0, Liwr;->c:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Canvas;IF)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iget p3, p0, Liwr;->a:F

    mul-float p4, p4, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Liwr;->c:F

    sub-float/2addr p1, p3

    iget p3, p0, Liwr;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    div-float/2addr v0, v1

    sub-float/2addr v0, p4

    sub-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final b(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 1

    iget p1, p0, Liwr;->a:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
