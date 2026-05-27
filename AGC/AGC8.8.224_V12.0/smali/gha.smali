.class public final synthetic Lgha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lghe;

.field public final synthetic b:Landroid/graphics/PointF;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lghe;Landroid/graphics/PointF;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgha;->a:Lghe;

    iput-object p2, p0, Lgha;->b:Landroid/graphics/PointF;

    iput-boolean p3, p0, Lgha;->c:Z

    iput-boolean p4, p0, Lgha;->d:Z

    iput-boolean p5, p0, Lgha;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lgha;->a:Lghe;

    iget-object v1, p0, Lgha;->b:Landroid/graphics/PointF;

    iget-boolean v2, p0, Lgha;->c:Z

    iget-boolean v3, p0, Lgha;->d:Z

    iget-boolean v4, p0, Lgha;->e:Z

    const/4 v5, 0x1

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    iget-object v6, v0, Lghe;->r:Lnaa;

    invoke-virtual {v6, v1}, Lnaa;->i(Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v0, v1}, Lghe;->f(Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz v4, :cond_4

    iget-object v6, v0, Lghe;->q:Ldfa;

    invoke-virtual {v6, v1}, Ldfa;->n(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lghe;->q:Ldfa;

    invoke-virtual {v6, v1}, Ldfa;->m(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    :goto_1
    iget-object v7, v0, Lghe;->c:Lken;

    invoke-interface {v7}, Lken;->b()Lkdz;

    move-result-object v7

    if-eqz v3, :cond_5

    move-object v3, v7

    check-cast v3, Lkfr;

    iput-object v6, v3, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_5
    if-eqz v2, :cond_6

    move-object v2, v7

    check-cast v2, Lkfr;

    iput-object v6, v2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_6
    if-eqz v4, :cond_7

    :try_start_0
    iget-object v0, v0, Lghe;->c:Lken;

    invoke-interface {v0}, Lken;->d()Lker;

    move-result-object v0
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v7}, Lkdz;->a()Lkea;

    move-result-object v2

    invoke-interface {v0, v2}, Lker;->i(Lkea;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lker;->close()V
    :try_end_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v0}, Lker;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    :try_start_5
    throw v2
    :try_end_5
    .catch Lkdf; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_2
    move-exception v0

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    return-void

    :cond_7
    iget-object v0, v0, Lghe;->c:Lken;

    invoke-interface {v7}, Lkdz;->a()Lkea;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->n(Lkea;)V

    return-void
.end method
