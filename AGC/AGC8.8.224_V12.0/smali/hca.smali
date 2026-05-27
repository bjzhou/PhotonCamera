.class public final synthetic Lhca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Loiw;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field private final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lken;Lmqp;Lhsh;Ljuf;Loiw;Lgue;Lgip;I[B[B)V
    .locals 0

    iput p8, p0, Lhca;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhca;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhca;->c:Ljava/lang/Object;

    iput-object p3, p0, Lhca;->d:Ljava/lang/Object;

    iput-object p4, p0, Lhca;->e:Ljava/lang/Object;

    iput-object p5, p0, Lhca;->a:Loiw;

    iput-object p6, p0, Lhca;->f:Ljava/lang/Object;

    iput-object p7, p0, Lhca;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;Loiw;Loiw;Ljuf;Lmqp;I)V
    .locals 0

    iput p8, p0, Lhca;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhca;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhca;->d:Ljava/lang/Object;

    iput-object p3, p0, Lhca;->e:Ljava/lang/Object;

    iput-object p4, p0, Lhca;->c:Ljava/lang/Object;

    iput-object p5, p0, Lhca;->a:Loiw;

    iput-object p6, p0, Lhca;->g:Ljava/lang/Object;

    iput-object p7, p0, Lhca;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lhca;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhca;->b:Ljava/lang/Object;

    iget-object v3, p0, Lhca;->d:Ljava/lang/Object;

    iget-object v4, p0, Lhca;->e:Ljava/lang/Object;

    iget-object v5, p0, Lhca;->c:Ljava/lang/Object;

    iget-object v6, p0, Lhca;->a:Loiw;

    iget-object v7, p0, Lhca;->g:Ljava/lang/Object;

    iget-object v8, p0, Lhca;->f:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfgg;

    new-instance v9, Lgsr;

    invoke-direct {v9, v3, v4, v5}, Lgsr;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;Loiw;)V

    sget-object v10, Lnnv;->a:Lnnv;

    invoke-interface {v0, v9, v10}, Lfgg;->g(Lfgf;Ljava/util/concurrent/Executor;)V

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxl;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldxm;

    invoke-virtual {v0, v9, v4}, Ldxl;->c(Ldxm;Ljava/util/concurrent/Executor;)Lkad;

    new-instance v0, Lgss;

    const/4 v9, 0x0

    invoke-direct {v0, v6, v5, v9}, Lgss;-><init>(Loiw;Loiw;I)V

    check-cast v7, Ljuf;

    invoke-virtual {v7, v0}, Ljuf;->d(Lkad;)V

    check-cast v8, Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldyc;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldyb;

    invoke-interface {v0, v6, v4}, Ldyc;->c(Ldyb;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lgss;

    invoke-direct {v0, v8, v5, v1}, Lgss;-><init>(Lmqp;Loiw;I)V

    invoke-virtual {v7, v0}, Ljuf;->d(Lkad;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lhca;->b:Ljava/lang/Object;

    iget-object v3, p0, Lhca;->c:Ljava/lang/Object;

    iget-object v4, p0, Lhca;->d:Ljava/lang/Object;

    iget-object v5, p0, Lhca;->e:Ljava/lang/Object;

    iget-object v6, p0, Lhca;->a:Loiw;

    iget-object v7, p0, Lhca;->f:Ljava/lang/Object;

    iget-object v8, p0, Lhca;->g:Ljava/lang/Object;

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkfj;

    invoke-interface {v0, v9}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v9

    invoke-interface {v0, v9, v2}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v2

    new-instance v9, Lctf;

    check-cast v4, Lhsh;

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-direct {v9, v4, v3, v10, v11}, Lctf;-><init>(Lhsh;Lmqp;I[B)V

    invoke-interface {v2, v9}, Lkef;->k(Lkee;)V

    check-cast v5, Ljuf;

    invoke-virtual {v5, v2}, Ljuf;->d(Lkad;)V

    new-instance v2, Lhbq;

    invoke-direct {v2, v4, v1, v11}, Lhbq;-><init>(Lhsh;I[B)V

    invoke-virtual {v5, v2}, Ljuf;->d(Lkad;)V

    new-instance v1, Lhcb;

    check-cast v7, Lgue;

    invoke-direct {v1, v6, v0, v7, v11}, Lhcb;-><init>(Loiw;Lken;Lgue;[B)V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhsh;->g(Lmqp;)V

    invoke-static {v8}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhsh;->h(Lmqp;)V

    return-void

    :cond_0
    :goto_0
    new-instance v0, Lgss;

    invoke-direct {v0, v3, v4, v2}, Lgss;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;I)V

    invoke-virtual {v7, v0}, Ljuf;->d(Lkad;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
