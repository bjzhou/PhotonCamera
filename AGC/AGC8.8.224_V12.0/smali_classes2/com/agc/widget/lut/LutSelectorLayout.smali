.class public Lcom/agc/widget/lut/LutSelectorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/agc/net/OnNetworkListener;
.implements Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/agc/net/OnNetworkListener<",
        "Ljava/util/List<",
        "Lcom/agc/model/LutListModel;",
        ">;>;",
        "Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;"
    }
.end annotation


# static fields
.field public static final lutID:Ljava/lang/String; = "lib_lut_id_key"

.field public static final lutIntensity:Ljava/lang/String; = "lib_lut_intensity_key"

.field public static final lutPath:Ljava/lang/String; = "lib_lut_key"


# instance fields
.field private final mHeaderListView:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

.field private mIntensityChangeListener:Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;

.field private final mIvRefresh:Landroid/view/View;

.field private final mIvReset:Landroid/view/View;

.field private mLastSaveId:I

.field private final mLutHeaderAdapter:Lcom/agc/widget/lut/LutHeaderAdapter;

.field private mLutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

.field private final mSeekBarView:Landroid/widget/SeekBar;

.field private final mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/lut/LutSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/lut/LutSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLastSaveId:I

    const-string p2, "lib_lut_id_key"

    invoke-static {p2, p1}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLastSaveId:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/agc/Res$layout;->agc_lut_selecotr_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/agc/Res$id;->agc_iv_reset:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mIvReset:Landroid/view/View;

    new-instance p2, Lcom/agc/widget/lut/LutSelectorLayout$1;

    invoke-direct {p2, p0}, Lcom/agc/widget/lut/LutSelectorLayout$1;-><init>(Lcom/agc/widget/lut/LutSelectorLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/agc/Res$id;->agc_iv_refresh:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mIvRefresh:Landroid/view/View;

    new-instance p2, Lcom/agc/widget/lut/LutSelectorLayout$2;

    invoke-direct {p2, p0}, Lcom/agc/widget/lut/LutSelectorLayout$2;-><init>(Lcom/agc/widget/lut/LutSelectorLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/agc/widget/lut/LutFragmentAdapger;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

    new-instance p2, Lcom/agc/widget/lut/LutSelectorLayout$3;

    invoke-direct {p2, p0}, Lcom/agc/widget/lut/LutSelectorLayout$3;-><init>(Lcom/agc/widget/lut/LutSelectorLayout;)V

    invoke-virtual {p1, p2}, Lcom/agc/widget/lut/LutFragmentAdapger;->setOnLutClick(Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;)V

    sget p2, Lcom/agc/Res$id;->agc_view_pager:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/agc/widget/viewpager/AgcViewPager;

    iput-object p2, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    new-instance p3, Lcom/agc/widget/lut/LutSelectorLayout$4;

    invoke-direct {p3, p0}, Lcom/agc/widget/lut/LutSelectorLayout$4;-><init>(Lcom/agc/widget/lut/LutSelectorLayout;)V

    invoke-virtual {p2, p3}, Lcom/agc/widget/viewpager/AgcViewPager;->addOnPageChangeListener(Lcom/agc/widget/viewpager/AgcViewPager$OnPageChangeListener;)V

    invoke-virtual {p2, p1}, Lcom/agc/widget/viewpager/AgcViewPager;->setAdapter(Lcom/agc/widget/viewpager/AgcPagerAdapter;)V

    sget p1, Lcom/agc/Res$id;->lut_header_list:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mHeaderListView:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    new-instance p1, Lcom/agc/widget/lut/LutHeaderAdapter;

    invoke-direct {p1, p0}, Lcom/agc/widget/lut/LutHeaderAdapter;-><init>(Lcom/agc/widget/lut/LutHeaderAdapter$OnLutHeaderClickListener;)V

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutHeaderAdapter:Lcom/agc/widget/lut/LutHeaderAdapter;

    sget p1, Lcom/agc/Res$id;->agc_seek_bar:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mSeekBarView:Landroid/widget/SeekBar;

    const-string p2, "lib_lut_intensity_key"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, v0, v1}, Lcom/Utils/Pref;->getAuxProfilePrefDoubleValue(Ljava/lang/String;D)D

    move-result-wide p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, v0

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance p2, Lcom/agc/widget/lut/LutSelectorLayout$5;

    invoke-direct {p2, p0}, Lcom/agc/widget/lut/LutSelectorLayout$5;-><init>(Lcom/agc/widget/lut/LutSelectorLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/lut/LutSelectorLayout;Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/lut/LutSelectorLayout;->setLutPath(Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutFragmentAdapger;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/widget/lut/LutSelectorLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/LutSelectorLayout;->initData(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutHeaderAdapter;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutHeaderAdapter:Lcom/agc/widget/lut/LutHeaderAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/agc/widget/lut/LutSelectorLayout;)Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mIntensityChangeListener:Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/agc/widget/lut/LutSelectorLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    return-object p0
.end method

.method private initData(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/agc/net/NetworkUtil;->getLutList(Lcom/agc/net/OnNetworkListener;Z)V

    return-void
.end method

.method private setLutPath(Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/model/LutListModel$LutModel;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string v0, "lib_lut_id_key"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setAuxProfilePrefIntValue(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "lib_lut_key"

    invoke-static {p1, p2}, Lcom/Utils/Pref;->setAuxProfilePrefValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/agc/model/LutListModel;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    iget-object v1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/agc/widget/viewpager/AgcViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    const-string v0, "e"

    invoke-static {v0, p1}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LutSelectorLayout"

    invoke-static {v0, p1}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method public onSuccess(Lcom/agc/model/ResultModel;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/model/ResultModel<",
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mIvReset:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mIvRefresh:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mSeekBarView:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/agc/model/ResultModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutHeaderAdapter:Lcom/agc/widget/lut/LutHeaderAdapter;

    invoke-virtual {v0, p1}, Lcom/agc/widget/lut/LutHeaderAdapter;->setLutListModels(Ljava/util/List;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-virtual {p1}, Lcom/agc/widget/lut/LutFragmentAdapger;->getCount()I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLastSaveId:I

    if-eq p1, v0, :cond_5

    const/4 p1, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v4

    move v2, v1

    :goto_0
    iget-object v6, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/agc/model/LutListModel;

    invoke-virtual {v7}, Lcom/agc/model/LutListModel;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/agc/model/LutListModel;

    invoke-virtual {v7}, Lcom/agc/model/LutListModel;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/agc/model/LutListModel$LutModel;

    invoke-virtual {v7}, Lcom/agc/model/LutListModel$LutModel;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLastSaveId:I

    if-ne v8, v9, :cond_1

    if-ne v4, v0, :cond_1

    const/4 v3, 0x6

    if-le v6, v3, :cond_0

    move v5, v6

    :cond_0
    move v4, v2

    move-object v3, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/agc/model/LutListModel$LutModel;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/agc/model/LutListModel$LutModel;->getDownloadLutFile()Lcom/agc/model/LutFileModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/agc/model/LutFileModel;->getFilelink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/agc/net/NetworkUtil;->downloadLutFile(Ljava/lang/String;Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLastSaveId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/agc/widget/lut/LutSelectorLayout$6;

    invoke-direct {v1, p0}, Lcom/agc/widget/lut/LutSelectorLayout$6;-><init>(Lcom/agc/widget/lut/LutSelectorLayout;)V

    invoke-static {p1, v1}, Lcom/agc/net/NetworkUtil;->getLUTInfo(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V

    goto :goto_3

    :cond_5
    move v4, v0

    move v5, v4

    :goto_3
    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

    iget-object v1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/agc/widget/lut/LutFragmentAdapger;->setLutList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mHeaderListView:Lcom/agc/widget/lut/indicator/ViewPagerIndicator;

    iget-object v1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    iget-object v2, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutHeaderAdapter:Lcom/agc/widget/lut/LutHeaderAdapter;

    invoke-virtual {p1, v1, v2}, Lcom/agc/widget/lut/indicator/ViewPagerIndicator;->setAdapter(Lcom/agc/widget/viewpager/AgcViewPager;Lcom/agc/widget/lut/indicator/IndicatorAdapter;)V

    if-eq v4, v0, :cond_6

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-virtual {p1, v4, v5}, Lcom/agc/widget/lut/LutFragmentAdapger;->setScrollToPosition(II)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mViewPager:Lcom/agc/widget/viewpager/AgcViewPager;

    invoke-virtual {p1, v4}, Lcom/agc/widget/viewpager/AgcViewPager;->setCurrentItem(I)V

    :cond_6
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/widget/lut/LutSelectorLayout;->initData(Z)V

    :cond_0
    return-void
.end method

.method public setDownloadProgressListener(Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mLutPagerdapter:Lcom/agc/widget/lut/LutFragmentAdapger;

    invoke-virtual {v0, p1}, Lcom/agc/widget/lut/LutFragmentAdapger;->setDownloadProgressListener(Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V

    return-void
.end method

.method public setIntensityChangeListener(Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout;->mIntensityChangeListener:Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;

    return-void
.end method
