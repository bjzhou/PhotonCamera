.class Lcom/agc/fw/FloatWindow$FloatView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/fw/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatView"
.end annotation


# instance fields
.field interceptX:I

.field interceptY:I

.field final synthetic this$0:Lcom/agc/fw/FloatWindow;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatWindow;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/agc/fw/FloatWindow$FloatView;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/fw/FloatWindow$FloatView;->interceptX:I

    iput p2, p0, Lcom/agc/fw/FloatWindow$FloatView;->interceptY:I

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$900(Lcom/agc/fw/FloatWindow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$900(Lcom/agc/fw/FloatWindow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$900(Lcom/agc/fw/FloatWindow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$900(Lcom/agc/fw/FloatWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-static {p1}, Lcom/agc/fw/FloatWindow;->access$900(Lcom/agc/fw/FloatWindow;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/agc/fw/FloatWindow$FloatView;->interceptX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/agc/fw/FloatWindow$FloatView;->interceptY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/agc/fw/FloatWindow$FloatView;->interceptX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/agc/fw/FloatWindow$FloatView;->interceptY:I

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$FloatView;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/agc/fw/FloatWindow;->access$1002(Lcom/agc/fw/FloatWindow;F)F

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$FloatView;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/agc/fw/FloatWindow;->access$1102(Lcom/agc/fw/FloatWindow;F)F

    :cond_2
    :goto_0
    return v1
.end method
