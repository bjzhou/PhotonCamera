.class public Lcom/agc/widget/lut/LutBtnGuideDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/lut/LutBtnGuideDialog;->initView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/lut/LutBtnGuideDialog;->initView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "agc_btn_guilde_dialog"

    invoke-static {v1}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget v1, Lcom/agc/Res$id;->iv_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/agc/Res$id;->tv_tap:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/agc/widget/lut/LutBtnGuideDialog$1;

    invoke-direct {v3, p0}, Lcom/agc/widget/lut/LutBtnGuideDialog$1;-><init>(Lcom/agc/widget/lut/LutBtnGuideDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz p2, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    aget v7, v4, v6

    if-eqz v7, :cond_0

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-lez v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, p1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    aget v5, v4, v6

    sub-int/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    aget v1, v4, v2

    int-to-double v1, v1

    sub-double/2addr v7, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    sub-double/2addr v7, v1

    double-to-int v1, v7

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    if-eqz v3, :cond_1

    const/4 p1, -0x1

    invoke-virtual {v3, p1, p1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
