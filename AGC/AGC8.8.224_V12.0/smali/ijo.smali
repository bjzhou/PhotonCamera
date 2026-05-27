.class final Lijo;
.super Ljava/lang/Object;

# interfaces
.implements Lipf;


# instance fields
.field final synthetic a:Lipf;

.field final synthetic b:Ldww;


# direct methods
.method public constructor <init>(Lipf;Ldww;)V
    .locals 0

    iput-object p1, p0, Lijo;->a:Lipf;

    iput-object p2, p0, Lijo;->b:Ldww;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 4

    iget-object v0, p0, Lijo;->a:Lipf;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lijo;->b:Ldww;

    invoke-interface {v3}, Ldww;->c()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lijo;->b:Ldww;

    invoke-interface {v3}, Ldww;->c()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lipf;->a(Landroid/graphics/PointF;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lijo;->a:Lipf;

    invoke-interface {v0}, Lipf;->b()V

    return-void
.end method

.method public final f(Landroid/graphics/PointF;)Z
    .locals 4

    iget-object v0, p0, Lijo;->a:Lipf;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lijo;->b:Ldww;

    invoke-interface {v3}, Ldww;->c()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lijo;->b:Ldww;

    invoke-interface {v3}, Ldww;->c()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, Lipf;->f(Landroid/graphics/PointF;)Z

    const/4 p1, 0x0

    return p1
.end method
