.class public final Ldqf;
.super Ljava/lang/Object;

# interfaces
.implements Lfwu;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ldpn;Lcvm;I[B)V
    .locals 0

    iput p3, p0, Ldqf;->c:I

    iput-object p1, p0, Ldqf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldqg;Lcvm;I[B)V
    .locals 0

    iput p3, p0, Ldqf;->c:I

    iput-object p1, p0, Ldqf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldqz;Ldqx;I)V
    .locals 0

    iput p3, p0, Ldqf;->c:I

    iput-object p1, p0, Ldqf;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldqf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lefh;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Ldqf;->c:I

    iput-object p1, p0, Ldqf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfxq;Lgqr;I)V
    .locals 0

    iput p3, p0, Ldqf;->c:I

    iput-object p1, p0, Ldqf;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldqf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Ldqf;->c:I

    iput-object p1, p0, Ldqf;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldqf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 9

    iget v0, p0, Ldqf;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Ldqf;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Ldqf;->b:Ljava/lang/Object;

    check-cast v1, Lfxq;

    iget-object v2, v1, Lfxq;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lfxp;

    iget-object v4, p0, Ldqf;->a:Ljava/lang/Object;

    check-cast v4, Lgqr;

    invoke-direct {v3, v1, v4, v0}, Lfxp;-><init>(Lfxq;Lgqr;Lnph;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_1
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Ldqf;->b:Ljava/lang/Object;

    check-cast v1, Lefh;

    iget-object v1, v1, Lefh;->g:Lefi;

    iget-object v1, v1, Lefi;->d:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ldqf;->a:Ljava/lang/Object;

    new-instance v3, Lefg;

    invoke-direct {v3, v2, v0}, Lefg;-><init>(Ljava/lang/Runnable;Lnph;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_2
    iget-object v0, p0, Ldqf;->b:Ljava/lang/Object;

    check-cast v0, Ldqx;

    iget-object v2, v0, Ldqx;->a:Ljava/lang/Object;

    new-instance v2, Lcop;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v0, v3, v1}, Lcop;-><init>(Ldqf;Ldqx;I[B)V

    invoke-static {v2}, Lnov;->a(Ljava/util/concurrent/Callable;)Lnov;

    move-result-object v0

    iget-object v1, p0, Ldqf;->a:Ljava/lang/Object;

    check-cast v1, Ldqz;

    iget-object v2, v1, Ldqz;->a:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Ldqz;->b:Lkbc;

    const-string v3, "Deeprestore-RGB"

    invoke-interface {v1, v3, v0}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Ldqf;->a:Ljava/lang/Object;

    check-cast v0, Lcvm;

    iget-object v0, v0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {v0}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v1, Ldpn;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0x43a

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v3, "Using CPU processing on an image having a HardwareBuffer?"

    invoke-interface {v1, v3}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    throw v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1
    new-instance v0, Ldpm;

    iget-object v1, p0, Ldqf;->b:Ljava/lang/Object;

    check-cast v1, Ldpn;

    iget-wide v3, v1, Ldpn;->d:J

    iget-object v2, p0, Ldqf;->a:Ljava/lang/Object;

    iget v6, v1, Ldpn;->b:I

    iget-boolean v7, v1, Ldpn;->e:Z

    move-object v5, v2

    check-cast v5, Lcvm;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ldpm;-><init>(JLcvm;IZ[B)V

    invoke-static {v0}, Lnov;->a(Ljava/util/concurrent/Callable;)Lnov;

    move-result-object v0

    iget-object v1, p0, Ldqf;->b:Ljava/lang/Object;

    check-cast v1, Ldpn;

    iget-object v1, v1, Ldpn;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldqf;->a:Ljava/lang/Object;

    new-instance v2, Lcop;

    check-cast v0, Lcvm;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v0, v3, v1}, Lcop;-><init>(Ldqf;Lcvm;I[B)V

    invoke-static {v2}, Lnov;->a(Ljava/util/concurrent/Callable;)Lnov;

    move-result-object v0

    iget-object v1, p0, Ldqf;->b:Ljava/lang/Object;

    check-cast v1, Ldqg;

    iget-object v1, v1, Ldqg;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :goto_2
    :try_start_4
    iget-object v1, p0, Ldqf;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lgkx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Error executing task."

    const/16 v3, 0xb91

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lnou;
    .locals 2

    iget v0, p0, Ldqf;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldqf;->a:Ljava/lang/Object;

    check-cast v0, Lgqr;

    iget-object v0, v0, Lgqr;->a:Lkpb;

    invoke-interface {v0}, Lkpb;->close()V

    new-instance v0, Lkdf;

    const-string v1, "Software jpeg saver was closed"

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Lkdf;

    invoke-direct {v0}, Lkdf;-><init>()V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Ldqd;

    iget-object v1, p0, Ldqf;->a:Ljava/lang/Object;

    check-cast v1, Lcvm;

    iget-object v1, v1, Lcvm;->d:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ldqd;-><init>(Lkpb;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ldqd;

    iget-object v1, p0, Ldqf;->a:Ljava/lang/Object;

    check-cast v1, Lcvm;

    iget-object v1, v1, Lcvm;->d:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ldqd;-><init>(Lkpb;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
