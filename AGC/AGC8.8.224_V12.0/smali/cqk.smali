.class public final synthetic Lcqk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcqo;

.field public final synthetic b:Landroid/graphics/PointF;

.field public final synthetic c:Lnph;


# direct methods
.method public synthetic constructor <init>(Lcqo;Landroid/graphics/PointF;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqk;->a:Lcqo;

    iput-object p2, p0, Lcqk;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lcqk;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcqk;->a:Lcqo;

    iget-object v1, p0, Lcqk;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lcqk;->c:Lnph;

    iget-object v3, v0, Lcqo;->h:Ldhi;

    sget-object v4, Ldhh;->k:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcqo;->q:Lbkb;

    iget-object v3, v3, Lbkb;->a:Ljava/lang/Object;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcqo;->d(JZ)V

    iget-object v3, v0, Lcqo;->b:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhrd;

    sget-object v4, Lhrc;->a:Lhrc;

    invoke-interface {v3, v1, v4}, Lhrd;->a(Landroid/graphics/PointF;Lhrc;)Ljvs;

    move-result-object v1

    new-instance v3, Lcdu;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v4}, Lcdu;-><init>(Lcqo;I)V

    invoke-static {v1, v3}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcqo;->o:Lcvr;

    sget-object v4, Lcua;->e:Lcua;

    invoke-virtual {v2, v4}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    new-instance v4, Lcql;

    invoke-direct {v4, v0}, Lcql;-><init>(Lcqo;)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-interface {v3, v4, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iget-object v2, v0, Lcqo;->o:Lcvr;

    sget-object v3, Lcua;->e:Lcua;

    invoke-virtual {v2, v3}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    new-instance v3, Lfdx;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lfdx;-><init>(Lcqo;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {v1, v3, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method
