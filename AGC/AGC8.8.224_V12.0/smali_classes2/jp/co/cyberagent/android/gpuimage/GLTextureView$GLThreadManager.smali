.class Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

.field private glesDriverCheckComplete:Z

.field private glesVersion:I

.field private glesVersionCheckComplete:Z

.field private limitedGLESContexts:Z

.field private multipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1694
    const-string v0, "GLThreadManager"

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;

    .prologue
    .line 1693
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 1

    .prologue
    .line 1775
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->glesVersionCheckComplete:Z

    if-nez v0, :cond_0

    .line 1776
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->glesVersionCheckComplete:Z

    .line 1778
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1758
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->glesDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1759
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1760
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->glesVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1762
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->multipleGLESContextsAllowed:Z

    .line 1763
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1765
    :cond_0
    iget-boolean v3, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->multipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->limitedGLESContexts:Z

    .line 1770
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->glesDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1762
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1765
    goto :goto_1

    .line 1758
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .prologue
    .line 1739
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .line 1742
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1743
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1749
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->limitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1753
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1754
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->multipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .prologue
    .line 1700
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->access$1202(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;Z)Z

    .line 1701
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1702
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .line 1704
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    monitor-exit p0

    return-void

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1715
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-nez v1, :cond_2

    .line 1716
    :cond_0
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .line 1717
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1731
    :cond_1
    :goto_0
    return v0

    .line 1720
    :cond_2
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1721
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->multipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1728
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v0, :cond_3

    .line 1729
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;->eglOwner:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1731
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
