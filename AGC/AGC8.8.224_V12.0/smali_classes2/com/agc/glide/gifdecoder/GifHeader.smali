.class public Lcom/agc/glide/gifdecoder/GifHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NETSCAPE_LOOP_COUNT_DOES_NOT_EXIST:I = -0x1

.field public static final NETSCAPE_LOOP_COUNT_FOREVER:I


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/agc/glide/gifdecoder/GifFrame;

.field frameCount:I

.field final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/gifdecoder/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->gct:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->status:I

    iput v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->frameCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->loopCount:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->status:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method
