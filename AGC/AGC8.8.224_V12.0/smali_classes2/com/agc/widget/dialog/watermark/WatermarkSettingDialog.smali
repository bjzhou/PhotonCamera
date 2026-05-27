.class public Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final pref_watermark_type_key:Ljava/lang/String; = "pref_watermark_type_key"


# instance fields
.field private mItemArt:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

.field private mItemHasselblad:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

.field private mItemLeica:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

.field private mItemTime:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

.field private mTvArt:Landroid/widget/TextView;

.field private mTvHasselblad:Landroid/widget/TextView;

.field private mTvLeica:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/agc/Res$layout;->agc_watermark_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/agc/Res$id;->iv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/agc/Res$id;->iv_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/agc/Res$id;->tv_leica:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvLeica:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    sget v1, Lcom/agc/Res$id;->tv_hasselblad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvHasselblad:Landroid/widget/TextView;

    sget v1, Lcom/agc/Res$id;->tv_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvArt:Landroid/widget/TextView;

    sget v1, Lcom/agc/Res$id;->tv_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvLeica:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvHasselblad:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvArt:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/agc/Res$id;->item_leica:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemLeica:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->setType(I)V

    sget v1, Lcom/agc/Res$id;->item_hasselblad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemHasselblad:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    invoke-virtual {v1, v2}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->setType(I)V

    sget v1, Lcom/agc/Res$id;->item_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemArt:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->setType(I)V

    sget v1, Lcom/agc/Res$id;->item_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    iput-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemTime:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;->setType(I)V

    const-string v1, "pref_watermark_type_key"

    invoke-static {v1, v3}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvTime:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvArt:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvHasselblad:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvLeica:Landroid/widget/TextView;

    :goto_0
    invoke-direct {p0, v1}, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->onTitleClick(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x157

    invoke-static {p1, v1}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTitleClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvLeica:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvHasselblad:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvArt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemLeica:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x8

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemHasselblad:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemArt:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->mItemTime:Lcom/agc/widget/dialog/watermark/WatermarkSettingItem;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_watermark_type_key"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->iv_back:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_leica:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_hasselblad:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_art:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/agc/Res$id;->tv_time:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/agc/Res$id;->iv_info:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/agc/widget/dialog/watermark/AboutWatermarkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/agc/widget/dialog/watermark/WatermarkSettingDialog;->onTitleClick(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
