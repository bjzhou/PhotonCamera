.class Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/CenterSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->bind(DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    iput p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/agc/widget/CenterSeekBar;DZ)V
    .locals 6

    iget-object p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    iget-object p2, p2, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->this$1:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    invoke-static {p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->access$300(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    iget p3, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->val$position:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getProgress()D

    move-result-wide p3

    double-to-float p3, p3

    invoke-static {p2, p3}, Lagc/Agc;->patchValueCorrect(Ljava/lang/String;F)F

    move-result p2

    iget-object p3, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p3}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$400(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p4}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {v1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newX--->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "-->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "---->"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    int-to-double v0, p3

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getMThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "newX"

    invoke-static {v0, p2}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

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

    mul-double/2addr p1, v4

    double-to-float p1, p1

    int-to-float p2, p3

    sub-float/2addr p2, p1

    float-to-double p1, p2

    iget-object p3, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p3}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-double v0, p3

    mul-double/2addr v0, v4

    sub-double/2addr p1, v0

    double-to-float p1, p1

    iget-object p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setX(F)V

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    int-to-float p2, p4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setY(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "x:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "----y:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

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

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$400(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$600(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {p1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/agc/widget/CenterSeekBar;)V
    .locals 5

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {v0}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$400(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {v0}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$600(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-static {v0}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->access$500(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    iget-object v0, v0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->this$1:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    iget-object v0, v0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->this$0:Lcom/agc/asv/AgcSeekbarDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->this$2:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    iget-object v1, v1, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->this$1:Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;

    invoke-static {v1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->access$300(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/agc/widget/CenterSeekBar;->getProgress()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/agc/util/SpUtils;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
