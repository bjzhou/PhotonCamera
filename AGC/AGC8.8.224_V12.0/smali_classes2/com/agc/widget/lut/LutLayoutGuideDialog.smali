.class public Lcom/agc/widget/lut/LutLayoutGuideDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 1

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/widget/lut/LutLayoutGuideDialog;->initView(Landroid/content/Context;Landroid/view/View;Lcom/agc/model/LutListModel$LutModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 1

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/agc/widget/lut/LutLayoutGuideDialog;->initView(Landroid/content/Context;Landroid/view/View;Lcom/agc/model/LutListModel$LutModel;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/view/View;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "agc_layout_guilde_dialog"

    invoke-static {v1}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget v1, Lcom/agc/Res$id;->ll_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3}, Lcom/agc/model/LutListModel$LutModel;->isAgcPlayerLink()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/agc/Res$id;->iv_guide:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/agc/model/LutListModel$LutModel;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/agc/Res;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "agc_lut_holder"

    invoke-static {v4}, Lcom/agc/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2}, Lcom/agc/glide/Glide;->with(Landroid/view/View;)Lcom/agc/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/agc/glide/RequestManager;->load(Ljava/lang/String;)Lcom/agc/glide/RequestBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/agc/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/agc/glide/RequestBuilder;

    invoke-virtual {p3, v2}, Lcom/agc/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/agc/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "ic_agcplayer_link"

    invoke-static {p3}, Lcom/agc/Res;->getDrawableID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    sget p3, Lcom/agc/Res$id;->tv_guide:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v2, "Try our new App"

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget p3, Lcom/agc/Res$id;->tv_tap:I

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v2, Lcom/agc/widget/lut/LutLayoutGuideDialog$1;

    invoke-direct {v2, p0}, Lcom/agc/widget/lut/LutLayoutGuideDialog$1;-><init>(Lcom/agc/widget/lut/LutLayoutGuideDialog;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz p2, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x1

    aget v5, v3, v4

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, p1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    aget v1, v3, v4

    int-to-double v7, v1

    sub-double/2addr v5, v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v7, p2

    sub-double/2addr v5, v7

    double-to-int p2, v5

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    aget p2, v3, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_3
    if-eqz v2, :cond_4

    const/4 p1, -0x1

    invoke-virtual {v2, p1, p1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    return-void
.end method
