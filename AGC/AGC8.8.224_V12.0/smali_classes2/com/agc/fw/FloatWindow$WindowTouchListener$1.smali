.class Lcom/agc/fw/FloatWindow$WindowTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/fw/FloatWindow$WindowTouchListener;->autoAlign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/fw/FloatWindow$WindowTouchListener;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatWindow$WindowTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener$1;->this$1:Lcom/agc/fw/FloatWindow$WindowTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/agc/fw/FloatWindow$WindowTouchListener$1;->this$1:Lcom/agc/fw/FloatWindow$WindowTouchListener;

    iget-object v1, v0, Lcom/agc/fw/FloatWindow$WindowTouchListener;->this$0:Lcom/agc/fw/FloatWindow;

    invoke-static {v1}, Lcom/agc/fw/FloatWindow;->access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-static {v0, p1, v1}, Lcom/agc/fw/FloatWindow$WindowTouchListener;->access$2300(Lcom/agc/fw/FloatWindow$WindowTouchListener;FF)V

    return-void
.end method
