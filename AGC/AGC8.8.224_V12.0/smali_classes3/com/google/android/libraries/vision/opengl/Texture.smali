.class public Lcom/google/android/libraries/vision/opengl/Texture;
.super Ljava/lang/Object;


# instance fields
.field private generated:Z

.field private height:I

.field private name:I

.field private type:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/16 v0, 0xde1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->generated:Z

    invoke-static {p3}, Lcom/google/android/libraries/vision/opengl/Texture;->createTexture(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    iput p3, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    iput p1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    iput p2, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->generated:Z

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->generated:Z

    iput p4, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    iput p3, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    iput p1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    iput p2, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->generated:Z

    const/16 v1, 0xde1

    iput v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    iget v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    invoke-static {v1}, Lcom/google/android/libraries/vision/opengl/Texture;->createTexture(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/libraries/vision/opengl/Texture;->generated:Z

    iget v2, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    invoke-static {v1, v0, p1, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method private static createTexture(I)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    const/16 v3, 0x2601

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget p0, v1, v2

    return p0
.end method


# virtual methods
.method public allocate()V
    .locals 9

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    iget v4, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public bind()V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public delete()V
    .locals 3

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    if-ltz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/libraries/vision/opengl/Texture;->generated:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    iput v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->height:I

    return v0
.end method

.method public getName()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->name:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->width:I

    return v0
.end method

.method public unbind()V
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/vision/opengl/Texture;->type:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method
