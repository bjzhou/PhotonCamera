.class public Lcom/agc/widget/RotSeek;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static app:Lcom/agc/widget/RotSeek;

.field public static isoIndex:I


# instance fields
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
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "Auto,100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500,2600,2700,2800,2900,3000,3100,3200,6400,12800,25600,51200"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/RotSeek;->Values:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/agc/widget/RotSeek;->textsize:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/agc/widget/RotSeek;->textColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/agc/widget/RotSeek;->debug:Z

    const-class v2, Lcom/agc/widget/RotSeek;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/agc/widget/RotSeek;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/agc/widget/RotSeek;->scrollsubstract:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/agc/widget/RotSeek;->VISIBLE_ITEMS_INVIEW:I

    sput-object p0, Lcom/agc/widget/RotSeek;->app:Lcom/agc/widget/RotSeek;

    sput v0, Lcom/agc/widget/RotSeek;->isoIndex:I

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/RotSeek;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    return p0
.end method

.method public static synthetic access$002(Lcom/agc/widget/RotSeek;I)I
    .locals 0

    iput p1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    return p1
.end method

.method public static synthetic access$100(Lcom/agc/widget/RotSeek;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/widget/RotSeek;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/widget/RotSeek;->autoscroll:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/agc/widget/RotSeek;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/RotSeek;->autoscroll:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/agc/widget/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    return p0
.end method

.method public static synthetic access$320(Lcom/agc/widget/RotSeek;I)I
    .locals 1

    iget v0, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    return v0
.end method

.method public static synthetic access$400(Lcom/agc/widget/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    return p0
.end method

.method public static synthetic access$402(Lcom/agc/widget/RotSeek;I)I
    .locals 0

    iput p1, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    return p1
.end method

.method public static synthetic access$408(Lcom/agc/widget/RotSeek;)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    return v0
.end method

.method public static synthetic access$410(Lcom/agc/widget/RotSeek;)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    return v0
.end method

.method public static synthetic access$500(Lcom/agc/widget/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/RotSeek;->realMax:I

    return p0
.end method

.method public static synthetic access$600(Lcom/agc/widget/RotSeek;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/RotSeek;->realMin:I

    return p0
.end method

.method public static synthetic access$700(Lcom/agc/widget/RotSeek;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/RotSeek;->Values:[Ljava/lang/String;

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

    iput-object p1, p0, Lcom/agc/widget/RotSeek;->handler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p1, p0, Lcom/agc/widget/RotSeek;->textsize:I

    invoke-direct {p0, p1}, Lcom/agc/widget/RotSeek;->convertDpiToPixel(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/widget/RotSeek;->textsize:I

    iget p1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/RotSeek;->setProgress(IZ)V

    return-void
.end method

.method private switchalpha(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/16 p1, 0x1f

    return p1

    :pswitch_1
    const/16 p1, 0x3e

    return p1

    :pswitch_2
    const/16 p1, 0x5d

    return p1

    :pswitch_3
    const/16 p1, 0x7c

    return p1

    :pswitch_4
    const/16 p1, 0x9b

    return p1

    :pswitch_5
    const/16 p1, 0xba

    return p1

    :pswitch_6
    const/16 p1, 0xd9

    return p1

    :pswitch_7
    const/16 p1, 0xff

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public GetCurrentString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->Values:[Ljava/lang/String;

    iget v1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public IsAutoScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/RotSeek;->autoscroll:Z

    return v0
.end method

.method public IsMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    return v0
.end method

.method public SetStringValues([Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/agc/widget/RotSeek;->Values:[Ljava/lang/String;

    iget v0, p0, Lcom/agc/widget/RotSeek;->viewHeight:I

    div-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcom/agc/widget/RotSeek;->itemHeight:I

    array-length p1, p1

    mul-int/2addr p1, v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/agc/widget/RotSeek;->allItemsHeight:I

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/agc/widget/RotSeek;->realMin:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/agc/widget/RotSeek;->realMax:I

    invoke-virtual {p0}, Lcom/agc/widget/RotSeek;->redraw()V

    return-void
.end method

.method public checkifCurrentValueHasChanged()V
    .locals 2

    iget v0, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    iget v1, p0, Lcom/agc/widget/RotSeek;->realMin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/agc/widget/RotSeek;->itemHeight:I

    div-int/2addr v0, v1

    if-gez v0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    sput v0, Lcom/agc/widget/RotSeek;->isoIndex:I

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/agc/widget/RotSeek$1;

    invoke-direct {v1, p0}, Lcom/agc/widget/RotSeek$1;-><init>(Lcom/agc/widget/RotSeek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    return v0
.end method

.method public handleAutoScroll()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/agc/widget/RotSeek$2;

    invoke-direct {v1, p0}, Lcom/agc/widget/RotSeek$2;-><init>(Lcom/agc/widget/RotSeek;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ProReC"

    invoke-static {v0, p1}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/agc/widget/RotSeek;->textsize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/RotSeek;->Values:[Ljava/lang/String;

    array-length v2, v1

    const/16 v3, 0x1e

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    mul-int/lit8 v2, v2, -0x1

    :cond_0
    const/4 v4, 0x5

    if-gt v2, v4, :cond_1

    iget-object v4, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcom/agc/widget/RotSeek;->switchalpha(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/agc/widget/RotSeek;->itemHeight:I

    mul-int v4, v2, v0

    iget v5, p0, Lcom/agc/widget/RotSeek;->textsize:I

    add-int/2addr v4, v5

    iget v6, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    add-int/2addr v4, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v2, p0, Lcom/agc/widget/RotSeek;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v3}, Lcom/agc/widget/RotSeek;->convertDpiToPixel(I)F

    move-result v3

    sub-float v6, v2, v3

    iget v2, p0, Lcom/agc/widget/RotSeek;->textsize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v4, v2

    int-to-float v9, v2

    iget v2, p0, Lcom/agc/widget/RotSeek;->viewWidth:I

    add-int/lit8 v2, v2, -0x14

    int-to-float v8, v2

    iget-object v10, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    int-to-float v2, v4

    iget-object v3, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/agc/widget/RotSeek;->viewWidth:I

    int-to-float v0, v0

    invoke-direct {p0, v3}, Lcom/agc/widget/RotSeek;->convertDpiToPixel(I)F

    move-result v1

    sub-float v3, v0, v1

    iget v0, p0, Lcom/agc/widget/RotSeek;->viewHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/agc/widget/RotSeek;->itemHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget v0, p0, Lcom/agc/widget/RotSeek;->viewWidth:I

    int-to-float v5, v0

    iget-object v7, p0, Lcom/agc/widget/RotSeek;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-string p1, "pref_pro_key"

    invoke-static {p1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/agc/widget/RotSeek;->viewWidth:I

    iput p2, p0, Lcom/agc/widget/RotSeek;->viewHeight:I

    div-int/lit8 p1, p2, 0x10

    iput p1, p0, Lcom/agc/widget/RotSeek;->itemHeight:I

    iget-object p3, p0, Lcom/agc/widget/RotSeek;->Values:[Ljava/lang/String;

    array-length p3, p3

    mul-int/2addr p3, p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/agc/widget/RotSeek;->allItemsHeight:I

    neg-int p4, p2

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p4, v0

    iput p4, p0, Lcom/agc/widget/RotSeek;->realMin:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/agc/widget/RotSeek;->realMax:I

    iget p1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/RotSeek;->setProgress(IZ)V

    invoke-virtual {p0}, Lcom/agc/widget/RotSeek;->redraw()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/agc/widget/RotSeek;->startY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/agc/widget/RotSeek;->getSignedDistance(II)I

    move-result v0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_1

    const/16 v1, -0xb

    if-ge v0, v1, :cond_2

    :cond_1
    iput-boolean v2, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    iget-object v0, p0, Lcom/agc/widget/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_2
    iget-boolean v0, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/agc/widget/RotSeek;->startY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/agc/widget/RotSeek;->getSignedDistance(II)I

    move-result v0

    iput v0, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    iget v1, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, -0x1

    iget v2, p0, Lcom/agc/widget/RotSeek;->realMax:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/agc/widget/RotSeek;->realMin:I

    if-le v0, v2, :cond_3

    iput v1, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    invoke-virtual {p0}, Lcom/agc/widget/RotSeek;->checkifCurrentValueHasChanged()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/widget/RotSeek;->startY:I

    :cond_3
    iget-boolean v1, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    if-eqz p1, :cond_a

    iput-boolean v1, p0, Lcom/agc/widget/RotSeek;->sliderMoving:Z

    iget-object p1, p0, Lcom/agc/widget/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_5
    iget p1, p0, Lcom/agc/widget/RotSeek;->distanceInPixelFromLastSwipe:I

    if-lez p1, :cond_6

    const/16 v0, 0xa

    if-gt p1, v0, :cond_7

    :cond_6
    if-gez p1, :cond_8

    const/16 v0, -0xa

    if-ge p1, v0, :cond_8

    :cond_7
    iput-boolean v2, p0, Lcom/agc/widget/RotSeek;->autoscroll:Z

    invoke-virtual {p0}, Lcom/agc/widget/RotSeek;->handleAutoScroll()V

    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    invoke-virtual {p0, p1, v2}, Lcom/agc/widget/RotSeek;->setProgress(IZ)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/agc/widget/RotSeek;->startY:I

    iput-boolean v1, p0, Lcom/agc/widget/RotSeek;->autoscroll:Z

    move v1, v2

    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/agc/widget/RotSeek;->redraw()V

    return v1
.end method

.method public redraw()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    sput p1, Lcom/agc/widget/RotSeek;->isoIndex:I

    iput p1, p0, Lcom/agc/widget/RotSeek;->currentValue:I

    iget v0, p0, Lcom/agc/widget/RotSeek;->itemHeight:I

    mul-int/2addr p1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/agc/widget/RotSeek;->realMin:I

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/agc/widget/RotSeek;->currentPosToDraw:I

    invoke-virtual {p0}, Lcom/agc/widget/RotSeek;->redraw()V

    iget-object p1, p0, Lcom/agc/widget/RotSeek;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/agc/widget/RotSeek;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/agc/widget/RotSeek$3;

    invoke-direct {p2, p0}, Lcom/agc/widget/RotSeek$3;-><init>(Lcom/agc/widget/RotSeek;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
