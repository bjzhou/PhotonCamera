.class public final Lqdk;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:F

.field public b:F

.field public final synthetic c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

.field private e:Landroid/widget/Toast;

.field private f:F


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqdk;->e:Landroid/widget/Toast;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lqdk;->e:Landroid/widget/Toast;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/32 :goto_7

    nop

    nop
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    long-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    long-to-float v0, v0

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

    :goto_6
    iput p1, p0, Lqdk;->a:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v0, 0x6

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

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    iput p1, p0, Lqdk;->f:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Lqdk;->b:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v0, v0, Lqdi;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    sub-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lqdi;->a()F

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

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

    :goto_14
    sget v1, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-static {v0, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->f:Lqdi;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    const/4 p0, 0x1

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

    nop
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2, p1}, Lqdk;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr p1, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    iget p1, p0, Lqdk;->b:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const-string p2, "Target heap usage: %.2f%% (%.2f MB)"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr p4, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iget p2, p0, Lqdk;->f:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    mul-float/2addr p1, p2

    nop

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

    nop

    :goto_e
    const/high16 p3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 p2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lqdk;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    iget p2, p2, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->e:F

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

    nop

    :goto_12
    iput p1, p0, Lqdk;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    sget p3, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iget p2, p0, Lqdk;->b:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

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

    :goto_16
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
