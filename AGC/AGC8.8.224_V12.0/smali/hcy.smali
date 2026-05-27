.class public final Lhcy;
.super Lipd;


# instance fields
.field final synthetic a:Lnou;


# direct methods
.method public constructor <init>(Lnou;)V
    .locals 0

    iput-object p1, p0, Lhcy;->a:Lnou;

    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lhcy;->a:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lhcz;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhcy;->a:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lhcz;->b()V

    return-void
.end method

.method public final d(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lhcy;->a:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lhcz;->d(Landroid/graphics/PointF;)V

    return-void
.end method
