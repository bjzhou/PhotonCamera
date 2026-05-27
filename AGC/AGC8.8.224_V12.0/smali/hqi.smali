.class public final Lhqi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public f:Ljavax/microedition/khronos/egl/EGLConfig;

.field public g:[Ljavax/microedition/khronos/egl/EGLConfig;

.field public h:Ljavax/microedition/khronos/egl/EGLContext;

.field public i:Ljavax/microedition/khronos/egl/EGLSurface;

.field public j:Ljavax/microedition/khronos/egl/EGL10;

.field public k:Ljavax/microedition/khronos/opengles/GL10;

.field public l:Lhqh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/stabilization/warp/PixelBuffer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhqi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhqi;->c:I

    iput p2, p0, Lhqi;->b:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lhqi;->d:Ljava/lang/String;

    return-void
.end method
