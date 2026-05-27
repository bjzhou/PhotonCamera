.class Lcom/agc/fw/FloatWindow$WindowTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/fw/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/fw/FloatWindow;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/agc/fw/FloatWindow$WindowTouchListener;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->updateLocation(FF)V

    return-void
.end method

.method private actionDown(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method private actionMove(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$1200(Lcom/agc/fw/FloatWindow;)F

    move-result p1

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1000(Lcom/agc/fw/FloatWindow;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1300(Lcom/agc/fw/FloatWindow;)F

    move-result v0

    iget-object v1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v1}, Lcom/agc/fw/FloatWindow;->access$1100(Lcom/agc/fw/FloatWindow;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->updateLocation(FF)V

    return-void
.end method

.method private actionOutSide(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1500(Lcom/agc/fw/FloatWindow;)Lcom/agc/fw/FloatListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1500(Lcom/agc/fw/FloatWindow;)Lcom/agc/fw/FloatListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/agc/fw/FloatListener;->actionOutSide(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private actionUp(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$1600(Lcom/agc/fw/FloatWindow;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->autoAlign()V

    :cond_0
    return-void
.end method

.method private autoAlign()V
    .locals 5

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v1}, Lcom/agc/fw/FloatWindow;->access$1200(Lcom/agc/fw/FloatWindow;)F

    move-result v1

    iget-object v2, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v2}, Lcom/agc/fw/FloatWindow;->access$2200(Lcom/agc/fw/FloatWindow;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v1}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v1}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v4}, Lcom/agc/fw/FloatWindow;->access$2200(Lcom/agc/fw/FloatWindow;)Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    new-array v1, v3, [F

    aput v0, v1, v2

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/agc/fw/FloatWindow$WindowTouchListener$1;

    invoke-direct {v1, p0}, Lcom/agc/fw/FloatWindow$WindowTouchListener$1;-><init>(Lcom/agc/fw/FloatWindow$WindowTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateLocation(FF)V
    .locals 1

    float-to-int p1, p1

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$1702(I)I

    float-to-int p2, p2

    invoke-static {p2}, Lcom/agc/fw/FloatWindow;->access$1802(I)I

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$2100(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {p2}, Lcom/agc/fw/FloatWindow;->access$2000(Lcom/agc/fw/FloatWindow;)Lcom/agc/fw/FloatWindow$FloatView;

    move-result-object p2

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v0}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/agc/fw/FloatWindow;->access$1202(Lcom/agc/fw/FloatWindow;F)F

    iget-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v1}, Lcom/agc/fw/FloatWindow;->access$1400(Lcom/agc/fw/FloatWindow;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/agc/fw/FloatWindow;->access$1302(Lcom/agc/fw/FloatWindow;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->actionOutSide(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->actionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->actionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->actionDown(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
