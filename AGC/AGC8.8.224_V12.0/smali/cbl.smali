.class public final synthetic Lcbl;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcbj;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcbm;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcbq;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcca;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lccr;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lccx;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lceh;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcga;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcgd;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckh;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckk;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczd;I[B)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkai;I)V
    .locals 0

    iput p2, p0, Lcbl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcbl;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lgcc;

    check-cast v0, Lckk;

    iget-object v3, v0, Lckk;->h:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyu;

    iget-object v4, v0, Lckk;->j:Lhmb;

    invoke-virtual {v4}, Lhmb;->a()Ljvs;

    move-result-object v4

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {p1, v3, v4}, Lckk;->C(Lgcc;Lgyu;Z)Z

    move-result p1

    iget-object v3, v0, Lckk;->e:Ljwb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    if-nez p1, :cond_10

    invoke-virtual {v0}, Lckk;->B()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 v1, 0x1

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lj$/time/Duration;

    check-cast v0, Lckk;

    iget-object v1, v0, Lckk;->l:Ljvk;

    invoke-virtual {v1, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lckk;->w(Lj$/time/Duration;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Lckk;

    invoke-virtual {v0, p1}, Lckk;->p(Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast v0, Lckk;

    invoke-virtual {v0}, Lckk;->A()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Lckk;

    iget-object v4, v0, Lckk;->c:Ljwb;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v4, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, p1}, Lckk;->z(ZZ)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Lckh;

    invoke-virtual {v0}, Lckh;->e()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Lkai;->bn(Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_6
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, p1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lcgg;

    sget-object v1, Lnbk;->a:Lnbc;

    sget-object v1, Lcgg;->b:Lcgg;

    if-ne p1, v1, :cond_2

    check-cast v0, Lcgd;

    iget-object p1, v0, Lcgd;->b:Licf;

    iget-object v0, v0, Lcgd;->a:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    :cond_2
    return-void

    :pswitch_8
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lcga;

    iget-object v1, v0, Lcga;->a:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcgg;

    sget-object v2, Lcgg;->c:Lcgg;

    invoke-virtual {v1, v2}, Lcgg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcga;->g()V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcga;->i()V

    :cond_4
    return-void

    :pswitch_9
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object v1, Lnbk;->a:Lnbc;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Lcga;

    invoke-virtual {v0, p1}, Lcga;->d(Z)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lcgg;

    sget-object v1, Lcgg;->c:Lcgg;

    if-ne p1, v1, :cond_5

    sget-object p1, Lnbk;->a:Lnbc;

    check-cast v0, Lczd;

    iget-object p1, v0, Lczd;->b:Ljava/lang/Object;

    check-cast p1, Lcfx;

    invoke-virtual {p1}, Lcfx;->a()V

    iget-object p1, v0, Lczd;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lcgi;->i()V

    return-void

    :cond_5
    check-cast v0, Lczd;

    invoke-virtual {v0, v2}, Lczd;->f(Z)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ldbw;

    invoke-interface {v0, p1}, Lceh;->e(Ldbw;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->b:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast v0, Lccr;

    iget-object p1, v0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->d()V

    return-void

    :cond_6
    sget-object v1, Lccu;->e:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    check-cast v0, Lccr;

    iget-object p1, v0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->g()V

    :cond_7
    return-void

    :pswitch_d
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_a

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_a

    check-cast v0, Lccr;

    iget-object v1, v0, Lccr;->c:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    iget-object v1, v0, Lccr;->b:Lklv;

    sget-object v2, Lklv;->a:Lklv;

    if-ne v1, v2, :cond_9

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/PointF;->x:F

    :cond_9
    iget-object v0, v0, Lccr;->a:Ldww;

    invoke-interface {v0, p1}, Ldww;->x(Landroid/graphics/PointF;)V

    return-void

    :cond_a
    :goto_1
    return-void

    :pswitch_e
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->b:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lccx;->d()V

    return-void

    :cond_b
    sget-object v1, Lccu;->e:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v0}, Lccx;->g()V

    :cond_c
    return-void

    :pswitch_f
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lhrm;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lhrm;->c()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcca;

    iget-boolean v1, v1, Lcca;->g:Z

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcca;

    iget-boolean v1, v1, Lcca;->f:Z

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move-object v1, v0

    check-cast v1, Lcca;

    iget-object v1, v1, Lcca;->i:Loxq;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p1, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object p1, p1, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Loxq;->h(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcca;

    iget-object v1, v1, Lcca;->h:Lima;

    iget v1, v1, Lima;->a:F

    float-to-int v1, v1

    move-object v2, v0

    check-cast v2, Lcca;

    invoke-virtual {v2, p1, v1}, Lcca;->d(Lmqp;I)Z

    monitor-exit v0

    return-void

    :cond_e
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_10
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->a:Lccu;

    invoke-virtual {p1}, Lccu;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_11
    check-cast v0, Lcbq;

    iget-object p1, v0, Lcbq;->u:Lccx;

    invoke-interface {p1}, Lccx;->g()V

    return-void

    :pswitch_12
    check-cast v0, Lcbq;

    iget-object p1, v0, Lcbq;->u:Lccx;

    invoke-interface {p1}, Lccx;->e()V

    return-void

    :pswitch_13
    check-cast v0, Lcbq;

    iget-object p1, v0, Lcbq;->u:Lccx;

    invoke-interface {p1}, Lccx;->f()V

    return-void

    :pswitch_14
    check-cast v0, Lcbq;

    iget-object p1, v0, Lcbq;->u:Lccx;

    invoke-interface {p1}, Lccx;->d()V

    return-void

    :pswitch_15
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    check-cast v0, Lcbq;

    invoke-virtual {v0}, Lcbq;->e()V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    move-object v1, v0

    check-cast v1, Lcbj;

    iget-boolean v2, v1, Lcbj;->b:Z

    if-eqz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcbj;->a:J

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Lcbj;

    iput-boolean p1, v0, Lcbj;->b:Z

    return-void

    :pswitch_17
    iget-object v0, p0, Lcbl;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    check-cast v0, Lcbm;

    iget-object v0, v0, Lcbm;->a:Ldww;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-interface {v0, p1}, Ldww;->s(Z)V

    return-void

    :cond_10
    :goto_3
    iput-boolean v1, v0, Lckk;->q:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method
