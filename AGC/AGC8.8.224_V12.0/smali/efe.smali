.class public final synthetic Lefe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Leff;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/googlex/gcam/ShotMetadata;

.field public final synthetic d:Z

.field public final synthetic e:Lhbq;

.field public final synthetic f:Ligo;


# direct methods
.method public synthetic constructor <init>(Leff;JLigo;Lcom/google/googlex/gcam/ShotMetadata;Lhbq;Z[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lefe;->a:Leff;

    iput-wide p2, p0, Lefe;->b:J

    iput-object p4, p0, Lefe;->f:Ligo;

    iput-object p5, p0, Lefe;->c:Lcom/google/googlex/gcam/ShotMetadata;

    iput-object p6, p0, Lefe;->e:Lhbq;

    iput-boolean p7, p0, Lefe;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lefe;->a:Leff;

    iget-wide v1, p0, Lefe;->b:J

    iget-object v3, p0, Lefe;->f:Ligo;

    iget-object v4, p0, Lefe;->c:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v5, p0, Lefe;->e:Lhbq;

    iget-boolean v6, p0, Lefe;->d:Z

    iget-object v0, v0, Leff;->b:Lefh;

    :try_start_0
    iget-object v7, v0, Lefh;->g:Lefi;

    iget-object v7, v7, Lefi;->f:Lkbc;

    const-string v8, "fusion#saveImage"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Ledo;->a()Ledn;

    move-result-object v7

    new-instance v8, Lcom/google/googlex/gcam/InterleavedImageU16;

    invoke-direct {v8}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>()V

    invoke-static {v8}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v8

    invoke-virtual {v7, v8}, Ledn;->c(Lnou;)V

    new-instance v8, Lglo;

    invoke-direct {v8}, Lglo;-><init>()V

    invoke-virtual {v7, v8}, Ledn;->d(Lkou;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/google/googlex/gcam/ShotMetadata;->b()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ledn;->g(J)V

    iget-object v8, v0, Lefh;->h:Lebb;

    iput-object v8, v7, Ledn;->j:Lebb;

    iget v8, v0, Lefh;->d:I

    invoke-static {v8}, Lkab;->b(I)Lkab;

    move-result-object v8

    invoke-virtual {v7, v8}, Ledn;->e(Lkab;)V

    invoke-virtual {v7}, Ledn;->b()V

    iget-object v8, v3, Ligo;->b:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Lmqp;

    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_0

    check-cast v8, Lmqp;

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/gcam/InterleavedImageU8;

    iput-object v3, v7, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    goto :goto_0

    :cond_0
    iget-object v3, v3, Ligo;->a:Ljava/lang/Object;

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    iput-object v3, v7, Ledn;->c:Landroid/hardware/HardwareBuffer;

    :goto_0
    invoke-virtual {v7, v4}, Ledn;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    iget-object v3, v0, Lefh;->k:Lgkr;

    iput-object v3, v7, Ledn;->k:Lgkr;

    if-eqz v6, :cond_1

    iget-object v3, v0, Lefh;->g:Lefi;

    iget-object v3, v3, Lefi;->b:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lebx;

    iget-object v4, v0, Lefh;->h:Lebb;

    invoke-virtual {v7}, Ledn;->a()Ledo;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    sget-object v7, Lefz;->a:Lefz;

    invoke-interface {v3, v4, v6, v7}, Lebx;->a(Lebb;Lmqp;Lefz;)Lmqp;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lefh;->f:Z

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lefh;->g:Lefi;

    iget-object v3, v3, Lefi;->b:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lebx;

    iget-object v4, v0, Lefh;->h:Lebb;

    invoke-virtual {v7}, Ledn;->a()Ledo;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lebx;->b(Lebb;Ledo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v3, v0, Lefh;->g:Lefi;

    iget-object v3, v3, Lefi;->f:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    invoke-virtual {v5}, Lhbq;->close()V

    invoke-virtual {v0, v1, v2}, Lefh;->f(J)V

    return-void

    :catchall_0
    move-exception v3

    iget-object v4, v0, Lefh;->g:Lefi;

    iget-object v4, v4, Lefi;->f:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    invoke-virtual {v5}, Lhbq;->close()V

    invoke-virtual {v0, v1, v2}, Lefh;->f(J)V

    throw v3
.end method
