.class public final Lcbq;
.super Ljava/lang/Object;

# interfaces
.implements Lipc;
.implements Lkad;


# instance fields
.field private final B:Landroid/os/Handler;

.field private C:J

.field private D:Z

.field private E:Lmqp;

.field public final a:Lhrq;

.field public final b:Lhwc;

.field public final c:Lklv;

.field public final d:Lcbr;

.field public final e:Ldww;

.field public final f:Lell;

.field public final g:Lmqp;

.field public final h:Ljuf;

.field public final i:Licf;

.field public final j:Ljvs;

.field public final k:Lgzm;

.field public final l:Lgzn;

.field public final m:Lmqp;

.field public final n:Ljvs;

.field public o:Z

.field public p:Z

.field public q:Ljuf;

.field public r:Lkad;

.field public s:Lkad;

.field public t:Landroid/graphics/PointF;

.field public u:Lccx;

.field public v:Lmqp;

.field public w:Lmqp;

.field public x:Lmqp;

.field public y:Lmqp;

.field public final z:Lnom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhrq;Lhwc;Lklv;Lcbr;Ldww;Lnom;Landroid/os/Handler;Lell;Lmqp;Ljuf;Lgzm;Lgzn;Lmqp;Ljvs;Ljvs;[B)V
    .locals 10

    move-object v0, p0

    move-object/from16 v1, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcbq;->o:Z

    iput-boolean v2, v0, Lcbq;->p:Z

    iput-boolean v2, v0, Lcbq;->D:Z

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v0, Lcbq;->E:Lmqp;

    iput-object v2, v0, Lcbq;->v:Lmqp;

    iput-object v2, v0, Lcbq;->w:Lmqp;

    iput-object v2, v0, Lcbq;->x:Lmqp;

    iput-object v2, v0, Lcbq;->y:Lmqp;

    move-object v2, p2

    iput-object v2, v0, Lcbq;->a:Lhrq;

    move-object v2, p3

    iput-object v2, v0, Lcbq;->b:Lhwc;

    move-object v2, p4

    iput-object v2, v0, Lcbq;->c:Lklv;

    move-object v2, p5

    iput-object v2, v0, Lcbq;->d:Lcbr;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcbq;->z:Lnom;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcbq;->e:Ldww;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcbq;->B:Landroid/os/Handler;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcbq;->f:Lell;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcbq;->g:Lmqp;

    iput-object v1, v0, Lcbq;->h:Ljuf;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcbq;->k:Lgzm;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcbq;->l:Lgzn;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcbq;->m:Lmqp;

    const/4 v2, 0x0

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f140367

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0xb

    move p2, v2

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, p1

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    invoke-static/range {p2 .. p10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    iput-object v2, v0, Lcbq;->i:Licf;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcbq;->j:Ljvs;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcbq;->n:Ljvs;

    invoke-virtual {v1, p0}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)V
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcbq;->e:Ldww;

    invoke-interface {v2}, Ldww;->c()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcbq;->e:Ldww;

    invoke-interface {v2}, Ldww;->c()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcbq;->t:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcbq;->p:Z

    iput-boolean p1, p0, Lcbq;->D:Z

    sget-object p1, Lnmh;->a:Lnmh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Lcbq;->C:J

    new-instance p1, Lazo;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v0}, Lazo;-><init>(Lcbq;I)V

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lcbq;->E:Lmqp;

    iget-object v0, p0, Lcbq;->B:Landroid/os/Handler;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lnmh;->a:Lnmh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    iget-wide v1, p0, Lcbq;->C:J

    invoke-virtual {v0, v1, v2}, Lj$/time/Instant;->minusMillis(J)Lj$/time/Instant;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-static {v1, v2}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/Instant;->isBefore(Lj$/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcbq;->D:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcbq;->e()V

    iget-object v0, p0, Lcbq;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbq;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcbq;->E:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbq;->D:Z

    iget-object v0, p0, Lcbq;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbq;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcbq;->E:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbq;->o:Z

    iget-object v0, p0, Lcbq;->r:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    iget-object v0, p0, Lcbq;->s:Lkad;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkad;->close()V

    :cond_1
    iget-object v0, p0, Lcbq;->q:Ljuf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_2
    iget-object v0, p0, Lcbq;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcbq;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcbq;->E:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lcbq;->E:Lmqp;

    :cond_3
    return-void
.end method

.method public final d(Landroid/graphics/PointF;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcbq;->p:Z

    invoke-virtual {p0}, Lcbq;->e()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcbq;->e:Ldww;

    invoke-interface {v0}, Ldww;->n()Ljvs;

    move-result-object v0

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcbq;->e:Ldww;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldww;->t(Z)V

    iget-object v0, p0, Lcbq;->u:Lccx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccx;->i()V

    :cond_0
    iget-object v0, p0, Lcbq;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->c(Lhrc;)V

    :cond_1
    iget-object v0, p0, Lcbq;->j:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcbq;->e:Ldww;

    invoke-interface {v0}, Ldww;->i()Likz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lcbq;->y:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Likz;

    new-instance v1, Lcbp;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcbp;-><init>(Lcbq;I)V

    invoke-interface {v0, v1}, Likz;->b(Liky;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcbq;->e:Ldww;

    invoke-interface {v0}, Ldww;->g()Likz;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lcbq;->w:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Likz;

    new-instance v1, Lcbp;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcbp;-><init>(Lcbq;I)V

    invoke-interface {v0, v1}, Likz;->b(Liky;)V

    :cond_3
    return-void
.end method
