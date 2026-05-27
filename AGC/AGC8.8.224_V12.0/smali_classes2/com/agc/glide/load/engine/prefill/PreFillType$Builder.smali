.class public Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/prefill/PreFillType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private weight:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    iput p1, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->width:I

    iput p2, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->height:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/agc/glide/load/engine/prefill/PreFillType;
    .locals 5

    new-instance v0, Lcom/agc/glide/load/engine/prefill/PreFillType;

    iget v1, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->width:I

    iget v2, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->height:I

    iget-object v3, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/agc/glide/load/engine/prefill/PreFillType;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    return-object v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->config:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setWeight(I)Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/agc/glide/load/engine/prefill/PreFillType$Builder;->weight:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weight must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
