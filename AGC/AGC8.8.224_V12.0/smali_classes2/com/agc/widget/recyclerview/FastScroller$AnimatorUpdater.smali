.class Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/FastScroller;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/FastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller$AnimatorUpdater;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/FastScroller;->requestRedraw()V

    return-void
.end method
