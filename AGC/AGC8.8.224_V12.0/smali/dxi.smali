.class public final synthetic Ldxi;
.super Ljava/lang/Object;

# interfaces
.implements Lcik;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcsc;Loiw;Ljuf;Loiw;I)V
    .locals 0

    iput p5, p0, Ldxi;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxi;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldxi;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldxi;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldxi;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lnou;Lmqp;Lmqp;Ljuh;I)V
    .locals 0

    iput p5, p0, Ldxi;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxi;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldxi;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldxi;->a:Ljava/lang/Object;

    iput-object p4, p0, Ldxi;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;Lckd;Lkbc;Loiw;I)V
    .locals 0

    iput p5, p0, Ldxi;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxi;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldxi;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldxi;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldxi;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bl()Lnou;
    .locals 8

    iget v0, p0, Ldxi;->e:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldxi;->d:Ljava/lang/Object;

    iget-object v1, p0, Ldxi;->c:Ljava/lang/Object;

    iget-object v2, p0, Ldxi;->a:Ljava/lang/Object;

    iget-object v3, p0, Ldxi;->b:Ljava/lang/Object;

    new-instance v4, Ldvo;

    check-cast v2, Lmqp;

    check-cast v1, Lmqp;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v2, v5}, Ldvo;-><init>(Lmqp;Lmqp;I)V

    invoke-static {v0, v4, v3}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Letf;->d:Letf;

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2, v3}, Lnml;->j(Lnou;Ljava/lang/Class;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldxi;->b:Ljava/lang/Object;

    iget-object v2, p0, Ldxi;->a:Ljava/lang/Object;

    iget-object v3, p0, Ldxi;->c:Ljava/lang/Object;

    iget-object v4, p0, Ldxi;->d:Ljava/lang/Object;

    check-cast v0, Lcsc;

    iget-boolean v0, v0, Lcsc;->B:Z

    if-eqz v0, :cond_0

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczc;

    iget-object v5, v0, Lczc;->b:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v6, "cc-frame-qual-scorer"

    invoke-static {v6}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, v0, Lczc;->c:Ljava/util/concurrent/ExecutorService;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Lczc;->a:Ljuf;

    new-instance v6, Lcfh;

    const/16 v7, 0x11

    invoke-direct {v6, v0, v7}, Lcfh;-><init>(Lczc;I)V

    invoke-virtual {v5, v6}, Ljuf;->d(Lkad;)V

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczf;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lczc;

    invoke-virtual {v0, v2}, Lczf;->a(Lczc;)Lkad;

    move-result-object v0

    check-cast v3, Ljuf;

    invoke-virtual {v3, v0}, Ljuf;->d(Lkad;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldxi;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldxi;->b:Ljava/lang/Object;

    iget-object v3, p0, Ldxi;->c:Ljava/lang/Object;

    iget-object v4, p0, Ldxi;->d:Ljava/lang/Object;

    check-cast v0, Ldxk;

    invoke-virtual {v0}, Ldxk;->a()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ldrh;

    check-cast v2, Lckd;

    const/16 v7, 0x9

    invoke-direct {v6, v2, v7}, Ldrh;-><init>(Lckd;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Ldxk;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Ldgd;

    invoke-direct {v2, v3, v4, v7}, Ldgd;-><init>(Lkbc;Loiw;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ldxi;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Ldez;->d(Lcik;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
