.class public Lcom/agc/widget/FeatureButton;
.super Lcom/agc/widget/OptionButton;
.source "SourceFile"


# instance fields
.field private featureType:Ljava/lang/String;

.field private position:I

.field showGuideDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/FeatureButton;->position:I

    iput-boolean p1, p0, Lcom/agc/widget/FeatureButton;->showGuideDialog:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/FeatureButton;->position:I

    iput-boolean p1, p0, Lcom/agc/widget/FeatureButton;->showGuideDialog:Z

    return-void
.end method

.method private updatePatch()V
    .locals 6

    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    const-string v3, "lib_pref_tone_custom_key"

    const-string v4, "lib_pref_gamma_custom_key"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v3, v1

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lagc/Agc;->patch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lagc/Agc;->patchRestore(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 11

    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v1, "curve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    new-array v9, v1, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v10, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v2, "agc_curve"

    const-string v3, "Disable"

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v10, v9, v6

    new-instance v10, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const/4 v4, 0x1

    const v5, -0x103a92

    const-string v2, "agc_curve"

    const-string v3, "Enable"

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v10, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const-string v0, "pref_curve_enable_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    const-string v0, "pref_show_curve_button_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v6, v7

    :cond_0
    if-nez v6, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/agc/widget/FeatureButton;->updatePatch()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->setLongClickable(Z)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v2, "lut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    new-array v9, v1, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v10, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v2, "agc_lut_cube"

    const-string v3, "Disable"

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v10, v9, v6

    new-instance v10, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const/4 v4, 0x1

    const v5, -0x103a92

    const-string v2, "agc_lut_cube"

    const-string v3, "Enable"

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v10, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const-string v0, "lib_lut_id_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    move v6, v7

    :cond_4
    iput v6, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v0

    const-string v1, "show_lut_btn_guide"

    invoke-virtual {v0, v1, v7}, Lcom/agc/util/SpUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/agc/util/SpUtils;->save(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/agc/widget/FeatureButton$1;

    invoke-direct {v1, p0}, Lcom/agc/widget/FeatureButton$1;-><init>(Lcom/agc/widget/FeatureButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v2, "google"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    new-array v9, v1, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v10, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v2, "agc_google_lens_disabled"

    const-string v3, "Disable"

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v10, v9, v6

    new-instance v0, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v1, "agc_google_lens"

    const-string v2, "Enable"

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const-string v0, "camera.lens_toggle_enable"

    invoke-static {v0, v6}, Lcom/Utils/Pref;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    iput v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/agc/widget/OptionButton;->initAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/FeatureButton;->position:I

    const-string v0, "type"

    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "lut"

    iput-object p1, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/widget/OptionButton;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public onClickPopItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v1, "curve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    const-string v0, "pref_curve_enable_key"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/agc/widget/FeatureButton;->updatePatch()V

    :goto_0
    invoke-static {}, Lcom/Globals;->onRestart()V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v1, "lut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/hinnka/mycamera/agc/PhotonAgcBridge;->showLutSelectorBottomSheet(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object p1, p0

    :cond_2
    :goto_1
    new-instance v0, Lcom/agc/widget/lut/LutSelectedDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/agc/widget/lut/LutSelectedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lcom/agc/widget/FeatureButton$2;

    invoke-direct {p1, p0}, Lcom/agc/widget/FeatureButton$2;-><init>(Lcom/agc/widget/FeatureButton;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    const-string v0, "camera.lens_toggle_enable"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setBooleanValue(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public onLongClick()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/FeatureButton;->featureType:Ljava/lang/String;

    const-string v1, "curve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/agc/widget/cure/CureSettingDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/widget/cure/CureSettingDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/agc/widget/OptionButton;->onLongClick()Z

    move-result v0

    return v0
.end method
