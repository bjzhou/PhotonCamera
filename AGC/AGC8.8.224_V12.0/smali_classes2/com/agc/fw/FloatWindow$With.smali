.class public Lcom/agc/fw/FloatWindow$With;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/fw/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "With"
.end annotation


# instance fields
.field private alpha:F

.field private autoAlign:Z

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private height:I

.field private isDesktopWindow:Z

.field private modality:Z

.field private moveAble:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/agc/fw/FloatWindow$With;->alpha:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/agc/fw/FloatWindow$With;->height:I

    iput v0, p0, Lcom/agc/fw/FloatWindow$With;->width:I

    iput-object p1, p0, Lcom/agc/fw/FloatWindow$With;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/fw/FloatWindow$With;->contentView:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/fw/FloatWindow$With;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow$With;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/fw/FloatWindow$With;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/fw/FloatWindow$With;->autoAlign:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/agc/fw/FloatWindow$With;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/fw/FloatWindow$With;->modality:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/agc/fw/FloatWindow$With;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow$With;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/agc/fw/FloatWindow$With;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/fw/FloatWindow$With;->moveAble:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/agc/fw/FloatWindow$With;)F
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow$With;->alpha:F

    return p0
.end method

.method public static synthetic access$600(Lcom/agc/fw/FloatWindow$With;)I
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow$With;->height:I

    return p0
.end method

.method public static synthetic access$700(Lcom/agc/fw/FloatWindow$With;)I
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow$With;->width:I

    return p0
.end method

.method public static synthetic access$800(Lcom/agc/fw/FloatWindow$With;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/fw/FloatWindow$With;->isDesktopWindow:Z

    return p0
.end method


# virtual methods
.method public create()Lcom/agc/fw/FloatWindow;
    .locals 2

    new-instance v0, Lcom/agc/fw/FloatWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/agc/fw/FloatWindow;-><init>(Lcom/agc/fw/FloatWindow$With;Lcom/agc/fw/FloatWindow$1;)V

    return-object v0
.end method

.method public setAlpha(F)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow$With;->alpha:F

    return-object p0
.end method

.method public setAutoAlign(Z)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/fw/FloatWindow$With;->autoAlign:Z

    return-object p0
.end method

.method public setDeskTopWindow(Z)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/fw/FloatWindow$With;->isDesktopWindow:Z

    return-object p0
.end method

.method public setHeight(I)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow$With;->height:I

    return-object p0
.end method

.method public setModality(Z)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/fw/FloatWindow$With;->modality:Z

    return-object p0
.end method

.method public setMoveAble(Z)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput-boolean p1, p0, Lcom/agc/fw/FloatWindow$With;->moveAble:Z

    return-object p0
.end method

.method public setStartLocation(II)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    return-object p0
.end method

.method public setWidth(I)Lcom/agc/fw/FloatWindow$With;
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow$With;->width:I

    return-object p0
.end method
