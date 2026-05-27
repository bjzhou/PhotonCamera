.class final Lipi;
.super Ljava/lang/Object;

# interfaces
.implements Lenz;


# instance fields
.field final synthetic a:Lipj;


# direct methods
.method public constructor <init>(Lipj;)V
    .locals 0

    iput-object p1, p0, Lipi;->a:Lipj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic b(Z)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lipi;->a:Lipj;

    iget-object v0, v0, Lipj;->i:Landroid/view/View;

    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljvd;->z(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lipi;->a:Lipj;

    iget-object v1, v1, Lipj;->f:Lipf;

    invoke-interface {v1, v0}, Lipf;->f(Landroid/graphics/PointF;)Z

    :cond_0
    return-void
.end method

.method public final synthetic d(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic e(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    return-void
.end method
