.class public final synthetic Leeq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field private final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Legw;Ldbf;Lgzn;Ljwb;Lgeh;Licj;I)V
    .locals 0

    iput p7, p0, Leeq;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeq;->d:Ljava/lang/Object;

    iput-object p2, p0, Leeq;->f:Ljava/lang/Object;

    iput-object p3, p0, Leeq;->c:Ljava/lang/Object;

    iput-object p4, p0, Leeq;->a:Ljava/lang/Object;

    iput-object p5, p0, Leeq;->b:Ljava/lang/Object;

    iput-object p6, p0, Leeq;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;Lgla;Lckm;Ldhi;Lken;Ldqx;I[B[B)V
    .locals 0

    iput p7, p0, Leeq;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeq;->e:Ljava/lang/Object;

    iput-object p2, p0, Leeq;->c:Ljava/lang/Object;

    iput-object p3, p0, Leeq;->f:Ljava/lang/Object;

    iput-object p4, p0, Leeq;->d:Ljava/lang/Object;

    iput-object p5, p0, Leeq;->a:Ljava/lang/Object;

    iput-object p6, p0, Leeq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;Lmqp;Loiw;Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p7, p0, Leeq;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeq;->f:Ljava/lang/Object;

    iput-object p2, p0, Leeq;->d:Ljava/lang/Object;

    iput-object p3, p0, Leeq;->b:Ljava/lang/Object;

    iput-object p4, p0, Leeq;->c:Ljava/lang/Object;

    iput-object p5, p0, Leeq;->e:Ljava/lang/Object;

    iput-object p6, p0, Leeq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljuf;Loiw;Loiw;Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p7, p0, Leeq;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeq;->f:Ljava/lang/Object;

    iput-object p2, p0, Leeq;->d:Ljava/lang/Object;

    iput-object p3, p0, Leeq;->b:Ljava/lang/Object;

    iput-object p4, p0, Leeq;->c:Ljava/lang/Object;

    iput-object p5, p0, Leeq;->e:Ljava/lang/Object;

    iput-object p6, p0, Leeq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llmy;Landroid/content/Context;Logd;Ljava/util/concurrent/Executor;Llnb;Loiw;I)V
    .locals 0

    iput p7, p0, Leeq;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeq;->d:Ljava/lang/Object;

    iput-object p2, p0, Leeq;->f:Ljava/lang/Object;

    iput-object p3, p0, Leeq;->c:Ljava/lang/Object;

    iput-object p4, p0, Leeq;->e:Ljava/lang/Object;

    iput-object p5, p0, Leeq;->b:Ljava/lang/Object;

    iput-object p6, p0, Leeq;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;Lchl;Lhnb;Ljuh;Lhna;Ljvk;I)V
    .locals 0

    iput p7, p0, Leeq;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeq;->a:Ljava/lang/Object;

    iput-object p2, p0, Leeq;->f:Ljava/lang/Object;

    iput-object p3, p0, Leeq;->b:Ljava/lang/Object;

    iput-object p4, p0, Leeq;->c:Ljava/lang/Object;

    iput-object p5, p0, Leeq;->d:Ljava/lang/Object;

    iput-object p6, p0, Leeq;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Leeq;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leeq;->d:Ljava/lang/Object;

    iget-object v2, p0, Leeq;->f:Ljava/lang/Object;

    iget-object v4, p0, Leeq;->c:Ljava/lang/Object;

    iget-object v5, p0, Leeq;->e:Ljava/lang/Object;

    iget-object v6, p0, Leeq;->b:Ljava/lang/Object;

    iget-object v7, p0, Leeq;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lktm;->d(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v2, v0

    check-cast v2, Llmy;

    invoke-virtual {v2, v4}, Llmy;->a(Logd;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Leeq;->f:Ljava/lang/Object;

    iget-object v1, p0, Leeq;->d:Ljava/lang/Object;

    iget-object v2, p0, Leeq;->b:Ljava/lang/Object;

    iget-object v3, p0, Leeq;->c:Ljava/lang/Object;

    iget-object v4, p0, Leeq;->e:Ljava/lang/Object;

    iget-object v5, p0, Leeq;->a:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcrj;

    invoke-virtual {v6}, Lcrj;->a()Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhei;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldxl;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfgg;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmqp;

    invoke-interface {v6, v2, v7, v4}, Lhei;->c(Lmqp;Lmqp;Lmqp;)Lkad;

    move-result-object v2

    check-cast v0, Ljuf;

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgg;

    new-instance v2, Lfis;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lfis;-><init>(Loiw;I)V

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2, v1}, Lfgg;->g(Lfgf;Ljava/util/concurrent/Executor;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Leeq;->e:Ljava/lang/Object;

    iget-object v4, p0, Leeq;->c:Ljava/lang/Object;

    iget-object v5, p0, Leeq;->f:Ljava/lang/Object;

    iget-object v6, p0, Leeq;->d:Ljava/lang/Object;

    iget-object v7, p0, Leeq;->a:Ljava/lang/Object;

    iget-object v8, p0, Leeq;->b:Ljava/lang/Object;

    new-array v3, v3, [Ljvs;

    check-cast v4, Lgla;

    invoke-virtual {v4}, Lgla;->c()Ljvs;

    move-result-object v9

    aput-object v9, v3, v2

    aput-object v5, v3, v1

    invoke-static {v3}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lctn;

    const/16 v3, 0xb

    invoke-direct {v2, v4, v6, v7, v3}, Lctn;-><init>(Lgla;Ldhi;Lken;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    check-cast v0, Ljuf;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    check-cast v8, Ldqx;

    iget-object v1, v8, Ldqx;->c:Ljava/lang/Object;

    new-instance v2, Lecf;

    const/16 v3, 0x12

    invoke-direct {v2, v4, v7, v3}, Lecf;-><init>(Lgla;Lken;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Leeq;->d:Ljava/lang/Object;

    iget-object v1, p0, Leeq;->f:Ljava/lang/Object;

    iget-object v3, p0, Leeq;->c:Ljava/lang/Object;

    iget-object v4, p0, Leeq;->a:Ljava/lang/Object;

    iget-object v5, p0, Leeq;->b:Ljava/lang/Object;

    iget-object v6, p0, Leeq;->e:Ljava/lang/Object;

    check-cast v1, Ldbf;

    invoke-virtual {v1}, Ldbf;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgzd;->s:Lgzu;

    invoke-interface {v3, v1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v1

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    invoke-static {v1}, Legw;->d(Lika;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Lgeh;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v6, Licj;

    invoke-virtual {v6}, Licj;->c()V

    :cond_0
    check-cast v0, Legw;

    invoke-virtual {v0, v2}, Legw;->a(Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Leeq;->f:Ljava/lang/Object;

    iget-object v1, p0, Leeq;->d:Ljava/lang/Object;

    iget-object v2, p0, Leeq;->b:Ljava/lang/Object;

    iget-object v3, p0, Leeq;->c:Ljava/lang/Object;

    iget-object v4, p0, Leeq;->e:Ljava/lang/Object;

    iget-object v5, p0, Leeq;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldyc;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfgg;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldxl;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldye;

    invoke-interface {v6, v7, v8, v4}, Ldyc;->b(Lfgg;Ldxl;Ldye;)Lkad;

    move-result-object v4

    check-cast v0, Ljuf;

    invoke-virtual {v0, v4}, Ljuf;->d(Lkad;)V

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgg;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfgf;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-interface {v2, v4, v6}, Lfgg;->g(Lfgf;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldxl;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldxm;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v1, v3}, Ldxl;->c(Ldxm;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Leeq;->a:Ljava/lang/Object;

    iget-object v1, p0, Leeq;->f:Ljava/lang/Object;

    iget-object v4, p0, Leeq;->b:Ljava/lang/Object;

    iget-object v5, p0, Leeq;->c:Ljava/lang/Object;

    iget-object v6, p0, Leeq;->d:Ljava/lang/Object;

    iget-object v7, p0, Leeq;->e:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefy;

    invoke-interface {v0}, Lefy;->c()V

    check-cast v1, Lchl;

    iget-object v0, v1, Lchl;->b:Ljuf;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v1

    const-string v8, "Falcon"

    invoke-virtual {v1, v8}, Lhnd;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    check-cast v6, Lhna;

    invoke-virtual {v1, v6}, Lhnd;->g(Lhna;)V

    new-instance v5, Leer;

    check-cast v7, Ljvk;

    invoke-direct {v5, v7, v2}, Leer;-><init>(Ljvk;I)V

    invoke-virtual {v1, v5}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance v2, Leer;

    invoke-direct {v2, v7, v3}, Leer;-><init>(Ljvk;I)V

    invoke-virtual {v1, v2}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lhnd;->a()Lhne;

    move-result-object v1

    invoke-interface {v4, v1}, Lhnb;->f(Lhmz;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :cond_1
    new-instance v8, Lkgc;

    move-object v9, v0

    check-cast v9, Llmy;

    const/16 v10, 0x8

    invoke-direct {v8, v9, v4, v5, v10}, Lkgc;-><init>(Llmy;Logd;Ljava/util/concurrent/Executor;I)V

    invoke-static {v2, v8}, Lktm;->b(Landroid/content/Context;Ljava/lang/Runnable;)Lnou;

    :goto_0
    move-object v2, v0

    check-cast v2, Llmy;

    iget-boolean v4, v2, Llmy;->c:Z

    if-eqz v4, :cond_6

    if-nez v7, :cond_3

    sget-object v0, Lozu;->d:Lozu;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lozu;

    iput v3, v1, Lozu;->c:I

    iget v3, v1, Lozu;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lozu;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozu;

    check-cast v6, Llnb;

    invoke-virtual {v6, v0}, Llnb;->a(Lozu;)Llnc;

    move-result-object v0

    iput-object v0, v2, Llmy;->b:Llnc;

    return-void

    :cond_3
    :try_start_0
    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lozu;

    move-object v5, v6

    check-cast v5, Llnb;

    invoke-virtual {v5, v4}, Llnb;->a(Lozu;)Llnc;

    move-result-object v4

    check-cast v0, Llmy;

    iput-object v4, v0, Llmy;->b:Llnc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v4, Llmy;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v5, "Couldn\'t get sampling strategy"

    const/16 v7, 0x11d1

    invoke-static {v4, v5, v7, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v0, Lozu;->d:Lozu;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v4, v0, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lozu;

    iget v7, v5, Lozu;->a:I

    or-int/2addr v3, v7

    iput v3, v5, Lozu;->a:I

    const-wide/16 v7, 0x0

    iput-wide v7, v5, Lozu;->b:J

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v3, v0, Lnwn;->b:Lnws;

    check-cast v3, Lozu;

    iput v1, v3, Lozu;->c:I

    iget v1, v3, Lozu;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v3, Lozu;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozu;

    check-cast v6, Llnb;

    invoke-virtual {v6, v0}, Llnb;->a(Lozu;)Llnc;

    move-result-object v0

    iput-object v0, v2, Llmy;->b:Llnc;

    return-void

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
