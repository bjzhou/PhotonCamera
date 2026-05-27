.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageFilterGroup.java"


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private frameBufferTextures:[I

.field private frameBuffers:[I

.field private final glCubeBuffer:Ljava/nio/FloatBuffer;

.field private final glTextureBuffer:Ljava/nio/FloatBuffer;

.field private final glTextureFlipBuffer:Ljava/nio/FloatBuffer;

.field private mergedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;>;"
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>()V

    .line 62
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    .line 63
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    .line 69
    :goto_0
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    .line 72
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->CUBE:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    sget-object v1, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)[F

    move-result-object v0

    .line 80
    .local v0, "flipTexture":[F
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureFlipBuffer:Ljava/nio/FloatBuffer;

    .line 83
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureFlipBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    return-void

    .line 66
    .end local v0    # "flipTexture":[F
    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->updateMergedFilters()V

    goto :goto_0
.end method

.method private destroyFramebuffers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    array-length v0, v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 122
    iput-object v3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    .line 124
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 126
    iput-object v3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V
    .locals 1
    .param p1, "aFilter"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->updateMergedFilters()V

    goto :goto_0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getMergedFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 112
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->destroyFramebuffers()V

    .line 113
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 114
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->destroy()V

    goto :goto_0

    .line 116
    .end local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    :cond_0
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDestroy()V

    .line 117
    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 10
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const v9, 0x8d40

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 187
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->runPendingOnDrawTasks()V

    .line 188
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    if-nez v5, :cond_1

    .line 216
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 192
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 193
    .local v4, "size":I
    move v3, p1

    .line 194
    .local v3, "previousTexture":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 195
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 196
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_4

    const/4 v2, 0x1

    .line 197
    .local v2, "isNotLast":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 198
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    aget v5, v5, v1

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 199
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 202
    :cond_2
    if-nez v1, :cond_5

    .line 203
    invoke-virtual {v0, v3, p2, p3}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 210
    :goto_2
    if-eqz v2, :cond_3

    .line 211
    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 212
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    aget v3, v5, v1

    .line 194
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isNotLast":Z
    :cond_4
    move v2, v6

    .line 196
    goto :goto_1

    .line 204
    .restart local v2    # "isNotLast":Z
    :cond_5
    add-int/lit8 v5, v4, -0x1

    if-ne v1, v5, :cond_7

    .line 205
    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_6

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureFlipBuffer:Ljava/nio/FloatBuffer;

    :goto_3
    invoke-virtual {v0, v3, v7, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    goto :goto_3

    .line 207
    :cond_7
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->glTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v5, v7}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_2
.end method

.method public onInit()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 101
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 102
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->ifNeedInit()V

    goto :goto_0

    .line 104
    .end local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 139
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->destroyFramebuffers()V

    .line 143
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 144
    .local v10, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 145
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 144
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 149
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 150
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    .line 151
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    .line 153
    const/4 v9, 0x0

    :goto_1
    add-int/lit8 v0, v10, -0x1

    if-ge v9, v0, :cond_2

    .line 154
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 155
    const/4 v0, 0x1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 156
    const/16 v0, 0xde1

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 157
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 159
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 161
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 163
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 165
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 168
    const v0, 0x8d40

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBuffers:[I

    aget v1, v1, v9

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 169
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->frameBufferTextures:[I

    aget v3, v3, v9

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 172
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 173
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 176
    :cond_2
    return-void
.end method

.method public updateMergedFilters()V
    .locals 4

    .prologue
    .line 232
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    if-nez v2, :cond_1

    .line 254
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    if-nez v2, :cond_3

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    .line 243
    :goto_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 244
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    instance-of v2, v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;

    if-eqz v2, :cond_4

    move-object v2, v0

    .line 245
    check-cast v2, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->updateMergedFilters()V

    .line 246
    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;

    .end local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->getMergedFilters()Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 249
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 239
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;>;"
    :cond_3
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 252
    .restart local v0    # "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    :cond_4
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->mergedFilters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
