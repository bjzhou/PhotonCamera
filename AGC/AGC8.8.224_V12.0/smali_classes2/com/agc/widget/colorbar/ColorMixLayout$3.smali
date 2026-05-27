.class Lcom/agc/widget/colorbar/ColorMixLayout$3;
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

    iput-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$3;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$3;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {p1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$200(Lcom/agc/widget/colorbar/ColorMixLayout;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/agc/widget/colorbar/ColorMixLayout$3;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v0}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$200(Lcom/agc/widget/colorbar/ColorMixLayout;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/agc/widget/colorbar/ColorMixLayout$3;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v0}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$000(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/OnColorPickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/colorbar/ColorMixLayout$3;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v0}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$000(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/OnColorPickerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/colorbar/ColorMixLayout$3;->this$0:Lcom/agc/widget/colorbar/ColorMixLayout;

    invoke-static {v1}, Lcom/agc/widget/colorbar/ColorMixLayout;->access$100(Lcom/agc/widget/colorbar/ColorMixLayout;)Lcom/agc/widget/colorbar/ColorSliderBar;

    move-result-object v1

    iget v1, v1, Lcom/agc/widget/colorbar/ColorSliderBar;->colorIndex:I

    invoke-interface {v0, p1, v1}, Lcom/agc/widget/colorbar/OnColorPickerListener;->onColorOverride(ZI)V

    :cond_0
    return-void
.end method
