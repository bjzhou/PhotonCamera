.class public final synthetic Lfet;
.super Ljava/lang/Object;

# interfaces
.implements Liek;


# instance fields
.field public final synthetic a:Lfeu;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Lfga;

.field public final synthetic e:Lijx;


# direct methods
.method public synthetic constructor <init>(Lfeu;Lijx;ZLjava/util/concurrent/atomic/AtomicBoolean;Lfga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfet;->a:Lfeu;

    iput-object p2, p0, Lfet;->e:Lijx;

    iput-boolean p3, p0, Lfet;->b:Z

    iput-object p4, p0, Lfet;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lfet;->d:Lfga;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/graphics/Rect;Z)V
    .locals 11

    iget-object v0, p0, Lfet;->a:Lfeu;

    iget-object v1, p0, Lfet;->e:Lijx;

    iget-boolean v2, p0, Lfet;->b:Z

    iget-object v3, p0, Lfet;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lfet;->d:Lfga;

    iget-object v5, v0, Lfeu;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lfeu;->s:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v6, v0, Lfeu;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v7

    sub-float/2addr v9, v6

    float-to-double v6, v8

    float-to-double v8, v9

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_1

    const-wide v8, 0x4066800000000000L    # 180.0

    sub-double v6, v8, v6

    goto :goto_0

    :cond_1
    :goto_0
    iget-object v8, v0, Lfeu;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-wide v8, 0x4052c00000000000L    # 75.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_3

    iget-boolean p2, v0, Lfeu;->r:Z

    if-eqz p2, :cond_4

    iput-boolean p4, v1, Lijx;->i:Z

    iget-object p2, v1, Lijx;->e:Landroid/view/MotionEvent;

    if-nez p2, :cond_2

    iput-object p1, v1, Lijx;->e:Landroid/view/MotionEvent;

    iget-object p1, v1, Lijx;->e:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, v1, Lijx;->f:F

    iget-object p1, v1, Lijx;->e:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v1, Lijx;->g:F

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget p3, v1, Lijx;->f:F

    sub-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p3, v1, Lijx;->g:F

    sub-float/2addr p1, p3

    sget-object p3, Liko;->a:Liko;

    iget-object p3, v1, Lijx;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    iget-object p3, p3, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->h:Liko;

    invoke-virtual {p3}, Liko;->ordinal()I

    move-result p3

    const/4 p4, 0x0

    packed-switch p3, :pswitch_data_0

    iget-object p1, v1, Lijx;->b:Landroid/widget/ImageView;

    iget p3, v1, Lijx;->j:F

    invoke-static {p2, p3, p4}, Lijx;->c(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, v1, Lijx;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a()V

    goto :goto_1

    :pswitch_0
    iget-object p2, v1, Lijx;->b:Landroid/widget/ImageView;

    iget p3, v1, Lijx;->j:F

    invoke-static {p1, p3, p4}, Lijx;->c(FFF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, v1, Lijx;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a()V

    goto :goto_1

    :pswitch_1
    iget-object p2, v1, Lijx;->b:Landroid/widget/ImageView;

    iget p3, v1, Lijx;->j:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p1, p4, p3}, Lijx;->c(FFF)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, v1, Lijx;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a()V

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lijx;->b(Z)V

    return-void

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, p1, p2, p3, p4}, Lfga;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/graphics/Rect;Z)V

    return-void

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
