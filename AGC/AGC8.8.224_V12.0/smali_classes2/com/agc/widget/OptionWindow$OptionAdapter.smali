.class Lcom/agc/widget/OptionWindow$OptionAdapter;
.super Lcom/agc/asv/CommonAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/OptionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/asv/CommonAdapter<",
        "Lcom/agc/widget/OptionButton$OptionButtonItem;",
        ">;"
    }
.end annotation


# instance fields
.field public selectedIndex:I

.field final synthetic this$0:Lcom/agc/widget/OptionWindow;


# direct methods
.method public constructor <init>(Lcom/agc/widget/OptionWindow;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/agc/widget/OptionButton$OptionButtonItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/OptionWindow$OptionAdapter;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-direct {p0, p2, p3}, Lcom/agc/asv/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/OptionWindow$OptionAdapter;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/agc/asv/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/OptionButton$OptionButtonItem;

    iget-object p2, p0, Lcom/agc/asv/CommonAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/agc/Res$layout;->agc_asv_pop_list_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "agc_tv"

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    iget v0, p1, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    iget v1, p0, Lcom/agc/widget/OptionWindow$OptionAdapter;->selectedIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    const-string v0, "agc_option_iv"

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/agc/asv/CommonAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Lcom/agc/widget/OptionButton$OptionButtonItem;->icon:Ljava/lang/String;

    iget-object v3, p0, Lcom/agc/asv/CommonAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "agc_option_tv"

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/agc/widget/OptionButton$OptionButtonItem;->title:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
