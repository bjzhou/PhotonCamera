.class public Lcom/google/vr/cardboard/EglReadyListener;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private volatile a:Ljavax/microedition/khronos/egl/EGLContext;

.field private volatile b:I

.field private volatile c:I

.field private final d:Ljava/lang/Object;

.field private volatile e:Ltre;

.field private final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public onEglReady()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/vr/cardboard/EglReadyListener;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/vr/cardboard/EglReadyListener;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    nop

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, p0, Lcom/google/vr/cardboard/EglReadyListener;->a:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    iget-object v1, p0, Lcom/google/vr/cardboard/EglReadyListener;->a:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Lcom/google/vr/cardboard/EglReadyListener;->a:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    if-ne v1, v2, :cond_2

    nop

    nop

    :cond_1
    const-string v1, "EglReadyListener"

    nop

    nop

    const-string v2, "Unable to obtain the application\'s OpenGL context."

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x1f02

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    const-string v1, "EglReadyListener"

    nop

    nop

    const-string v3, "Unable to determine the OpenGL major version."

    nop

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    nop

    nop

    nop

    :cond_3
    const/16 v3, 0x2e

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    nop

    nop

    if-gtz v3, :cond_4

    nop

    nop

    nop

    nop

    const-string v1, "EglReadyListener"

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Unable to determine the OpenGL major version."

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    nop

    nop

    nop

    :cond_4
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    nop

    nop

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-gez v1, :cond_5

    nop

    nop

    nop

    const-string v1, "EglReadyListener"

    nop

    nop

    nop

    const-string v3, "Unable to determine the OpenGL major version."

    nop

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    nop

    :cond_5
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v2, p0, Lcom/google/vr/cardboard/EglReadyListener;->c:I

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    new-array v1, v1, [I

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    const v3, 0x821e

    nop

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    aget v1, v1, v2

    nop

    iput v1, p0, Lcom/google/vr/cardboard/EglReadyListener;->b:I

    nop

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_2
    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_f
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
