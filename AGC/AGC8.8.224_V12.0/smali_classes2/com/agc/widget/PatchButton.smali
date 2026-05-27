.class public Lcom/agc/widget/PatchButton;
.super Lcom/agc/widget/OptionButton;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/PatchButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getCurrentTitle()Ljava/lang/String;
    .locals 2

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/agc/widget/PatchButton;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTitle(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/Utils/Lens;->getAuxKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/agc/Preference;->getProfileTitle(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch_profile_name"

    invoke-static {v1}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "%1$d"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :cond_0
    return-object p0
.end method

.method private startPreference(I)V
    .locals 4

    sget v0, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int v0, p1, v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    const-string v3, "pref_screen_is_first"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v2, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    if-ge p1, v2, :cond_1

    const-string v2, "global_agc_title"

    invoke-static {v2}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/agc/widget/PatchButton;->getTitle(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "pref_screen_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    const-string v3, "pref_screen_extra"

    if-ge p1, v2, :cond_2

    const-string p1, "lib_group_global_key"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    const-string p1, "lib_group_default_key"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "pref_lens_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_profile_id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateOverridePref()V
    .locals 3

    const-string v0, "pref_camera_hdr_plus_override_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hdrnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "hdrnet_enabled"

    invoke-static {v2, v1}, Lcom/Utils/Pref;->setBooleanValue(Ljava/lang/String;Z)V

    if-nez v1, :cond_0

    const-string v1, "pref_camera_hdr_plus_key"

    invoke-static {v1, v0}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/OptionButton;->showAccessoryButtons:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v3, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v4, "agc_disable"

    invoke-static {v4}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "agc_patch_disable"

    const/4 v6, 0x0

    invoke-direct {v3, p0, v5, v4, v6}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v4, "agc_patch_ka"

    const-string v5, "Ka"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v4, "agc_patch_ka_day"

    const/4 v7, 0x2

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move v1, v6

    :goto_0
    invoke-static {}, Lcom/agc/Patch;->getProfileCount()I

    move-result v2

    const-string v3, "lib_profile_show_key_p"

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    const-string v2, "agc_lib_patcher"

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agc_patch_profile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    new-instance v4, Lcom/agc/widget/OptionButton$OptionButtonItem;

    invoke-static {v1}, Lcom/agc/widget/PatchButton;->getTitle(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    add-int/2addr v7, v1

    invoke-direct {v4, p0, v2, v5, v7}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "lib_patch_profile_key"

    invoke-static {v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    sget v3, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    iput v6, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    :cond_3
    iget v1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v6

    :goto_2
    invoke-virtual {p0, v0}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    invoke-static {}, Lcom/Utils/EventBus;->getShared()Lcom/Utils/EventBus;

    move-result-object v0

    const-string v1, "swipe_down"

    invoke-virtual {v0, v1, p0}, Lcom/Utils/EventBus;->register(Ljava/lang/String;Ljava/util/Observer;)V

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/widget/OptionButton;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    iget p1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    return-void
.end method

.method public onClickAccessoryButton()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    invoke-direct {p0, v0}, Lcom/agc/widget/PatchButton;->startPreference(I)V

    invoke-super {p0}, Lcom/agc/widget/OptionButton;->onClickAccessoryButton()V

    return-void
.end method

.method public onClickPopItem(I)V
    .locals 2

    sget v0, Lcom/Globals;->sHdr_process:I

    if-lez v0, :cond_0

    const-string p1, "hdr_processing"

    invoke-static {p1}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "d"

    invoke-static {v0, p1}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    sget v0, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch_profile_key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/agc/widget/PatchButton;->updateOverridePref()V

    iget p1, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    invoke-static {}, Lcom/Globals;->onRestart()V

    return-void
.end method

.method public onLongClickPopItem(I)V
    .locals 2

    sget v0, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/agc/widget/PatchButton;->startPreference(I)V

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch_profile_key_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    iget v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    :cond_1
    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onLongClickPopItem(I)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "swipe_down"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/agc/widget/PatchButton$1;

    invoke-direct {p1, p0}, Lcom/agc/widget/PatchButton$1;-><init>(Lcom/agc/widget/PatchButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
