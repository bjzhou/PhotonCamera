.class public final synthetic Liop;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lioq;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/googlex/gcam/ShotMetadata;

.field public final synthetic d:Z

.field public final synthetic e:Lioy;

.field public final synthetic f:Lndt;

.field public final synthetic g:Lnar;


# direct methods
.method public synthetic constructor <init>(Lioq;JLnar;Lcom/google/googlex/gcam/ShotMetadata;Lndt;ZLioy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p2, p0, Liop;->b:J

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Liop;->g:Lnar;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Liop;->f:Lndt;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Liop;->a:Lioq;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p8, p0, Liop;->e:Lioy;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iput-boolean p7, p0, Liop;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput-object p5, p0, Liop;->c:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 11

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    iget-object v3, v0, Lios;->h:Liot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object v5, p0, Liop;->f:Lndt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    iget-object v4, p0, Liop;->c:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lioq;->a:Lios;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Lios;->g(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Liop;->a:Lioq;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, v0, Lios;->h:Liot;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    iget-object v3, p0, Liop;->g:Lnar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Lndt;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v1, p0, Liop;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Liot;->d:Lpdf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    iget-object v6, p0, Liop;->e:Lioy;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v7, v0, Lios;->h:Liot;

    nop

    nop

    nop

    iget-object v7, v7, Liot;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v8, "fusion#saveImage"

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {}, Linl;->a()Link;

    move-result-object v7

    nop

    nop

    nop

    nop

    new-instance v8, Lcom/google/googlex/gcam/InterleavedImageU16;

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>()V

    invoke-static {v8}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iput-object v8, v7, Link;->e:Lsui;

    nop

    new-instance v8, Llgi;

    nop

    nop

    invoke-direct {v8}, Llgi;-><init>()V

    invoke-virtual {v7, v8}, Link;->e(Lpro;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/ShotMetadata;->b()J

    move-result-wide v9

    nop

    nop

    nop

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    nop

    invoke-virtual {v7, v8, v9}, Link;->h(J)V

    iget-object v8, v0, Lios;->i:Lijd;

    nop

    nop

    invoke-virtual {v7, v8}, Link;->d(Lijd;)V

    invoke-virtual {v7, v6}, Link;->c(Lioy;)V

    invoke-virtual {v7}, Link;->b()V

    iget-object v6, v3, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v8, v6

    nop

    nop

    check-cast v8, Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    check-cast v6, Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    iput-object v3, v7, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    :cond_1
    iget-object v3, v3, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lrss;

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Landroid/hardware/HardwareBuffer;

    nop

    nop

    iput-object v3, v7, Link;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v7, v4}, Link;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    iget-object v3, v0, Lios;->k:Llko;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Link;->i(Llko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v5}, Lndt;->close()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean p0, p0, Liop;->d:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-object p0, v0, Lios;->h:Liot;

    nop

    nop

    iget-object p0, p0, Liot;->b:Ltud;

    nop

    nop

    nop

    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Liko;

    nop

    nop

    nop

    iget-object v3, v0, Lios;->i:Lijd;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Link;->a()Linl;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    sget-object v6, Lioy;->a:Lioy;

    nop

    nop

    invoke-virtual {p0, v3, v4, v6}, Liko;->b(Lijd;Lrss;Lioy;)Lrss;

    const/4 p0, 0x1

    nop

    nop

    iput-boolean p0, v0, Lios;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    :goto_1c
    iget-object p0, v0, Lios;->h:Liot;

    nop

    iget-object p0, p0, Liot;->b:Ltud;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Liko;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lios;->i:Lijd;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Link;->a()Linl;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-string v6, "original"

    nop

    nop

    nop

    invoke-virtual {p0, v3, v4, v6}, Liko;->d(Lijd;Linl;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v3, Liot;->d:Lpdf;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1, v2}, Lios;->g(J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method
