.class public final Ldzx;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# instance fields
.field public b:Ljavax/microedition/khronos/egl/EGLConfig;

.field public c:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public d:Ljavax/microedition/khronos/egl/EGLContext;

.field public e:Ljavax/microedition/khronos/egl/EGLSurface;

.field public f:Ljavax/microedition/khronos/egl/EGL10;

.field public g:Ljavax/microedition/khronos/opengles/GL10;

.field public volatile h:Z

.field public final i:Landroid/os/Handler;

.field public final j:Ldzw;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldzx;->a:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Ldzw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldzx;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldzx;->k:Ljava/lang/Object;

    new-instance v0, Ldrh;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Ldrh;-><init>(Ldzx;I)V

    iput-object v0, p0, Ldzx;->l:Ljava/lang/Runnable;

    iput-object p2, p0, Ldzx;->i:Landroid/os/Handler;

    iput-object p3, p0, Ldzx;->j:Ldzw;

    new-instance p3, Ldgd;

    const/16 v0, 0xe

    invoke-direct {p3, p0, p1, v0}, Ldgd;-><init>(Ldzx;Landroid/graphics/SurfaceTexture;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_0
    new-instance p3, Ldrh;

    const/16 v0, 0xf

    invoke-direct {p3, p1, v0}, Ldrh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :goto_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
