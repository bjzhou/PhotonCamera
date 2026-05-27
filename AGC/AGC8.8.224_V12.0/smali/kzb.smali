.class public final Lkzb;
.super Ljava/lang/Object;

# interfaces
.implements Lkzc;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkzb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnou;I)V
    .locals 0

    iput p2, p0, Lkzb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkzb;->a:Ljava/lang/Object;

    return-void
.end method

.method private final j(Ljava/util/concurrent/Executor;Lkye;)Lkzc;
    .locals 4

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    new-instance v1, Lkzu;

    iget-object v2, p0, Lkzb;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p2, v0, v3}, Lkzu;-><init>(Ljava/lang/Object;Lkye;Llaa;I)V

    invoke-static {p1, v1, v0}, Lkzb;->l(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    return-object v0
.end method

.method private final k(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;
    .locals 3

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    new-instance v1, Lkyy;

    iget-object v2, p0, Lkzb;->a:Ljava/lang/Object;

    invoke-direct {v1, v2, p2, p1, v0}, Lkyy;-><init>(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;)V

    invoke-static {p1, v1, v0}, Lkzb;->l(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V

    return-object v0
.end method

.method private static l(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Llaa;)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {p2, p0}, Llaa;->m(Lkzd;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;
    .locals 10

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lkzb;->a:Ljava/lang/Object;

    new-instance v9, Lkyu;

    new-instance v2, Lkys;

    const/4 v0, 0x1

    invoke-direct {v2, p2, v0}, Lkys;-><init>(Lkye;I)V

    const/4 v3, 0x0

    sget-object v5, Llab;->a:Llpm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lkyu;-><init>(Lnou;Lkyt;Lkyt;Ljava/util/concurrent/Executor;Llpm;[B[B)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v8, v9, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, v9, Lkyu;->a:Llaa;

    return-object p1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lkzb;->j(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;
    .locals 10

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lkzb;->a:Ljava/lang/Object;

    new-instance v9, Lkyu;

    new-instance v2, Lkys;

    const/4 v0, 0x0

    invoke-direct {v2, p2, v0}, Lkys;-><init>(Lkzg;I)V

    const/4 v3, 0x0

    sget-object v5, Llab;->a:Llpm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lkyu;-><init>(Lnou;Lkyt;Lkyt;Ljava/util/concurrent/Executor;Llpm;[B[B)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v8, v9, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, v9, Lkyu;->a:Llaa;

    return-object p1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lkzb;->k(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;
    .locals 10

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lkzb;->a:Ljava/lang/Object;

    new-instance v9, Lkyu;

    new-instance v2, Lkys;

    const/4 v0, 0x1

    invoke-direct {v2, p2, v0}, Lkys;-><init>(Lkye;I)V

    new-instance v3, Lkys;

    invoke-direct {v3, p3, v0}, Lkys;-><init>(Lkye;I)V

    sget-object v5, Llab;->a:Llpm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lkyu;-><init>(Lnou;Lkyt;Lkyt;Ljava/util/concurrent/Executor;Llpm;[B[B)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v8, v9, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, v9, Lkyu;->a:Llaa;

    return-object p1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lkzb;->j(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;
    .locals 10

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lkzb;->a:Ljava/lang/Object;

    new-instance v9, Lkyu;

    new-instance v2, Lkys;

    const/4 v0, 0x0

    invoke-direct {v2, p2, v0}, Lkys;-><init>(Lkzg;I)V

    new-instance v3, Lkys;

    invoke-direct {v3, p3, v0}, Lkys;-><init>(Lkzg;I)V

    sget-object v5, Llab;->a:Llpm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lkyu;-><init>(Lnou;Lkyt;Lkyt;Ljava/util/concurrent/Executor;Llpm;[B[B)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v8, v9, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, v9, Lkyu;->a:Llaa;

    return-object p1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lkzb;->k(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lnou;
    .locals 1

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzb;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkzb;->a:Ljava/lang/Object;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lkzb;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lkzb;->a:Ljava/lang/Object;

    return-object v0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result value was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lkzb;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkzb;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lkyo;)V
    .locals 2

    iget p1, p0, Lkzb;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lkzb;->a:Ljava/lang/Object;

    new-instance v0, Lkyr;

    invoke-direct {v0, p1}, Lkyr;-><init>(Lnou;)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p1, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/util/concurrent/Executor;Llhe;)Lkzc;
    .locals 4

    iget v0, p0, Lkzb;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkyx;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2, v1}, Lkyx;-><init>(Llhe;I[B)V

    new-instance v3, Lkzi;

    invoke-direct {v3, p2, v2, v1}, Lkzi;-><init>(Llhe;I[B)V

    invoke-virtual {p0, p1, v0, v3}, Lkzb;->d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Lkyx;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, v1}, Lkyx;-><init>(Llhe;I[B)V

    invoke-direct {p0, p1, v0}, Lkzb;->k(Ljava/util/concurrent/Executor;Lkzg;)Lkzc;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
