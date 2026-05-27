.class public Lcom/agc/widget/lut/LutSelectedDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/agc/net/NetworkUtil$DownloadProgressListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field isDownloading:Z

.field private mHandler:Landroid/os/Handler;

.field private mLutSelectorLayout:Lcom/agc/widget/lut/LutSelectorLayout;

.field private mProgressBar:Landroid/view/View;

.field private mTvIntensity:Landroid/widget/TextView;

.field private mTvProgress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->isDownloading:Z

    new-instance v0, Lcom/agc/widget/lut/LutSelectedDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/agc/widget/lut/LutSelectedDialog$1;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/lut/LutSelectedDialog;->initView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->isDownloading:Z

    new-instance v0, Lcom/agc/widget/lut/LutSelectedDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/agc/widget/lut/LutSelectedDialog$1;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/lut/LutSelectedDialog;->initView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mTvIntensity:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mTvProgress:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/agc/widget/lut/LutSelectedDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mProgressBar:Landroid/view/View;

    return-object p0
.end method

.method private initView(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "agc_lut_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/agc/widget/lut/LutSelectedDialog$2;

    invoke-direct {v0, p0}, Lcom/agc/widget/lut/LutSelectedDialog$2;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/agc/Res$id;->agc_process_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mProgressBar:Landroid/view/View;

    sget v0, Lcom/agc/Res$id;->agc_tv_process:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mTvProgress:Landroid/widget/TextView;

    sget v0, Lcom/agc/Res$id;->agc_lut_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/lut/LutSelectorLayout;

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mLutSelectorLayout:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-virtual {p1, p0}, Lcom/agc/widget/lut/LutSelectorLayout;->setDownloadProgressListener(Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mLutSelectorLayout:Lcom/agc/widget/lut/LutSelectorLayout;

    new-instance v0, Lcom/agc/widget/lut/LutSelectedDialog$3;

    invoke-direct {v0, p0}, Lcom/agc/widget/lut/LutSelectedDialog$3;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;)V

    invoke-virtual {p1, v0}, Lcom/agc/widget/lut/LutSelectorLayout;->setIntensityChangeListener(Lcom/agc/widget/lut/LutSelectorLayout$IntensityChangeListener;)V

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mProgressBar:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/agc/Res$id;->tv_value_hint:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mTvIntensity:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    aget v3, v0, v2

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mLutSelectorLayout:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    aget v0, v0, v2

    sub-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr v1, p2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDownloadError()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mProgressBar:Landroid/view/View;

    new-instance v1, Lcom/agc/widget/lut/LutSelectedDialog$7;

    invoke-direct {v1, p0}, Lcom/agc/widget/lut/LutSelectedDialog$7;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadStart()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mProgressBar:Landroid/view/View;

    new-instance v1, Lcom/agc/widget/lut/LutSelectedDialog$4;

    invoke-direct {v1, p0}, Lcom/agc/widget/lut/LutSelectedDialog$4;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mProgressBar:Landroid/view/View;

    new-instance v0, Lcom/agc/widget/lut/LutSelectedDialog$6;

    invoke-direct {v0, p0}, Lcom/agc/widget/lut/LutSelectedDialog$6;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectedDialog;->mTvProgress:Landroid/widget/TextView;

    new-instance v1, Lcom/agc/widget/lut/LutSelectedDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/agc/widget/lut/LutSelectedDialog$5;-><init>(Lcom/agc/widget/lut/LutSelectedDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
