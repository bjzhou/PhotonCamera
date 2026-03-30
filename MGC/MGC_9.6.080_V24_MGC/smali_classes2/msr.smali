.class public final Lmsr;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

.field final synthetic b:Lmss;


# direct methods
.method public constructor <init>(Lmss;Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmsr;->a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmsr;->b:Lmss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    monitor-enter p1

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lmsr;->b:Lmss;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lmss;->c:Lmsv;

    nop

    nop

    nop

    nop

    sget-object v1, Lmsv;->a:Lmsv;

    nop

    invoke-virtual {v0, v1}, Lmsv;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lmsr;->a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    nop

    nop

    const/16 v1, 0x8

    nop

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lmsr;->b:Lmss;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lmss;->c:Lmsv;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lmss;->b:Lmsv;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

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

    nop

    :goto_8
    iget-object p1, p1, Lmss;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object p1, p0, Lmsr;->b:Lmss;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmsr;->b:Lmss;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget-object p1, p1, Lmss;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lmsr;->b:Lmss;

    nop

    nop

    iget-object v0, v0, Lmss;->c:Lmsv;

    nop

    sget-object v1, Lmsv;->a:Lmsv;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lmsv;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget-object p0, p0, Lmsr;->a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->setVisibility(I)V

    :cond_0
    monitor-exit p1

    nop

    nop

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

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
