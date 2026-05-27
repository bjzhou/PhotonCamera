.class Lcom/agc/widget/lut/LutFragmentAdapger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutFragmentAdapger;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutFragmentAdapger;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutFragmentAdapger;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger$1;->this$0:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onHideAds$0(Lcom/agc/model/LutListModel$LutModel;Lcom/agc/model/LutListModel$LutModel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/agc/model/LutListModel$LutModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/agc/model/LutListModel$LutModel;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onHideAds$1(Lcom/agc/model/LutListModel$LutModel;Lcom/agc/model/LutListModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/agc/model/LutListModel;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/agc/model/LutListModel;->getList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda0;-><init>(Lcom/agc/model/LutListModel$LutModel;)V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onHideAds(Lcom/agc/model/LutListModel$LutModel;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger$1;->this$0:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-static {v0}, Lcom/agc/widget/lut/LutFragmentAdapger;->access$100(Lcom/agc/widget/lut/LutFragmentAdapger;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/agc/widget/lut/LutFragmentAdapger$1$$ExternalSyntheticLambda1;-><init>(Lcom/agc/model/LutListModel$LutModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger$1;->this$0:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-virtual {p1}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSuccess(Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger$1;->this$0:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-static {v0}, Lcom/agc/widget/lut/LutFragmentAdapger;->access$000(Lcom/agc/widget/lut/LutFragmentAdapger;)Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;->onSuccess(Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V

    return-void
.end method
