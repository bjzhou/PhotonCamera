.class Lcom/agc/asv/ShadowPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/ShadowPopup;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/ShadowPopup;


# direct methods
.method public constructor <init>(Lcom/agc/asv/ShadowPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/agc/widget/CenterSeekBar;DZ)V
    .locals 5

    iget-object p4, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p4, p4, Lcom/agc/asv/ShadowPopup;->tvValue:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr p4, v0

    iget-object v0, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object v0, v0, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "----right:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-----left"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onProgressChanged--progress"

    invoke-static {p3, p2}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object p2, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p2, p2, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p3, p2, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/agc/asv/ShadowPopup;->access$000(Lcom/agc/asv/ShadowPopup;)I

    move-result p2

    add-int/2addr p4, p2

    int-to-double v1, p4

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    int-to-double p1, p2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v3

    sub-double/2addr v1, p1

    double-to-float p1, v1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setX(F)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setY(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "x:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p2, p2, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "----y:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p2, p2, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tvThumb--x"

    invoke-static {p2, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method public onStartTrackingTouch(Lcom/agc/widget/CenterSeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvValueHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/agc/widget/CenterSeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvValueHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$1;->this$0:Lcom/agc/asv/ShadowPopup;

    iget-object p1, p1, Lcom/agc/asv/ShadowPopup;->tvThumb:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
