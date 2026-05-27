.class public final Lhcm;
.super Lipe;


# instance fields
.field final synthetic a:Lnou;


# direct methods
.method public constructor <init>(Lnou;)V
    .locals 0

    iput-object p1, p0, Lhcm;->a:Lnou;

    invoke-direct {p0}, Lipe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 8

    iget-object v0, p0, Lhcm;->a:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljuh;->a()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    aput v4, v3, v1

    const/4 v4, 0x1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    aput p1, v3, v4

    iget-object p1, v0, Lhcq;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Lhch;

    invoke-direct {p1, v3, v2}, Lhch;-><init>([FI)V

    invoke-virtual {v0, p1}, Lhcq;->h(Lhco;)V

    iget-wide v2, v0, Lhcq;->v:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lhcq;->v:J

    return v1
.end method
