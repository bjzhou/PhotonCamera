.class Lcom/agc/asv/ShadowAdapter;
.super Lcom/agc/asv/CommonAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/asv/CommonAdapter<",
        "Lcom/agc/asv/ShadowModel;",
        ">;"
    }
.end annotation


# instance fields
.field private selectIndex:I

.field private showAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/agc/asv/ShadowModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/agc/asv/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/asv/ShadowAdapter;->selectIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/asv/ShadowAdapter;->showAnimation:Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/agc/asv/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/agc/asv/ShadowModel;

    iget-object p3, p0, Lcom/agc/asv/CommonAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/agc/Res$layout;->agc_asv_shadow_list_item:I

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/agc/Res$id;->agc_root:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    sget v0, Lcom/agc/Res$id;->agc_iv_thumb:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/agc/Res$id;->agc_tv_thumb:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/agc/Res$id;->circle_view:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/CircleProgressView;

    invoke-virtual {p2}, Lcom/agc/asv/ShadowModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    iput p1, p0, Lcom/agc/asv/ShadowAdapter;->selectIndex:I

    invoke-virtual {p2}, Lcom/agc/asv/ShadowModel;->getProcess100Per()F

    move-result p1

    iget-boolean v3, p0, Lcom/agc/asv/ShadowAdapter;->showAnimation:Z

    invoke-virtual {v2, p1, v3}, Lcom/agc/asv/CircleProgressView;->setProgress(FZ)V

    invoke-virtual {p2}, Lcom/agc/asv/ShadowModel;->isInitValue()Z

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/agc/asv/ShadowModel;->isInitValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/agc/asv/ShadowModel;->getProcess()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/agc/asv/ShadowAdapter;->showAnimation:Z

    const/4 v1, 0x0

    invoke-virtual {v2, v1, p1}, Lcom/agc/asv/CircleProgressView;->setProgress(FZ)V

    :goto_2
    invoke-virtual {p2}, Lcom/agc/asv/ShadowModel;->getDrawableRes()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p3
.end method

.method public onItemCLick(I)Z
    .locals 1

    iget v0, p0, Lcom/agc/asv/ShadowAdapter;->selectIndex:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/agc/asv/ShadowAdapter;->selectIndex:I

    invoke-virtual {p0}, Lcom/agc/asv/ShadowAdapter;->resetSelect()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onValueChange(F)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/asv/ShadowAdapter;->showAnimation:Z

    iget-object v0, p0, Lcom/agc/asv/CommonAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/agc/asv/ShadowAdapter;->selectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/asv/ShadowModel;

    invoke-virtual {v0, p1}, Lcom/agc/asv/ShadowModel;->setProcess(F)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public resetSelect()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/agc/asv/CommonAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/agc/asv/CommonAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/ShadowModel;

    iget v3, p0, Lcom/agc/asv/ShadowAdapter;->selectIndex:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/agc/asv/ShadowModel;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
