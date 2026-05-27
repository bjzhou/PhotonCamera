.class public Lcom/agc/menu/Blur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/menu/Blur$Callback;
    }
.end annotation


# static fields
.field private static final SCALE:F = 0.4f


# instance fields
.field private blurThread:Ljava/lang/Thread;

.field private callback:Lcom/agc/menu/Blur$Callback;

.field private context:Landroid/content/Context;

.field private inBitmap:Landroid/graphics/Bitmap;

.field private radius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/agc/menu/Blur;->initThread()V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/menu/Blur;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/Blur;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/menu/Blur;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/Blur;->inBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/agc/menu/Blur;)F
    .locals 0

    iget p0, p0, Lcom/agc/menu/Blur;->radius:F

    return p0
.end method

.method public static synthetic access$300(Lcom/agc/menu/Blur;Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/menu/Blur;->getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/agc/menu/Blur;)Lcom/agc/menu/Blur$Callback;
    .locals 0

    iget-object p0, p0, Lcom/agc/menu/Blur;->callback:Lcom/agc/menu/Blur$Callback;

    return-object p0
.end method

.method private getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p2

    invoke-static {p1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "have not called setParams() before call execute()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initThread()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/agc/menu/Blur$1;

    invoke-direct {v1, p0}, Lcom/agc/menu/Blur$1;-><init>(Lcom/agc/menu/Blur;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/agc/menu/Blur;->blurThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/agc/menu/Blur;->blurThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method public setParams(Lcom/agc/menu/Blur$Callback;Landroid/content/Context;Landroid/graphics/Bitmap;F)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/Blur;->callback:Lcom/agc/menu/Blur$Callback;

    iput-object p2, p0, Lcom/agc/menu/Blur;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/agc/menu/Blur;->inBitmap:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/agc/menu/Blur;->radius:F

    return-void
.end method
