.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"


# instance fields
.field private final fragmentShader:Ljava/lang/String;

.field private glAttribPosition:I

.field private glAttribTextureCoordinate:I

.field private glProgId:I

.field private glUniformTexture:I

.field private isInitialized:Z

.field private outputHeight:I

.field private outputWidth:I

.field private final runOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw:Ljava/util/LinkedList;

    .line 69
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->vertexShader:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->fragmentShader:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 290
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v2, "\\A"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 291
    .local v0, "s":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private final init()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 75
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 76
    return-void
.end method

.method public static loadShader(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 277
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 279
    .local v2, "ims":Ljava/io/InputStream;
    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "re":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "ims":Ljava/io/InputStream;
    .end local v3    # "re":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->isInitialized:Z

    .line 95
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 96
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDestroy()V

    .line 97
    return-void
.end method

.method public getAttribPosition()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribPosition:I

    return v0
.end method

.method public getAttribTextureCoordinate()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribTextureCoordinate:I

    return v0
.end method

.method public getOutputHeight()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->outputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->outputWidth:I

    return v0
.end method

.method public getProgram()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    return v0
.end method

.method public getUniformTexture()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glUniformTexture:I

    return v0
.end method

.method public ifNeedInit()V
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->init()V

    .line 91
    :cond_0
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->isInitialized:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 109
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 110
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 111
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->isInitialized:Z

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 118
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 121
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 122
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 123
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 124
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 125
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDrawArraysPre()V

    .line 128
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 129
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 130
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 131
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method protected onDrawArraysPre()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->vertexShader:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->fragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    .line 80
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribPosition:I

    .line 81
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glUniformTexture:I

    .line 82
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->glAttribTextureCoordinate:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->isInitialized:Z

    .line 84
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 103
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->outputWidth:I

    .line 104
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->outputHeight:I

    .line 105
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 269
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runPendingOnDrawTasks()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 139
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    return-void
.end method

.method protected setFloat(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "floatValue"    # F

    .prologue
    .line 184
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$2;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$2;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;IF)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method protected setFloatArray(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 224
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$6;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$6;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method protected setFloatVec2(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 194
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$3;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$3;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method protected setFloatVec3(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 204
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$4;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$4;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method protected setFloatVec4(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 214
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method protected setInteger(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "intValue"    # I

    .prologue
    .line 174
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$1;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;II)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method protected setPoint(ILandroid/graphics/PointF;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 234
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;

    invoke-direct {v0, p0, p2, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method protected setUniformMatrix3f(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # [F

    .prologue
    .line 247
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$8;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$8;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method protected setUniformMatrix4f(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # [F

    .prologue
    .line 258
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$9;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method
