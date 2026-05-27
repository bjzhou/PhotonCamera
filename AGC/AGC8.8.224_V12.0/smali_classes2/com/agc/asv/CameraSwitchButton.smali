.class public Lcom/agc/asv/CameraSwitchButton;
.super Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private baseLineY:F

.field private isOriginalSwitch:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;"
        }
    .end annotation
.end field

.field private onCheckedChange:Landroid/view/View$OnClickListener;

.field private outOnClickListener:Landroid/view/View$OnClickListener;

.field private paint:Landroid/graphics/Paint;

.field private size:F

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    iput-object p2, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    iput p2, p0, Lcom/agc/asv/CameraSwitchButton;->baseLineY:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    new-instance v0, Lcom/agc/asv/CameraSwitchButton$1;

    invoke-direct {v0, p0}, Lcom/agc/asv/CameraSwitchButton$1;-><init>(Lcom/agc/asv/CameraSwitchButton;)V

    iput-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->onCheckedChange:Landroid/view/View$OnClickListener;

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/agc/asv/CameraSwitchView;->showInViewFinder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p2, v1

    :cond_1
    iput-boolean p2, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->onCheckedChange:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/agc/asv/CameraSwitchButton;->init(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/asv/CameraSwitchButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/agc/asv/CameraSwitchButton;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/CameraSwitchButton;->outOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/asv/CameraSwitchButton;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/asv/CameraSwitchButton;->setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$302(Lcom/agc/asv/CameraSwitchButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    return-object p1
.end method

.method private setBackground(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p1, v0}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p1, v1}, Lcom/agc/util/AgcUtil;->dp2sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/agc/asv/CameraSwitchButton;->baseLineY:F

    const-string v0, "agc_multiple_button_bg"

    invoke-direct {p0, p1, v0}, Lcom/agc/asv/CameraSwitchButton;->setBackground(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->onCheckedChange:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/agc/Camera;->isFront()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/agc/Camera;->getZoomScale()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const-string v0, "front_back_switch_button_animation"

    invoke-direct {p0, p1, v0}, Lcom/agc/asv/CameraSwitchButton;->setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCouple()V
    .locals 2

    iget-boolean v0, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/Utils/Lens;->isFront()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "front_back_switch_button_animation"

    invoke-direct {p0, v0, v1}, Lcom/agc/asv/CameraSwitchButton;->setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDecouple()V
    .locals 2

    iget-boolean v0, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/Utils/Lens;->isFront()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "front_back_switch_button_animation"

    invoke-direct {p0, v0, v1}, Lcom/agc/asv/CameraSwitchButton;->setImageDrawable(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/agc/asv/CameraSwitchButton;->isOriginalSwitch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/asv/CameraSwitchButton;->text:Ljava/lang/String;

    iget v1, p0, Lcom/agc/asv/CameraSwitchButton;->size:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/agc/asv/CameraSwitchButton;->baseLineY:F

    iget-object v3, p0, Lcom/agc/asv/CameraSwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/widget/OptionButton;->vibrate(Landroid/content/Context;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "pref_screen_is_first"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_lens_id"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pref_switch_long_action_key"

    const-string v3, "lib_group_default_key"

    invoke-static {v0, v3}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "pref_screen_extra"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "color_settings_awb_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "noise_model_screen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v1, "color_settings_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :goto_0
    move v1, v6

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v0, "awb_settings_title"

    goto :goto_2

    :pswitch_1
    const-string v0, "lib_patch_profile_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    if-ge v0, v1, :cond_4

    const-string v0, "lib_group_global_key"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_profile_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/agc/widget/PatchButton;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_2
    const-string v0, "noise_model_title"

    goto :goto_2

    :pswitch_3
    const-string v0, "color_settings_title"

    :goto_2
    invoke-static {v0}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_3
    const-string v0, "Settings"

    :goto_4
    const-string v1, "pref_screen_title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4173fcd4 -> :sswitch_3
        -0xe5350b9 -> :sswitch_2
        0x314afe67 -> :sswitch_1
        0x7c0107cc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchButton;->outOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
