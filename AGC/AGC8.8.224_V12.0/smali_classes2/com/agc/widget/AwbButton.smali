.class public Lcom/agc/widget/AwbButton;
.super Lcom/agc/widget/OptionButton;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/AwbButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/AwbButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/AwbButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/widget/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Lcom/agc/widget/AwbButton;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x6

    iput v0, p0, Lcom/agc/widget/OptionButton;->iconPadding:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/agc/widget/OptionButton$OptionButtonItem;

    new-instance v8, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v4, "agc_awb_off"

    const-string v5, "Disable"

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    new-instance v3, Lcom/agc/widget/OptionButton$OptionButtonItem;

    const-string v4, "agc_awb_on"

    const-string v5, "AWB"

    const/4 v6, 0x1

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/agc/widget/OptionButton$OptionButtonItem;-><init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/agc/widget/OptionButton;->items:Ljava/util/List;

    const-string v0, "pref_awb_switch_key"

    invoke-static {v0, v2}, Lcom/Utils/Pref;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    iput v0, p0, Lcom/agc/widget/OptionButton;->selectedIndex:I

    if-lez v0, :cond_0

    move v2, v6

    :cond_0
    invoke-virtual {p0, v2}, Lcom/agc/widget/OptionButton;->setChecked(Z)V

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    invoke-static {}, Lcom/Utils/EventBus;->getShared()Lcom/Utils/EventBus;

    move-result-object v0

    const-string v1, "shot_mode"

    invoke-virtual {v0, v1, p0}, Lcom/Utils/EventBus;->register(Ljava/lang/String;Ljava/util/Observer;)V

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

.method public onClickPopItem(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/agc/widget/OptionButton;->onClickPopItem(I)V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "pref_awb_switch_key"

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    invoke-static {}, Lcom/Utils/EventBus;->getShared()Lcom/Utils/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/Utils/EventBus;->unregister(Ljava/util/Observer;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3

    check-cast p2, Ljava/lang/String;

    const-string p1, "NIGHT_SIGHT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "PORTRAIT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PHOTO"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
