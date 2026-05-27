.class final Lgao;
.super Ljava/lang/Object;

# interfaces
.implements Lfvb;


# instance fields
.field final synthetic a:Lgap;

.field private final b:Lgal;

.field private final c:Lccn;

.field private final d:Lkbc;

.field private final e:Lgkr;


# direct methods
.method public constructor <init>(Lgap;Lgal;Lgkr;Lccn;Lkbc;[B[B)V
    .locals 0

    iput-object p1, p0, Lgao;->a:Lgap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgao;->b:Lgal;

    iput-object p3, p0, Lgao;->e:Lgkr;

    iput-object p4, p0, Lgao;->c:Lccn;

    iput-object p5, p0, Lgao;->d:Lkbc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown exception in PictureTaker."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "PictureTakerCommand.run: success=false"

    :try_start_0
    iget-object v2, p0, Lgao;->a:Lgap;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v2, Lgap;->a:Lnou;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-interface {v2, v4, v5, v3}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgam;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Lgam;->a()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Take picture was invoked, but the picture taker is not available! Command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgao;->a:Lgap;

    iget-object v3, v3, Lgap;->b:Lkaq;

    invoke-interface {v3, v2}, Lkaq;->d(Ljava/lang/String;)V

    new-instance v3, Lkdf;

    invoke-direct {v3, v2}, Lkdf;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lgao;->a:Lgap;

    iget-object v0, v0, Lgap;->b:Lkaq;

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lgao;->b:Lgal;

    invoke-interface {v0}, Lgal;->close()V

    iget-object v0, p0, Lgao;->e:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0, v3}, Lgxl;->w(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lgao;->e:Lgkr;

    iget-object v0, v0, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->f()V

    iget-object v0, p0, Lgao;->e:Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget-object v0, v0, Lfte;->f:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :cond_0
    :try_start_3
    iget-object v3, p0, Lgao;->a:Lgap;

    iget-object v3, v3, Lgap;->b:Lkaq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PictureTakerCommand.run: got captureCommand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lgao;->d:Lkbc;

    const-string v4, "collect3AStats"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lgao;->c:Lccn;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lccn;->b(I)V

    iget-object v3, p0, Lgao;->d:Lkbc;

    const-string v4, "captureImage"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lgao;->b:Lgal;

    iget-object v4, p0, Lgao;->e:Lgkr;

    invoke-interface {v2, v3, v4}, Lgam;->c(Lgal;Lgkr;)V

    iget-object v2, p0, Lgao;->a:Lgap;

    iget-object v2, v2, Lgap;->f:Lgzm;

    sget-object v3, Lgzd;->at:Lgzr;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lgao;->a:Lgap;

    iget-object v2, v2, Lgap;->g:Lcvr;

    invoke-virtual {v2}, Lcvr;->H()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgao;->d:Lkbc;

    const-string v3, "FFListener#onImageCaptured"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lgao;->a:Lgap;

    iget-object v2, v2, Lgap;->g:Lcvr;

    invoke-virtual {v2}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldyd;

    invoke-interface {v2}, Ldyd;->e()V

    :cond_1
    iget-object v2, p0, Lgao;->d:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lgao;->a:Lgap;

    iget-object v0, v0, Lgap;->b:Lkaq;

    const-string v1, "PictureTakerCommand.run: success=true"

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lgao;->b:Lgal;

    invoke-interface {v0}, Lgal;->close()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lgao;->a:Lgap;

    iget-object v4, v3, Lgap;->b:Lkaq;

    iget-object v3, v3, Lgap;->a:Lnou;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PictureTaker command failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_7
    iget-object v3, p0, Lgao;->a:Lgap;

    iget-object v3, v3, Lgap;->b:Lkaq;

    const-string v4, "ImageCaptureCommand retrieval timed out"

    invoke-interface {v3, v4, v2}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lgao;->a:Lgap;

    iget-object v0, v0, Lgap;->b:Lkaq;

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lgao;->b:Lgal;

    invoke-interface {v0}, Lgal;->close()V

    iget-object v0, p0, Lgao;->e:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lgxl;->w(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :goto_2
    iget-object v3, p0, Lgao;->a:Lgap;

    iget-object v3, v3, Lgap;->b:Lkaq;

    invoke-interface {v3, v1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lgao;->b:Lgal;

    invoke-interface {v1}, Lgal;->close()V

    iget-object v1, p0, Lgao;->e:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lgxl;->w(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgao;->e:Lgkr;

    iget-object v0, v0, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lfzz;->f()V

    iget-object v0, p0, Lgao;->e:Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget-object v0, v0, Lfte;->f:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PictureTakerCommand"

    return-object v0
.end method
