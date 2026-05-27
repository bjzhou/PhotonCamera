.class public Lcom/agc/asv/CameraSwitchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public isShowFront:Z

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/asv/CameraSwitchView;->isShowFront:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/asv/CameraSwitchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean p2, p0, Lcom/agc/asv/CameraSwitchView;->isShowFront:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/asv/CameraSwitchView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 12

    iget-boolean v0, p0, Lcom/agc/asv/CameraSwitchView;->isShowFront:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/agc/asv/CameraSwitchView;->showInViewFinder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/asv/CameraSwitchView;->list:Ljava/util/ArrayList;

    invoke-static {}, Lcom/Utils/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v9, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/agc/Camera;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pref_lens_title_short_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/Utils/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/agc/Camera;->getZoomScale()F

    new-instance v11, Lcom/agc/asv/CameraMultipleModel;

    invoke-virtual {v10}, Lcom/agc/Camera;->isFront()Z

    move-result v4

    invoke-virtual {v10}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Lcom/agc/Camera;->getZoomScale()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v6, v2

    invoke-virtual {v10}, Lcom/agc/Camera;->isFront()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "agc_flip"

    :cond_3
    invoke-static {v3}, Lcom/agc/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v7

    move-object v2, v11

    move-object v3, v10

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/agc/asv/CameraMultipleModel;-><init>(Lcom/agc/Camera;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v10}, Lcom/agc/Camera;->isFront()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/agc/asv/CameraSwitchView;->isShowFront:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/agc/asv/CameraSwitchView;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/agc/asv/CameraSwitchView;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/agc/asv/CameraSwitchView;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    const-string v0, "agc_camera_multiple_bg"

    invoke-static {v0}, Lcom/agc/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    sget v0, Lcom/agc/Res$layout;->agc_mutiple_window:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "agc_multiple_list_view"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/agc/asv/CameraMultipleAdapter;

    iget-object v2, p0, Lcom/agc/asv/CameraSwitchView;->list:Ljava/util/ArrayList;

    invoke-static {}, Lcom/agc/asv/CameraSwitchView;->showInViewFinder()Z

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Lcom/agc/asv/CameraMultipleAdapter;-><init>(Ljava/util/ArrayList;ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/agc/asv/CameraSwitchView$1;

    invoke-direct {p1, p0, v1}, Lcom/agc/asv/CameraSwitchView$1;-><init>(Lcom/agc/asv/CameraSwitchView;Lcom/agc/asv/CameraMultipleAdapter;)V

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static showInViewFinder()Z
    .locals 1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object p2, p0, Lcom/agc/asv/CameraSwitchView;->list:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    mul-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
