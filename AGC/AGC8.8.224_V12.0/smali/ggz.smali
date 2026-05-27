.class public final synthetic Lggz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lghe;

.field public final synthetic b:Landroid/graphics/PointF;

.field public final synthetic c:Lnph;

.field public final synthetic d:Lnph;


# direct methods
.method public synthetic constructor <init>(Lghe;Landroid/graphics/PointF;Lnph;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggz;->a:Lghe;

    iput-object p2, p0, Lggz;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lggz;->c:Lnph;

    iput-object p4, p0, Lggz;->d:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lggz;->a:Lghe;

    iget-object v1, p0, Lggz;->b:Landroid/graphics/PointF;

    iget-object v2, p0, Lggz;->c:Lnph;

    iget-object v3, p0, Lggz;->d:Lnph;

    iget-object v4, v0, Lghe;->m:Ldhi;

    sget-object v5, Ldhh;->k:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lghe;->s:Lbkb;

    iget-object v4, v4, Lbkb;->a:Ljava/lang/Object;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lghe;->a:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhrd;

    sget-object v5, Lhrc;->a:Lhrc;

    invoke-interface {v4, v1, v5}, Lhrd;->a(Landroid/graphics/PointF;Lhrc;)Ljvs;

    move-result-object v1

    new-instance v4, Leth;

    const/16 v5, 0xf

    invoke-direct {v4, v0, v5}, Leth;-><init>(Lghe;I)V

    invoke-static {v1, v4}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnph;->e(Ljava/lang/Object;)Z

    new-instance v2, Lgdl;

    const/16 v4, 0x12

    invoke-direct {v2, v0, v4}, Lgdl;-><init>(Lghe;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    iput-object v2, v0, Lghe;->j:Lkad;

    new-instance v2, Lghb;

    invoke-direct {v2, v0, v3}, Lghb;-><init>(Lghe;Lnph;)V

    iget-object v3, v0, Lghe;->d:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    iput-object v1, v0, Lghe;->k:Lkad;

    return-void
.end method
