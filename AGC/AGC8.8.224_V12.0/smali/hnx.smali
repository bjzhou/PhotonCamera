.class public final Lhnx;
.super Ljava/lang/Object;

# interfaces
.implements Lccx;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbkc;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcqj;Lbkc;I[B[B[B)V
    .locals 0

    iput p3, p0, Lhnx;->c:I

    iput-object p1, p0, Lhnx;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhnx;->b:Lbkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhny;Lbkc;I[B[B[B)V
    .locals 0

    iput p3, p0, Lhnx;->c:I

    iput-object p1, p0, Lhnx;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhnx;->b:Lbkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 2

    iget v0, p0, Lhnx;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljvk;

    iget-object v1, p0, Lhnx;->b:Lbkc;

    iget-object v1, v1, Lbkc;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljvk;

    iget-object v1, p0, Lhnx;->b:Lbkc;

    iget-object v1, v1, Lbkc;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lnou;
    .locals 1

    iget v0, p0, Lhnx;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lbze;->w()Lbze;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lbze;->w()Lbze;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lnou;
    .locals 2

    iget v0, p0, Lhnx;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->s:Lnph;

    return-object v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v1, Lcqj;

    iget-object v1, v1, Lcqj;->c:Lnph;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lhnx;->c:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    invoke-virtual {v0}, Lcqj;->b()V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->b:Lcrz;

    iget-object v0, v0, Lcrz;->d:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->a:Lken;

    invoke-static {}, Lbze;->m()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->v:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->o:Lken;

    invoke-static {}, Lbze;->m()Lkfh;

    move-result-object v2

    invoke-interface {v0, v2}, Lken;->k(Lkfh;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->k:Lhpq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhpq;->h(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 3

    iget v0, p0, Lhnx;->c:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->b:Lcrz;

    iget-object v0, v0, Lcrz;->d:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->b:Lcrz;

    iget-object v0, v0, Lcrz;->e:Ljwb;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->a:Lken;

    invoke-static {}, Lbze;->l()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->v:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->w:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->o:Lken;

    invoke-static {}, Lbze;->l()Lkfh;

    move-result-object v2

    invoke-interface {v0, v2}, Lken;->k(Lkfh;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->k:Lhpq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhpq;->h(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lhnx;->c:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->b:Lcrz;

    iget-object v0, v0, Lcrz;->e:Ljwb;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    iget-object v0, v0, Lcqj;->a:Lken;

    invoke-static {}, Lbze;->n()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->w:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    iget-object v0, v0, Lhny;->o:Lken;

    invoke-static {}, Lbze;->n()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 3

    iget v0, p0, Lhnx;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    invoke-virtual {v0, v2, v1}, Lcqj;->d(ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    invoke-virtual {v0, v2, v1}, Lhny;->b(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 2

    iget v0, p0, Lhnx;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    invoke-virtual {v0, v1, v1}, Lcqj;->d(ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    invoke-virtual {v0, v1, v1}, Lhny;->b(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 3

    iget v0, p0, Lhnx;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lcqj;

    invoke-virtual {v0, v2, v1}, Lcqj;->d(ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhnx;->a:Ljava/lang/Object;

    check-cast v0, Lhny;

    invoke-virtual {v0, v2, v1}, Lhny;->b(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
