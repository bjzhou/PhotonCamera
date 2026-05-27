.class Lcom/agc/widget/colorbar/ColorMixLayout$2;
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

    iput-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$2;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$2;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/widget/colorbar/ColorSliderBar;->reset()V

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$2;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$000(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/OnColorPickerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$2;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$000(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/OnColorPickerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/colorbar/ColorMixLayout$2;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v0}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object v0

    iget v0, v0, Lcom/agc/widget/colorbar/ColorSliderBar;->colorIndex:I

    invoke-interface {p1, v0}, Lcom/agc/widget/colorbar/OnColorPickerListener;->onColorReset(I)V

    :cond_0
    return-void
.end method
