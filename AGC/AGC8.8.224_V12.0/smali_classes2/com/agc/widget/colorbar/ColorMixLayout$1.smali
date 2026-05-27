.class Lcom/agc/widget/colorbar/ColorMixLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/colorbar/ColorMixLayout;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/colorbar/ColorMixLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/colorbar/ColorMixLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$000(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/OnColorPickerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$000(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/OnColorPickerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v0}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object v0

    iget v0, v0, Lcom/agc/widget/colorbar/ColorSliderBar;->barColor:I

    iget-object v1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object v1

    iget v1, v1, Lcom/agc/widget/colorbar/ColorSliderBar;->mHueValue:F

    iget-object v2, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v2}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object v2

    iget v2, v2, Lcom/agc/widget/colorbar/ColorSliderBar;->mSaturationValue:F

    iget-object v3, p0, Lcom/agc/widget/colorbar/ColorMixLayout$1;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v3}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object v3

    iget v3, v3, Lcom/agc/widget/colorbar/ColorSliderBar;->mLuminanceValue:F

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/agc/widget/colorbar/OnColorPickerListener;->onColorDone(IFFF)V

    :cond_0
    return-void
.end method
