.class public final synthetic Lghb;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Lghe;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Lghe;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lghb;->a:Lghe;

    iput-object p2, p0, Lghb;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Lghb;->a:Lghe;

    iget-object v1, p0, Lghb;->b:Lnph;

    check-cast p1, Lhrm;

    iget v2, p1, Lhrm;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v4, v0, Lghe;->e:Lfbz;

    const/4 v5, 0x1

    new-instance v6, Landroid/graphics/PointF;

    iget-object v2, p1, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v7, p1, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-direct {v6, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget-wide v7, p1, Lhrm;->e:J

    iget v9, p1, Lhrm;->d:I

    iget-object v2, p1, Lhrm;->a:Lhrg;

    invoke-virtual {v2}, Lhrg;->ordinal()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Lfbz;->g(ZLandroid/graphics/PointF;JII)V

    invoke-static {}, Lbze;->w()Lbze;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    iget v1, p1, Lhrm;->f:I

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lghe;->b:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v1, p1, Lhrm;->e:J

    const-wide/16 v3, 0x1388

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    iget-object v1, v0, Lghe;->n:Lcbj;

    invoke-virtual {v1}, Lcbj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lghe;->d:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lghe;->o:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-wide v1, p1, Lhrm;->e:J

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lghe;->d(J)V

    return-void

    :cond_3
    iget p1, v0, Lghe;->f:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lghe;->d(J)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method
