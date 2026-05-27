.class Lcom/agc/menu/SectorMenuButton$MaskView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/SectorMenuButton$MaskView;-><init>(Landroid/content/Context;Lcom/agc/menu/SectorMenuButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/menu/SectorMenuButton$MaskView;


# direct methods
.method public constructor <init>(Lcom/agc/menu/SectorMenuButton$MaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView$1;->this$0:Lcom/agc/menu/SectorMenuButton$MaskView;

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

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$MaskView$1;->this$0:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$2000(Lcom/agc/menu/SectorMenuButton$MaskView;)Lcom/agc/menu/SectorMenuButton;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$2100(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/SectorMenuButton$RippleInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$MaskView$1;->this$0:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$2200(Lcom/agc/menu/SectorMenuButton$MaskView;)F

    move-result v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/agc/menu/SectorMenuButton$RippleInfo;->rippleRadius:F

    return-void
.end method
