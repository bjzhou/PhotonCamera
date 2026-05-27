.class Lcom/agc/widget/FeatureButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/FeatureButton;->onClickPopItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/FeatureButton;


# direct methods
.method public constructor <init>(Lcom/agc/widget/FeatureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/FeatureButton$2;->this$0:Lcom/agc/widget/FeatureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/FeatureButton$2;->this$0:Lcom/agc/widget/FeatureButton;

    const-string v0, "lib_lut_id_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Lcom/agc/widget/OptionButton;->selectedIndex:I

    iget-object p1, p0, Lcom/agc/widget/FeatureButton$2;->this$0:Lcom/agc/widget/FeatureButton;

    invoke-virtual {p1}, Lcom/agc/widget/OptionButton;->updateIcon()V

    return-void
.end method
