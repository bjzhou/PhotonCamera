.class public final Ldwd;
.super Ljava/lang/Object;

# interfaces
.implements Ldwc;


# instance fields
.field private final a:Landroid/graphics/drawable/ShapeDrawable;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldwd;->a:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 6

    iget v3, p0, Ldwd;->b:F

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    iget-object v1, p0, Ldwd;->a:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Ldnf;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ZFFI)V

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object v0, p0, Ldwd;->a:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    return-void
.end method

.method public final c(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iput p1, p0, Ldwd;->b:F

    return-void
.end method

.method public final d(F)V
    .locals 2

    iget-object v0, p0, Ldwd;->a:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    return-void
.end method
