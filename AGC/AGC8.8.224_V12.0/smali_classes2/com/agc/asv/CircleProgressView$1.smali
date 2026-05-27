.class Lcom/agc/asv/CircleProgressView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/CircleProgressView;->setProgress(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/CircleProgressView;


# direct methods
.method public constructor <init>(Lcom/agc/asv/CircleProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/agc/asv/CircleProgressView;->access$002(Lcom/agc/asv/CircleProgressView;F)F

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-static {p1}, Lcom/agc/asv/CircleProgressView;->access$100(Lcom/agc/asv/CircleProgressView;)Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-static {p1}, Lcom/agc/asv/CircleProgressView;->access$100(Lcom/agc/asv/CircleProgressView;)Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-static {v0}, Lcom/agc/asv/CircleProgressView;->access$000(Lcom/agc/asv/CircleProgressView;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-static {v1}, Lcom/agc/asv/CircleProgressView;->access$200(Lcom/agc/asv/CircleProgressView;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/agc/asv/CircleProgressView$OnProgressChangedListener;->onProgressChanged(F)V

    :cond_0
    iget-object p1, p0, Lcom/agc/asv/CircleProgressView$1;->this$0:Lcom/agc/asv/CircleProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
