.class public Lcom/agc/asv/WB;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/WB$WBType;
    }
.end annotation


# instance fields
.field private wbType:Lcom/agc/asv/WB$WBType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    iput-object v0, p0, Lcom/agc/asv/WB;->wbType:Lcom/agc/asv/WB$WBType;

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    iput-object p2, p0, Lcom/agc/asv/WB;->wbType:Lcom/agc/asv/WB$WBType;

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    iput-object p2, p0, Lcom/agc/asv/WB;->wbType:Lcom/agc/asv/WB$WBType;

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p2, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    iput-object p2, p0, Lcom/agc/asv/WB;->wbType:Lcom/agc/asv/WB$WBType;

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->init(Landroid/content/Context;)V

    return-void
.end method

.method private updateType(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/agc/asv/WB$1;->$SwitchMap$com$agc$asv$WB$WBType:[I

    iget-object v2, p0, Lcom/agc/asv/WB;->wbType:Lcom/agc/asv/WB$WBType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "drawable"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_show_lb"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_show_lw"

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_huika_lb"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_huika_lw"

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_auto_lb"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "agc_auto_lw"

    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public UpdateUi(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/asv/WB;->updateType(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->UpdateUi(Z)V

    return-void
.end method

.method public setWBModel(Lcom/agc/asv/WBModel;)V
    .locals 1

    iget-object v0, p1, Lcom/agc/asv/WBModel;->wbType:Lcom/agc/asv/WB$WBType;

    iput-object v0, p0, Lcom/agc/asv/WB;->wbType:Lcom/agc/asv/WB$WBType;

    iget-boolean p1, p1, Lcom/agc/asv/WBModel;->isChecked:Z

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->UpdateUi(Z)V

    return-void
.end method

.method public setWbChecked(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/asv/WB;->UpdateUi(Z)V

    return-void
.end method
