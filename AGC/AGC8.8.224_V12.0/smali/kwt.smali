.class public final Lkwt;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


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

    iput-object p1, p0, Lkwt;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkwt;->e:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lkwt;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    invoke-virtual {v0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lkwt;->e:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lkwr;->a()F

    move-result p1

    iput p1, p0, Lkwt;->a:F

    iput p1, p0, Lkwt;->b:F

    iget-object v0, p0, Lkwt;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    iget-object v0, v0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->f:Lkwr;

    iget-wide v0, v0, Lkwr;->c:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide v0

    long-to-float v0, v0

    sget v1, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lkwt;->f:F

    const/4 p1, 0x1

    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget p1, p0, Lkwt;->b:F

    iget-object p2, p0, Lkwt;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    iget p2, p2, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->e:F

    div-float/2addr p4, p2

    add-float/2addr p1, p4

    iput p1, p0, Lkwt;->b:F

    iget p2, p0, Lkwt;->f:F

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lkwt;->b:F

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p2, p3

    iget p1, p0, Lkwt;->b:F

    sget p3, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a:F

    mul-float p1, p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "Target heap usage: %.2f%% (%.2f MB)"

    invoke-virtual {p0, p1, p2}, Lkwt;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method
