.class Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;
.super Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GLTextureView;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Z)V
    .locals 8
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 881
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;->this$0:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 882
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;IIIIII)V

    .line 883
    return-void

    :cond_0
    move v6, v5

    .line 882
    goto :goto_0
.end method
