.class public final synthetic Lcoq;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lcor;

.field public final synthetic b:Lcpk;

.field public final synthetic c:Lnou;

.field public final synthetic d:Lnou;

.field public final synthetic e:Lkbf;


# direct methods
.method public synthetic constructor <init>(Lcor;Lcpk;Lnou;Lnou;Lkbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoq;->a:Lcor;

    iput-object p2, p0, Lcoq;->b:Lcpk;

    iput-object p3, p0, Lcoq;->c:Lnou;

    iput-object p4, p0, Lcoq;->d:Lnou;

    iput-object p5, p0, Lcoq;->e:Lkbf;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 14

    iget-object v0, p0, Lcoq;->a:Lcor;

    iget-object v9, p0, Lcoq;->b:Lcpk;

    iget-object v1, p0, Lcoq;->c:Lnou;

    iget-object v2, p0, Lcoq;->d:Lnou;

    iget-object v10, p0, Lcoq;->e:Lkbf;

    iget-object v0, v0, Lcor;->k:Lfvx;

    invoke-interface {v1}, Lnou;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liha;

    invoke-interface {v2}, Lnou;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iget-object v11, v9, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v3, v9, Lcpk;->y:Lcpj;

    if-nez v3, :cond_7

    iget-object v3, v9, Lcpk;->j:Lcvx;

    iget-object v4, v9, Lcpk;->s:Lcsc;

    invoke-interface {v3, v4, v1, v2}, Lcvx;->c(Lcsc;Liha;Landroid/view/Surface;)V

    iget-object v1, v9, Lcpk;->j:Lcvx;

    invoke-interface {v1}, Lcvx;->a()Lnou;

    move-result-object v12

    iget-object v1, v9, Lcpk;->l:Ldhi;

    sget-object v2, Ldgu;->E:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcpk;->j:Lcvx;

    sget v2, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    invoke-interface {v1, v2}, Lcvx;->e(Ljava/util/List;)V

    iget-object v1, v9, Lcpk;->n:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lbdj;

    const/4 v3, 0x3

    invoke-direct {v2, v9, v3}, Lbdj;-><init>(Lcpk;I)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v9, Lcpk;->w:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v1, v9, Lcpk;->h:Lcbn;

    iget-object v2, v9, Lcpk;->s:Lcsc;

    iget-object v2, v2, Lcsc;->F:Ldne;

    iget-object v3, v2, Ldne;->a:Ljava/lang/Object;

    iget-object v2, v9, Lcpk;->z:Lftu;

    iget-object v4, v2, Lftu;->a:Ljvk;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v5

    iget-object v2, v9, Lcpk;->C:Ldja;

    iget-object v6, v9, Lcpk;->s:Lcsc;

    invoke-virtual {v2, v6}, Ldja;->c(Lcsc;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Lcbn;->a(Lcbi;Lkli;Ljvs;Ljvs;ZZI)Lcbm;

    move-result-object v1

    iget-object v2, v9, Lcpk;->f:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcpk;->f:Ljava/util/List;

    iget-object v3, v9, Lcpk;->k:Lcvf;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcpk;->D:Lcvr;

    sget-object v3, Lcua;->b:Lcua;

    invoke-virtual {v2, v3}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljuf;->d(Lkad;)V

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, v9, Lcpk;->m:Lcuf;

    invoke-virtual {v0}, Lfvx;->a()Lika;

    move-result-object v0

    iget-object v2, v9, Lcpk;->s:Lcsc;

    iput-object v9, v1, Lcuf;->i:Lcuc;

    iget-object v3, v1, Lcuf;->n:Lcvm;

    invoke-virtual {v3, v0}, Lcvm;->b(Lika;)Lcyq;

    move-result-object v0

    iput-object v0, v1, Lcuf;->j:Lcyq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcuf;->e:Lcuh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcuf;->g(Lcsc;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcuf;->f:Lcuh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v1, Lcuf;->b:Ldhi;

    sget-object v4, Ldgu;->am:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcuf;->g:Lcuh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1, v2}, Lcuf;->f(Lcsc;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcuf;->d:Lcuh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, v1, Lcuf;->c:Lcuh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v0

    iput-object v0, v1, Lcuf;->k:Lmvv;

    invoke-virtual {v1, v2}, Lcuf;->g(Lcsc;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lctw;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lctw;-><init>(Lcuf;I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lchy;->c:Lchy;

    :goto_0
    iput-object v0, v1, Lcuf;->m:Ljava/lang/Runnable;

    iget-object v0, v1, Lcuf;->k:Lmvv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcuh;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v6

    iget-object v7, v5, Lcuh;->c:Lhna;

    invoke-virtual {v6, v7}, Lhnd;->g(Lhna;)V

    iget-object v7, v5, Lcuh;->d:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lhnd;->f(Ljava/lang/Runnable;)V

    iget-object v7, v5, Lcuh;->e:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lhnd;->e(Ljava/lang/Runnable;)V

    iget-object v7, v5, Lcuh;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v6, v7}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    iget-object v7, v5, Lcuh;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Lhnd;->a()Lhne;

    move-result-object v6

    iput-object v6, v5, Lcuh;->a:Lhne;

    iget-object v6, v5, Lcuh;->h:Lcug;

    if-eqz v6, :cond_5

    const-string v7, "%sDynamic"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, v5, Lcuh;->g:Ljava/lang/String;

    aput-object v8, v4, v13

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v2}, Lcug;->a(Lcsc;)Lhna;

    move-result-object v6

    iput-object v6, v5, Lcuh;->b:Lhna;

    iget-object v6, v5, Lcuh;->a:Lhne;

    new-instance v7, Lhnd;

    invoke-direct {v7, v6}, Lhnd;-><init>(Lhne;)V

    iget-object v6, v5, Lcuh;->b:Lhna;

    invoke-virtual {v7, v6}, Lhnd;->g(Lhna;)V

    invoke-virtual {v7, v4}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {v7}, Lhnd;->a()Lhne;

    move-result-object v4

    iput-object v4, v5, Lcuh;->a:Lhne;

    iget-object v4, v5, Lcuh;->b:Lhna;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, v9, Lcpk;->r:Lcqx;

    iget-object v1, v9, Lcpk;->s:Lcsc;

    invoke-interface {v0, v1}, Lcqx;->b(Lcsc;)V

    iget-object v0, v9, Lcpk;->u:Lcsm;

    iget-object v1, v9, Lcpk;->s:Lcsc;

    invoke-interface {v0, v1}, Lcsm;->b(Lcsc;)V

    iget-object v0, v9, Lcpk;->i:Lhlu;

    new-instance v1, Lhox;

    invoke-direct {v1, v9, v4}, Lhox;-><init>(Lcpk;I)V

    invoke-virtual {v0, v1}, Lhlu;->b(Lhlt;)V

    sget-object v0, Lcpj;->a:Lcpj;

    invoke-virtual {v9, v0}, Lcpk;->k(Lcpj;)V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v10}, Lkbf;->a()V

    new-instance v0, Lcdu;

    const/16 v1, 0x8

    invoke-direct {v0, v9, v1}, Lcdu;-><init>(Lcpk;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v12, v0, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to init with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
