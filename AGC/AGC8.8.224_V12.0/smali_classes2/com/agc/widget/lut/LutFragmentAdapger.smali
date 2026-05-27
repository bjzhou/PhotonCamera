.class public Lcom/agc/widget/lut/LutFragmentAdapger;
.super Lcom/agc/widget/viewpager/AgcPagerAdapter;
.source "SourceFile"


# instance fields
.field private mAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/agc/widget/lut/LutItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDownloadProgressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

.field private mLutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLutClick:Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

.field private scrollItemPosition:I

.field private scrollPagePosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/viewpager/AgcPagerAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mAdapters:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollPagePosition:I

    iput v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollItemPosition:I

    iput-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static MoveToPosition(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollBy(II)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->scrollToPosition(I)V

    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/lut/LutFragmentAdapger;)Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mOnLutClick:Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/widget/lut/LutFragmentAdapger;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mLutList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$setSelectId$0(ILjava/lang/String;Lcom/agc/widget/lut/LutItemAdapter;)V
    .locals 0

    invoke-virtual {p2, p0}, Lcom/agc/widget/lut/LutItemAdapter;->setSelectId(I)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mLutList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mLutList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/model/LutListModel;

    invoke-virtual {p1}, Lcom/agc/model/LutListModel;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/agc/Res$layout;->agc_lut_pager_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget p1, Lcom/agc/Res$id;->agc_list_view:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView;

    new-instance v1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;

    iget-object v2, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setLayoutManager(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mAdapters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mAdapters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/widget/lut/LutItemAdapter;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/agc/widget/lut/LutItemAdapter;

    invoke-direct {v2}, Lcom/agc/widget/lut/LutItemAdapter;-><init>()V

    iget-object v3, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mAdapters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v3, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mDownloadProgressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    invoke-virtual {v2, v3}, Lcom/agc/widget/lut/LutItemAdapter;->setDownloadProgressListener(Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V

    invoke-virtual {p1, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setAdapter(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    const-string v3, "lib_lut_id_key"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/agc/widget/lut/LutItemAdapter;->setSelectId(I)V

    iget-object v3, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mDownloadProgressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    invoke-virtual {v2, v3}, Lcom/agc/widget/lut/LutItemAdapter;->setDownloadProgressListener(Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V

    new-instance v3, Lcom/agc/widget/lut/LutFragmentAdapger$1;

    invoke-direct {v3, p0}, Lcom/agc/widget/lut/LutFragmentAdapger$1;-><init>(Lcom/agc/widget/lut/LutFragmentAdapger;)V

    invoke-virtual {v2, v3}, Lcom/agc/widget/lut/LutItemAdapter;->setOnLutClick(Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;)V

    iget-object v3, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mLutList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/model/LutListModel;

    invoke-virtual {v3}, Lcom/agc/model/LutListModel;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/agc/widget/lut/LutItemAdapter;->setLutListModels(Ljava/util/List;I)V

    iget v2, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollPagePosition:I

    if-ne p2, v2, :cond_1

    iput v4, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollPagePosition:I

    iget p2, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollItemPosition:I

    invoke-static {v1, p1, p2}, Lcom/agc/widget/lut/LutFragmentAdapger;->MoveToPosition(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V

    :cond_1
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDownloadProgressListener(Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mDownloadProgressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    return-void
.end method

.method public setLutList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mLutList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/agc/widget/viewpager/AgcPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnLutClick(Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mOnLutClick:Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    return-void
.end method

.method public setScrollToPosition(II)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollPagePosition:I

    iput p2, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->scrollItemPosition:I

    return-void
.end method

.method public setSelectId(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutFragmentAdapger;->mAdapters:Ljava/util/Map;

    new-instance v1, Lcom/agc/widget/lut/LutFragmentAdapger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/agc/widget/lut/LutFragmentAdapger$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
