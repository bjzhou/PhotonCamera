.class public Lcom/custom/focus/RotSeek;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private FocusValue:[F

.field private final TAG:Ljava/lang/String;

.field private final VISIBLE_ITEMS_INVIEW:I

.field private Values:[Ljava/lang/String;

.field private allItemsHeight:I

.field private autoscroll:Z

.field private currentPosToDraw:I

.field private currentValue:I

.field private final debug:Z

.field private distanceInPixelFromLastSwipe:I

.field private handler:Landroid/os/Handler;

.field private itemHeight:I

.field private mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private realMax:I

.field private realMin:I

.field private final scrollsubstract:I

.field private sliderMoving:Z

.field private startY:I

.field private final textColor:I

.field private textsize:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/custom/focus/RotSeek;->textsize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/custom/focus/RotSeek;->textColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/custom/focus/RotSeek;->debug:Z

    const-class v1, Lcom/custom/focus/RotSeek;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/custom/focus/RotSeek;->TAG:Ljava/lang/String;

    iput v0, p0, Lcom/custom/focus/RotSeek;->scrollsubstract:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/custom/focus/RotSeek;->VISIBLE_ITEMS_INVIEW:I

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->setFocusString()V

    invoke-direct {p0, p1, p2}, Lcom/custom/focus/RotSeek;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/custom/focus/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    return p0
.end method

.method public static synthetic access$002(Lcom/custom/focus/RotSeek;I)I
    .locals 0

    iput p1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    return p1
.end method

.method public static synthetic access$100(Lcom/custom/focus/RotSeek;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/custom/focus/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/custom/focus/RotSeek;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/custom/focus/RotSeek;->autoscroll:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/custom/focus/RotSeek;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/custom/focus/RotSeek;->autoscroll:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/custom/focus/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    return p0
.end method

.method public static synthetic access$320(Lcom/custom/focus/RotSeek;I)I
    .locals 1

    iget v0, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    return v0
.end method

.method public static synthetic access$400(Lcom/custom/focus/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    return p0
.end method

.method public static synthetic access$402(Lcom/custom/focus/RotSeek;I)I
    .locals 0

    iput p1, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    return p1
.end method

.method public static synthetic access$408(Lcom/custom/focus/RotSeek;)I
    .locals 2

    iget v0, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    return v0
.end method

.method public static synthetic access$410(Lcom/custom/focus/RotSeek;)I
    .locals 2

    iget v0, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    return v0
.end method

.method public static synthetic access$500(Lcom/custom/focus/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/custom/focus/RotSeek;->realMax:I

    return p0
.end method

.method public static synthetic access$600(Lcom/custom/focus/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/custom/focus/RotSeek;->realMin:I

    return p0
.end method

.method public static synthetic access$700(Lcom/custom/focus/RotSeek;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/custom/focus/RotSeek;->Values:[Ljava/lang/String;

    return-object p0
.end method

.method private convertDpiToPixel(I)F
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private getSignedDistance(II)I
    .locals 0

    sub-int/2addr p1, p2

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/custom/focus/RotSeek;->handler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p1, p0, Lcom/custom/focus/RotSeek;->textsize:I

    invoke-direct {p0, p1}, Lcom/custom/focus/RotSeek;->convertDpiToPixel(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/custom/focus/RotSeek;->textsize:I

    iget p1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/custom/focus/RotSeek;->setProgress(IZ)V

    return-void
.end method

.method private switchAlpha(I)I
    .locals 0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x19

    return p1
.end method


# virtual methods
.method public GetCurrentString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->Values:[Ljava/lang/String;

    iget v1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public IsAutoScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/custom/focus/RotSeek;->autoscroll:Z

    return v0
.end method

.method public IsMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    return v0
.end method

.method public SetStringValues([Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/custom/focus/RotSeek;->Values:[Ljava/lang/String;

    iget v0, p0, Lcom/custom/focus/RotSeek;->viewHeight:I

    div-int/lit8 v1, v0, 0x8

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/custom/focus/RotSeek;->itemHeight:I

    array-length p1, p1

    mul-int/2addr p1, v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/custom/focus/RotSeek;->allItemsHeight:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/custom/focus/RotSeek;->realMin:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/custom/focus/RotSeek;->realMax:I

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->redraw()V

    return-void
.end method

.method public checkifCurrentValueHasChanged()V
    .locals 2

    iget v0, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    iget v1, p0, Lcom/custom/focus/RotSeek;->realMin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/custom/focus/RotSeek;->itemHeight:I

    div-int/2addr v0, v1

    if-gez v0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/custom/focus/RotSeek$1;

    invoke-direct {v1, p0}, Lcom/custom/focus/RotSeek$1;-><init>(Lcom/custom/focus/RotSeek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getLensInfoFocusDistance()F
    .locals 3

    const-string v0, "pref_minimum_focus_distance_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v0

    invoke-static {}, Lagc/Agc;->isXiaomi13Pro()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x413a0be8

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x41eb4b4a

    return v0

    :cond_2
    invoke-virtual {v0}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x4112c9fc

    return v0

    :cond_3
    invoke-virtual {v0}, Lcom/agc/Camera;->getMinimumFocusDistance()F

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    return v0
.end method

.method public handleAutoScroll()V
    .locals 2

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/custom/focus/RotSeek$2;

    invoke-direct {v1, p0}, Lcom/custom/focus/RotSeek$2;-><init>(Lcom/custom/focus/RotSeek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "pref_manual_focus_slider_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/custom/focus/RotSeek;->textsize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/custom/focus/RotSeek;->Values:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x1e

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    iget v3, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    sub-int/2addr v3, v0

    if-gez v3, :cond_0

    mul-int/lit8 v3, v3, -0x1

    :cond_0
    if-gt v3, v1, :cond_1

    iget-object v5, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Lcom/custom/focus/RotSeek;->switchAlpha(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/custom/focus/RotSeek;->itemHeight:I

    mul-int v5, v3, v0

    iget v6, p0, Lcom/custom/focus/RotSeek;->textsize:I

    add-int/2addr v5, v6

    iget v7, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    add-int/2addr v5, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v3, p0, Lcom/custom/focus/RotSeek;->viewWidth:I

    int-to-float v3, v3

    invoke-direct {p0, v4}, Lcom/custom/focus/RotSeek;->convertDpiToPixel(I)F

    move-result v4

    sub-float v7, v3, v4

    iget v3, p0, Lcom/custom/focus/RotSeek;->textsize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v5, v3

    int-to-float v10, v3

    iget v3, p0, Lcom/custom/focus/RotSeek;->viewWidth:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v9, v3

    iget-object v11, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_1

    int-to-float v3, v5

    iget-object v4, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/custom/focus/RotSeek;->viewWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v4}, Lcom/custom/focus/RotSeek;->convertDpiToPixel(I)F

    move-result v1

    sub-float v3, v0, v1

    iget v0, p0, Lcom/custom/focus/RotSeek;->viewHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/custom/focus/RotSeek;->itemHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget v0, p0, Lcom/custom/focus/RotSeek;->viewWidth:I

    int-to-float v5, v0

    iget-object v7, p0, Lcom/custom/focus/RotSeek;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/custom/focus/RotSeek;->viewWidth:I

    iput p2, p0, Lcom/custom/focus/RotSeek;->viewHeight:I

    div-int/lit8 p1, p2, 0x14

    iput p1, p0, Lcom/custom/focus/RotSeek;->itemHeight:I

    iget-object p3, p0, Lcom/custom/focus/RotSeek;->Values:[Ljava/lang/String;

    array-length p3, p3

    mul-int/2addr p3, p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/custom/focus/RotSeek;->allItemsHeight:I

    neg-int p4, p2

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p4, v0

    iput p4, p0, Lcom/custom/focus/RotSeek;->realMin:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/custom/focus/RotSeek;->realMax:I

    iget p1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/custom/focus/RotSeek;->setProgress(IZ)V

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->redraw()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/custom/focus/RotSeek;->startY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/custom/focus/RotSeek;->getSignedDistance(II)I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_1

    const/16 v1, -0xb

    if-ge v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    iget-object v0, p0, Lcom/custom/focus/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_2
    iget-boolean v0, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/custom/focus/RotSeek;->startY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/custom/focus/RotSeek;->getSignedDistance(II)I

    move-result v0

    iput v0, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    iget v1, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, -0x1

    iget v2, p0, Lcom/custom/focus/RotSeek;->realMax:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/custom/focus/RotSeek;->realMin:I

    if-le v0, v2, :cond_3

    iput v1, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->checkifCurrentValueHasChanged()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/custom/focus/RotSeek;->startY:I

    :cond_3
    iget-boolean v1, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    if-eqz p1, :cond_b

    iput-boolean v1, p0, Lcom/custom/focus/RotSeek;->sliderMoving:Z

    iget-object p1, p0, Lcom/custom/focus/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_5
    iget p1, p0, Lcom/custom/focus/RotSeek;->distanceInPixelFromLastSwipe:I

    if-lez p1, :cond_6

    const/16 v0, 0xa

    if-gt p1, v0, :cond_7

    :cond_6
    if-gez p1, :cond_8

    const/16 v0, -0xa

    if-ge p1, v0, :cond_8

    :cond_7
    iput-boolean v2, p0, Lcom/custom/focus/RotSeek;->autoscroll:Z

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->handleAutoScroll()V

    :cond_8
    iget p1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    invoke-virtual {p0, p1, v2}, Lcom/custom/focus/RotSeek;->setProgress(IZ)V

    const-string p1, "pref_focus_toggle_mode_key"

    invoke-static {p1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/asv/FocusView;->execCommands(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/Globals;->onReInit()V

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/custom/focus/RotSeek;->startY:I

    iput-boolean v1, p0, Lcom/custom/focus/RotSeek;->autoscroll:Z

    :cond_b
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->redraw()V

    return v1
.end method

.method public redraw()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFocusString()V
    .locals 11

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->getLensInfoFocusDistance()F

    move-result v0

    const-string v1, "pref_focus_values_number_key"

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v0, v2

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "Auto"

    const-string v4, "Inf"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :cond_0
    if-ge v6, v1, :cond_1

    add-float/2addr v5, v0

    aput v5, v3, v6

    int-to-double v7, v1

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v7

    add-int/lit8 v6, v6, 0x1

    int-to-double v7, v6

    mul-double/2addr v9, v7

    double-to-int v7, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v6, v1, :cond_0

    :cond_1
    iput-object v3, p0, Lcom/custom/focus/RotSeek;->FocusValue:[F

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/custom/focus/RotSeek;->Values:[Ljava/lang/String;

    iput v4, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/custom/focus/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(IZ)V
    .locals 3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/custom/focus/RotSeek;->FocusValue:[F

    add-int/lit8 v2, p1, -0x2

    aget v1, v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/custom/slider;->setFocusSeek(IF)V

    iput p1, p0, Lcom/custom/focus/RotSeek;->currentValue:I

    iget v1, p0, Lcom/custom/focus/RotSeek;->itemHeight:I

    mul-int/2addr p1, v1

    div-int/2addr v1, v0

    add-int/2addr p1, v1

    iget v0, p0, Lcom/custom/focus/RotSeek;->realMin:I

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/custom/focus/RotSeek;->currentPosToDraw:I

    invoke-virtual {p0}, Lcom/custom/focus/RotSeek;->redraw()V

    iget-object p1, p0, Lcom/custom/focus/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/custom/focus/RotSeek;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/custom/focus/RotSeek$3;

    invoke-direct {p2, p0}, Lcom/custom/focus/RotSeek$3;-><init>(Lcom/custom/focus/RotSeek;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
