.class public Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field static final KEY_WATERMARK_MODEL:Ljava/lang/String; = "KEY_WATERMARK_MODEL_"

.field static final KEY_WATERMARK_TIME:Ljava/lang/String; = "KEY_WATERMARK_TIME_"

.field static final TYPE_ART:I = 0x2

.field static final TYPE_HASSELBLAD:I = 0x1

.field static final TYPE_LEICA:I = 0x0

.field static final TYPE_TIME:I = 0x3

.field static final pref_watermark_bg_key:Ljava/lang/String; = "pref_watermark_bg_key"

.field static final pref_watermark_title_key:Ljava/lang/String; = "pref_watermark_title_key"


# instance fields
.field private mCbModel:Landroid/widget/CheckBox;

.field private mCbTime:Landroid/widget/CheckBox;

.field private mLayoutSpring:Landroid/view/View;

.field private mTvCustom:Landroid/widget/TextView;

.field private rbSpring01:Landroid/widget/RadioButton;

.field private rbSpring02:Landroid/widget/RadioButton;

.field private rbSpring03:Landroid/widget/RadioButton;

.field private rb_spring_black:Landroid/widget/RadioButton;

.field private rb_spring_white:Landroid/widget/RadioButton;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initView()V
    .locals 5

    sget v0, Lcom/agc/Res$id;->rl_time:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->rl_model:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->rl_custom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/agc/Res$id;->cb_time:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbTime:Landroid/widget/CheckBox;

    sget v0, Lcom/agc/Res$id;->cb_model:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbModel:Landroid/widget/CheckBox;

    sget v0, Lcom/agc/Res$id;->tv_custom:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mTvCustom:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbTime:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_WATERMARK_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/agc/util/SpUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbModel:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_WATERMARK_MODEL_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/agc/util/SpUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mTvCustom:Landroid/widget/TextView;

    const-string v1, "pref_watermark_title_key"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/agc/Res$id;->rl_spring:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mLayoutSpring:Landroid/view/View;

    iget v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/agc/Res$id;->rg_spring:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget v0, Lcom/agc/Res$id;->rb_spring_white:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rb_spring_white:Landroid/widget/RadioButton;

    sget v0, Lcom/agc/Res$id;->rb_spring_black:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rb_spring_black:Landroid/widget/RadioButton;

    sget v0, Lcom/agc/Res$id;->rb_spring01:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rbSpring01:Landroid/widget/RadioButton;

    sget v0, Lcom/agc/Res$id;->rb_spring02:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rbSpring02:Landroid/widget/RadioButton;

    sget v0, Lcom/agc/Res$id;->rb_spring03:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rbSpring03:Landroid/widget/RadioButton;

    const-string v0, "pref_watermark_bg_key"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rbSpring03:Landroid/widget/RadioButton;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rbSpring02:Landroid/widget/RadioButton;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rbSpring01:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rb_spring_black:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->rb_spring_white:Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onModelClick()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbModel:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbModel:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_WATERMARK_MODEL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Z)V

    return-void
.end method

.method private onTimeClick()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbTime:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mCbTime:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_WATERMARK_TIME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    sget p1, Lcom/agc/Res$id;->rb_spring_white:I

    const-string v0, "pref_watermark_bg_key"

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    sget p1, Lcom/agc/Res$id;->rb_spring_black:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    sget p1, Lcom/agc/Res$id;->rb_spring01:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x5

    goto :goto_0

    :cond_2
    sget p1, Lcom/agc/Res$id;->rb_spring02:I

    if-ne p2, p1, :cond_3

    const/4 p1, 0x6

    goto :goto_0

    :cond_3
    sget p1, Lcom/agc/Res$id;->rb_spring03:I

    if-ne p2, p1, :cond_4

    const/4 p1, 0x7

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->rl_time:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->onTimeClick()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->rl_model:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->onModelClick()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/agc/Res$id;->rl_custom:I

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/agc/widget/dialog/watermark/CustomWatermarkActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mTvCustom:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "watermark"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/Utils/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_watermark_title_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->mTvCustom:Landroid/widget/TextView;

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    iput p1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->type:I

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/Utils/Pref;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/agc/Res$layout;->agc_layout_watermark_item:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->initView()V

    return-void
.end method
