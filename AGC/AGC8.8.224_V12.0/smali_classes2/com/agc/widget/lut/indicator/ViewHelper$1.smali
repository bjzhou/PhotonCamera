.class Lcom/agc/widget/lut/indicator/ViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/indicator/ViewHelper;->scrollIndicator(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/indicator/ViewHelper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/indicator/ViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/indicator/ViewHelper$1;->this$0:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/indicator/ViewHelper$1;->this$0:Lcom/agc/widget/lut/indicator/ViewHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/agc/widget/lut/indicator/ViewHelper;->access$000(Lcom/agc/widget/lut/indicator/ViewHelper;F)V

    return-void
.end method
