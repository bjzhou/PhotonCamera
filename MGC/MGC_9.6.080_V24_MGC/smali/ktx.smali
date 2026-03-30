.class public final Lktx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:Lkuc;

.field private final c:Lpdf;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lkuc;Ljava/lang/Object;Lpdf;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lktx;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lktx;->b:Lkuc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lktx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p3, p0, Lktx;->c:Lpdf;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lkmj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lktx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lkuc;->a()Loyd;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lktx;->d:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    iget-object p0, p0, Lktx;->b:Lkuc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lkuc;->a()Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lkuc;->b()Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lktx;->b:Lkuc;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lkuc;->b()Loyd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lktx;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lktx;->c:Lpdf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1, v2, v0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lkmj;->a:Lkmj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4
    invoke-interface {v0}, Llxa;->q()Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, p0, v0, v3}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lktx;->d:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-interface {p0, p1, p2}, Lkuc;->c(Lkub;Llko;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p2, "ShotPipeline not available"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "ShotTrackingImageCaptureCommand#captureImage"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Lhst;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lpfi;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v3, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string p1, "Attempting to add shot after pipeline was shutdown!"

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Lktx;->da190e616797844b591057d0190e7728m(Lkmj;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Lkmj;->b:Lkmj;

    nop

    nop

    invoke-direct {p0, v0}, Lktx;->da190e616797844b591057d0190e7728m(Lkmj;)V

    iget-object v0, p0, Lktx;->c:Lpdf;

    nop

    invoke-interface {v0}, Lpdf;->g()V

    iget-object v0, p0, Lktx;->b:Lkuc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1, p2}, Lkuc;->c(Lkub;Llko;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_21

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_15
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    const-string v1, "StateTrackingImageCaptureCommand#captureImage"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Lhst;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    throw p1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lktx;->c:Lpdf;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lktx;->b:Lkuc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    sget-object p1, Lkmj;->a:Lkmj;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    iget-object v0, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lktx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    move-object v2, v1

    nop

    check-cast v2, Loyb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, v2, Loyb;->a:Z

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    move-object v2, v1

    nop

    check-cast v2, Loyb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Loyb;

    nop

    nop

    nop

    iget-object v2, v2, Loyb;->d:Ljava/lang/Object;

    nop

    const-string v3, "#notifyPipelineResumed"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    move-object v2, v1

    nop

    nop

    nop

    nop

    check-cast v2, Loyb;

    nop

    nop

    nop

    invoke-virtual {v2}, Loyb;->c()Ljava/util/List;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Llxi;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Llxi;->c()V

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_3
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Loyb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Loyb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    :cond_4
    move-object v2, v1

    nop

    nop

    nop

    nop

    check-cast v2, Loyb;

    nop

    nop

    iget-object v2, v2, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v2, Ljava/util/HashSet;

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, p2, p0}, Lpfi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v2, Lkbu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lktx;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

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

    :goto_2a
    invoke-direct {p0, p2}, Lktx;->da190e616797844b591057d0190e7728m(Lkmj;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1, v0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1, v0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lktx;->d:I

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_9
    iget-object v0, p0, Lktx;->b:Lkuc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const-string v1, "delegate"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lktx;->b:Lkuc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1a

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
