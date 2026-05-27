.class Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;
.super Ljp/co/cyberagent/android/gpuimage/GLTextureView$BaseConfigChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected alphaSize:I

.field protected blueSize:I

.field protected depthSize:I

.field protected greenSize:I

.field protected redSize:I

.field protected stencilSize:I

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

.field private value:[I


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;IIIIII)V
    .locals 4
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .prologue
    const/4 v3, 0x1

    .line 824
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->this$0:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 825
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$BaseConfigChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;[I)V

    .line 830
    new-array v0, v3, [I

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->value:[I

    .line 831
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->redSize:I

    .line 832
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->greenSize:I

    .line 833
    iput p4, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->blueSize:I

    .line 834
    iput p5, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->alphaSize:I

    .line 835
    iput p6, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->depthSize:I

    .line 836
    iput p7, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->stencilSize:I

    .line 837
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 860
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->value:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->value:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 863
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 841
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v4, p3, v13

    .line 842
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 843
    .local v9, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 844
    .local v12, "s":I
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->depthSize:I

    if-lt v9, v1, :cond_0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->stencilSize:I

    if-lt v12, v1, :cond_0

    .line 845
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 846
    .local v11, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 847
    .local v10, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 848
    .local v8, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 849
    .local v7, "a":I
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->redSize:I

    if-ne v11, v1, :cond_0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->greenSize:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->blueSize:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;->alphaSize:I

    if-ne v7, v1, :cond_0

    .line 854
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v9    # "d":I
    .end local v10    # "g":I
    .end local v11    # "r":I
    .end local v12    # "s":I
    :goto_1
    return-object v4

    .line 841
    .restart local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v9    # "d":I
    .restart local v12    # "s":I
    :cond_0
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 854
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v9    # "d":I
    .end local v12    # "s":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
