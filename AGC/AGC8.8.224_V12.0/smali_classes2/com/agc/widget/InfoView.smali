.class public Lcom/agc/widget/InfoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SHADOW_COLOR:I = -0x777778

.field private static final DEFAULT_SHADOW_RADIUS:F = 2.0f

.field private static final DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_TEXT_SIZE_SP:F = 12.0f

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static defaultViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/agc/widget/InfoView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isStyleEnabled:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/agc/widget/InfoView;->defaultViewRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/agc/widget/InfoView;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/agc/widget/InfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/widget/InfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/agc/widget/InfoView;->isStyleEnabled:Z

    invoke-direct {p0, p1}, Lcom/agc/widget/InfoView;->initView(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/agc/widget/InfoView;->updateVisibility()V

    return-void
.end method

.method private addTextViewToLayout()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private configureTextView()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v0, p0, Lcom/agc/widget/InfoView;->isStyleEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    const v2, -0x777778

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private createTextView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    return-void
.end method

.method private static getDefaultView()Lcom/agc/widget/InfoView;
    .locals 1

    sget-object v0, Lcom/agc/widget/InfoView;->defaultViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/InfoView;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/InfoView;->createTextView(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/agc/widget/InfoView;->configureTextView()V

    invoke-direct {p0}, Lcom/agc/widget/InfoView;->addTextViewToLayout()V

    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/agc/widget/InfoView;->getDefaultView()Lcom/agc/widget/InfoView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v0, p0}, Lcom/agc/widget/InfoView;->showText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showText(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/widget/InfoView;->updateTextSafely(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/agc/widget/InfoView;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;-><init>(Lcom/agc/widget/InfoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateTextSafely(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateVisibility()V
    .locals 1

    invoke-static {}, Lcom/agc/AdvancedSettings;->isShowAFData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/InfoView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showText$0$com-agc-widget-InfoView(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/InfoView;->updateTextSafely(Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/agc/widget/InfoView;->defaultViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/agc/widget/InfoView;->getDefaultView()Lcom/agc/widget/InfoView;

    move-result-object v0

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/agc/widget/InfoView;->defaultViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/InfoView;->clear()V

    return-void
.end method

.method public refreshVisibility()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/InfoView;->updateVisibility()V

    return-void
.end method

.method public setStyleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/InfoView;->isStyleEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/agc/widget/InfoView;->isStyleEnabled:Z

    invoke-direct {p0}, Lcom/agc/widget/InfoView;->configureTextView()V

    :cond_0
    return-void
.end method
