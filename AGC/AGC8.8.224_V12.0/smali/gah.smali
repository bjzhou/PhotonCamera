.class public final Lgah;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:Lgam;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lgam;Ljvq;I[B)V
    .locals 0

    iput p3, p0, Lgah;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgah;->b:Lgam;

    iput-object p2, p0, Lgah;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgam;Lkai;I)V
    .locals 0

    iput p3, p0, Lgah;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgah;->b:Lgam;

    iput-object p2, p0, Lgah;->a:Ljava/lang/Object;

    return-void
.end method

.method private final d(Lfta;)V
    .locals 1

    iget-object v0, p0, Lgah;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lkai;->bn(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget v0, p0, Lgah;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgah;->b:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgah;->b:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljvs;
    .locals 1

    iget v0, p0, Lgah;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgah;->b:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgah;->b:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 5

    iget v0, p0, Lgah;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    :try_start_0
    sget-object v0, Lfta;->b:Lfta;

    invoke-direct {p0, v0}, Lgah;->d(Lfta;)V

    iget-object v0, p0, Lgah;->b:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lfta;->a:Lfta;

    invoke-direct {p0, p1}, Lgah;->d(Lfta;)V

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lfta;->a:Lfta;

    invoke-direct {p0, p2}, Lgah;->d(Lfta;)V

    throw p1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lgah;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v2, v1

    check-cast v2, Ljvq;

    iget-boolean v2, v2, Ljvq;->a:Z

    if-nez v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljvq;

    iget-object v2, v2, Ljvq;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljvq;

    iget-object v2, v2, Ljvq;->d:Ljava/lang/Object;

    const-string v3, "#notifyPipelineResumed"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljvq;

    invoke-virtual {v2}, Ljvq;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgxu;

    invoke-interface {v3}, Lgxu;->c()V

    goto :goto_1

    :cond_0
    move-object v2, v1

    check-cast v2, Ljvq;

    iget-object v2, v2, Ljvq;->d:Ljava/lang/Object;

    invoke-interface {v2}, Lkbc;->f()V

    :cond_1
    move-object v2, v1

    check-cast v2, Ljvq;

    iget-object v2, v2, Ljvq;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Lgxl;->p()Lnou;

    move-result-object v1

    new-instance v2, Lfqt;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lfqt;-><init>(Lgah;Lgxl;I[B)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {v1, v2, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lgah;->b:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void

    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to add shot after pipeline was shutdown!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lkdf;

    const-string v0, "ShotPipeline not available"

    invoke-direct {p2, v0, p1}, Lkdf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lgah;->c:I

    const-string v1, "delegate"

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v2, p0, Lgah;->b:Lgam;

    invoke-virtual {v0, v1, v2}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v2, p0, Lgah;->b:Lgam;

    invoke-virtual {v0, v1, v2}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
