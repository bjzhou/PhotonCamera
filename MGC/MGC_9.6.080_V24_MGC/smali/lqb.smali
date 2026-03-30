.class public final Llqb;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/processing/ProcessingService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/processing/ProcessingService;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llqb;->a:Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Llqb;->a:Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    monitor-enter p2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->e:Z

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->d:Llqe;

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    invoke-interface {p0}, Llqe;->f()V

    :cond_0
    monitor-exit p2

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p1

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    monitor-exit p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p1

    nop

    nop

    nop

    :try_start_2
    iput-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const-string p2, "com.google.android.apps.camera.legacy.app.processing.RESUME"

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    throw p0

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_3
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "com.google.android.apps.camera.legacy.app.processing.PAUSE"

    nop

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_4
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Llqb;->a:Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

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

    :goto_16
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_1b
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_20
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    monitor-enter p2

    nop

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->e:Z

    nop

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->d:Llqe;

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Llqe;->g()V

    :cond_4
    monitor-exit p2

    nop

    nop

    return-void

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
