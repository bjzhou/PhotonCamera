.class public Lcom/agc/widget/dialog/watermark/AboutWatermarkActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/agc/Res$layout;->activity_about_watermark:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "c_181818"

    invoke-static {v0}, Lcom/agc/Res;->getColorID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/Utils/StatusBarUtil;->setColorNoTranslucent(Landroid/app/Activity;I)V

    sget p1, Lcom/agc/Res$id;->iv_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/agc/widget/dialog/watermark/AboutWatermarkActivity$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/dialog/watermark/AboutWatermarkActivity$1;-><init>(Lcom/agc/widget/dialog/watermark/AboutWatermarkActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
