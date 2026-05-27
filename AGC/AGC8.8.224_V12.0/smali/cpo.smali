.class public final synthetic Lcpo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcpu;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Lcpu;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpo;->a:Lcpu;

    iput-object p2, p0, Lcpo;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcpo;->a:Lcpu;

    iget-object v1, p0, Lcpo;->b:Lnph;

    iget-object v2, v0, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcpu;->F:Lcpt;

    sget-object v4, Lcpt;->b:Lcpt;

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    iget-object v4, v0, Lcpu;->F:Lcpt;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to delayedStart recording with state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lnph;->a(Ljava/lang/Throwable;)Z

    :cond_0
    iget-object v3, v0, Lcpu;->G:Lcui;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcui;->a:Ljyc;

    iget-object v4, v0, Lcpu;->t:Lhkn;

    sget-object v5, Lhkm;->c:Lhkm;

    invoke-virtual {v4, v5}, Lhkh;->h(Ljava/lang/Enum;)V

    invoke-interface {v3, v0}, Ljyc;->j(Ljxy;)Lnou;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, v0, Lcpu;->r:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v7, 0xbb8

    invoke-static {v4, v7, v8, v5, v6}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object v4

    new-instance v5, Lcoi;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v3, v6}, Lcoi;-><init>(Lcpu;Ljyc;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-static {v4, v5, v6}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    new-instance v5, Lcpr;

    invoke-direct {v5, v0, v3, v1}, Lcpr;-><init>(Lcpu;Ljyc;Lnph;)V

    iget-object v0, v0, Lcpu;->c:Ljuh;

    invoke-static {v4, v5, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
