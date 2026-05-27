.class public Lcom/agc/widget/MenuButton;
.super Lcom/agc/menu/SectorMenuButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/MenuButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/menu/SectorMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/MenuButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/menu/SectorMenuButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/MenuButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private setListener(Lcom/agc/menu/SectorMenuButton;)V
    .locals 1

    new-instance v0, Lcom/agc/widget/MenuButton$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/MenuButton$1;-><init>(Lcom/agc/widget/MenuButton;)V

    invoke-virtual {p1, v0}, Lcom/agc/menu/SectorMenuButton;->setButtonEventListener(Lcom/agc/menu/ButtonEventListener;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 10

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->startAngle:F

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->endAngle:F

    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonSizePx:I

    invoke-virtual {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->subButtonSizePx:I

    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->buttonGapPx:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;->sp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonTextSize:I

    invoke-virtual {p0, p1, v0}, Lcom/agc/menu/SectorMenuButton;->sp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->subButtonTextSize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->mainButtonTextColor:I

    iput v0, p0, Lcom/agc/menu/SectorMenuButton;->subButtonTextColor:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "agc_patch_profile_1"

    const-string v2, "agc_patch_profile_2"

    const-string v3, "agc_patch_profile_3"

    const-string v4, "agc_patch_profile_4"

    const-string v5, "agc_patch_profile_5"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/Utils/Lens;->getFilteredCameras()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_1

    if-nez v4, :cond_0

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/agc/Camera;

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    aget-object v7, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p1, v6, v7}, Lcom/agc/menu/ButtonData;->buildIconButton(Landroid/content/Context;IF)Lcom/agc/menu/ButtonData;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/agc/menu/ButtonData;->setIsIconButton(Z)V

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/agc/Camera;->getZoomScale()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v3

    const-string v5, "%.1fX"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v6, v8}, Lcom/agc/menu/ButtonData;->setText([Ljava/lang/String;)V

    const v5, 0x7f060698

    invoke-virtual {v6, p1, v5}, Lcom/agc/menu/ButtonData;->setBackgroundColorId(Landroid/content/Context;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/agc/menu/SectorMenuButton;->setButtonDatas(Ljava/util/List;)Lcom/agc/menu/SectorMenuButton;

    invoke-direct {p0, p0}, Lcom/agc/widget/MenuButton;->setListener(Lcom/agc/menu/SectorMenuButton;)V

    return-void
.end method
