.class public final Llmh;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llmh;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v2, Llmi;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/32 :goto_14

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->getApplication()Landroid/app/Application;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_c
    invoke-interface {v2, v0}, Llmi;->j(Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Liye;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    iget-object v2, v0, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, p0, v1}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Llmh;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "PBS#ensureInjection"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Llmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Llmh;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v2, v3}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-class v3, Llmi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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
.end method
