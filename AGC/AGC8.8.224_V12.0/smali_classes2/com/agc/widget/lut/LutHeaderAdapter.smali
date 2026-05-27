.class Lcom/agc/widget/lut/LutHeaderAdapter;
.super Lcom/agc/widget/lut/indicator/IndicatorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;
    }
.end annotation


# instance fields
.field _selectCount:I

.field lutListModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel;",
            ">;"
        }
    .end annotation
.end field

.field private onLutHeaderClickListener:Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/lut/indicator/IndicatorAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->_selectCount:I

    iput-object p1, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->onLutHeaderClickListener:Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;

    return-void
.end method


# virtual methods
.method public getTabView(I)Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/agc/Res$layout;->agc_lut_header_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/agc/widget/lut/LutHeaderAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/agc/widget/lut/LutHeaderAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/agc/widget/lut/LutHeaderAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/agc/Res$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->lutListModels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/model/LutListModel;

    invoke-virtual {v2}, Lcom/agc/model/LutListModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->_selectCount:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-object v0
.end method

.method public highLightTabView(ILandroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method synthetic lambda$getTabView$0$com-agc-widget-lut-LutHeaderAdapter(ILandroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->onLutHeaderClickListener:Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->lutListModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/model/LutListModel;

    invoke-interface {p2, p1}, Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;->onClick(Lcom/agc/model/LutListModel;)V

    :cond_0
    return-void
.end method

.method public onPageChange(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->_selectCount:I

    return-void
.end method

.method public restoreTabView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setLutListModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/LutHeaderAdapter;->lutListModels:Ljava/util/List;

    return-void
.end method
