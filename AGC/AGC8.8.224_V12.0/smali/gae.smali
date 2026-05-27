.class public final Lgae;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# instance fields
.field private final a:Lgam;

.field private final b:Lmqp;

.field private final c:Z

.field private final d:Z

.field private final e:Lkbc;

.field private final f:Lkaq;

.field private final g:Limq;

.field private final h:Ldhi;

.field private final i:Ljvs;

.field private final j:Lfuz;

.field private final k:Lcvr;

.field private final l:Lcvr;


# direct methods
.method public constructor <init>(Lgam;Lmqp;Lfuz;Logd;Logd;ZZLkap;Lkbc;Limq;Ldhi;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgae;->a:Lgam;

    iput-object p2, p0, Lgae;->b:Lmqp;

    iput-object p3, p0, Lgae;->j:Lfuz;

    invoke-static {p4}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Lgae;->k:Lcvr;

    invoke-static {p5}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Lgae;->l:Lcvr;

    iput-boolean p6, p0, Lgae;->c:Z

    iput-boolean p7, p0, Lgae;->d:Z

    iput-object p9, p0, Lgae;->e:Lkbc;

    iput-object p10, p0, Lgae;->g:Limq;

    iput-object p11, p0, Lgae;->h:Ldhi;

    iput-object p12, p0, Lgae;->i:Ljvs;

    const-string p1, "MicrovideoCapCmd"

    invoke-interface {p8, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgae;->f:Lkaq;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgae;->a:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgae;->a:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 10

    iget-object v0, p0, Lgae;->e:Lkbc;

    const-string v1, "MvCaptureCommand"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lgae;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast v1, Lfte;

    iget-boolean v1, v1, Lfte;->i:Z

    iget-object v2, p0, Lgae;->f:Lkaq;

    iget-object v3, p0, Lgae;->k:Lcvr;

    invoke-virtual {v3}, Lcvr;->H()Z

    move-result v3

    iget-object v4, p0, Lgae;->a:Lgam;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureImage: microvideoApi present="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " primaryCommand="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v2, p2, Lgkr;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgae;->e:Lkbc;

    const-string v4, "setup"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    instance-of v3, v2, Lgwy;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lgwy;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lmpx;->a:Lmpx;

    :goto_0
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lgae;->f:Lkaq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Capture session not a Photo one: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lkaq;->i(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lgae;->k:Lcvr;

    invoke-virtual {v4}, Lcvr;->H()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast v4, Lfte;

    iget v4, v4, Lfte;->a:I

    iget-object v6, p0, Lgae;->g:Limq;

    iget-object v7, p0, Lgae;->j:Lfuz;

    iget-object v8, p0, Lgae;->i:Ljvs;

    iget-object v9, p0, Lgae;->h:Ldhi;

    invoke-static {v4, v6, v7, v8, v9}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v4

    iget-object v6, p0, Lgae;->l:Lcvr;

    invoke-virtual {v6}, Lcvr;->H()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lgae;->e:Lkbc;

    const-string v6, "createSession"

    invoke-interface {v5, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v5, p0, Lgae;->l:Lcvr;

    invoke-virtual {v5}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldqx;

    iget-object v6, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v6}, Lgxl;->d()J

    move-result-wide v6

    iget-object v8, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v8}, Lgxl;->h()Lgxy;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ldqx;->g(JLgxy;)Lfkc;

    move-result-object v5

    goto :goto_1

    :cond_3
    :goto_1
    iget-object v6, p0, Lgae;->e:Lkbc;

    const-string v7, "attachSession"

    invoke-interface {v6, v7}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgwy;

    iget-object v6, p0, Lgae;->k:Lcvr;

    invoke-virtual {v6}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfge;

    iget-boolean v7, p0, Lgae;->d:Z

    if-eqz v5, :cond_4

    iget-object v8, v5, Lfkc;->a:Lnph;

    goto :goto_2

    :cond_4
    sget-object v8, Lmpx;->a:Lmpx;

    invoke-static {v8}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v8

    :goto_2
    invoke-interface {v6, v2, v4, v7, v8}, Lfge;->a(Lgxl;IZLnou;)Lfgd;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, v3, Lgwy;->c:Lmqp;

    goto :goto_3

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    iget-object v0, p0, Lgae;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgae;->e:Lkbc;

    const-string v1, "fallbackCommand#captureImage"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lgae;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lgae;->e:Lkbc;

    const-string v1, "primaryCommand#captureImage"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lgae;->a:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    :goto_4
    if-eqz v5, :cond_8

    iget-object p1, p0, Lgae;->e:Lkbc;

    const-string p2, "deactivate"

    invoke-interface {p1, p2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object p1, v5, Lfkc;->f:Ldqx;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, v5, Lfkc;->c:Z

    if-nez p2, :cond_7

    iget-object p2, v5, Lfkc;->a:Lnph;

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {p2, v0}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_7
    iget-object p2, v5, Lfkc;->b:Lkad;

    invoke-interface {p2}, Lkad;->close()V

    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_8
    :goto_5
    iget-object p1, p0, Lgae;->e:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, p0, Lgae;->e:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmqo;->a:Z

    iget-object v1, p0, Lgae;->a:Lgam;

    const-string v2, "primaryCommand"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgae;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fallback"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
