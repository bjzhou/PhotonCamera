.class public final Lqid;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lqhy;

.field private final b:Lqjx;

.field private final c:Z

.field private final d:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Lqhy;Lqjx;Landroidx/wear/ambient/AmbientMode$AmbientController;Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqid;->b:Lqjx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lqid;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p4, p0, Lqid;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqid;->a:Lqhy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lqjf;
    .locals 20

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const-string v1, "GLContexts"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    const-string v3, "Context: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Wanted "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    const-string v3, "GLContexts"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

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
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Lqid;->b:Lqjx;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v2, "Failed to create GLRoot: "

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "Unexpected error while creating GLRoot: "

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "EGL Error: eglInitialize failed: "

    nop

    nop

    nop

    :try_start_0
    iget-object v3, v1, Lqid;->b:Lqjx;

    nop

    iget-object v4, v1, Lqid;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    new-instance v5, Lqfd;

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    invoke-direct {v5, v6, v6}, Lqfd;-><init>(II)V

    iget-boolean v7, v1, Lqid;->c:Z

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    invoke-static {v8}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v15

    nop

    nop

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    if-eq v15, v9, :cond_e

    nop

    nop

    nop

    sget-object v9, Lqjk;->a:[I

    nop

    monitor-enter v9

    nop
    :try_end_0
    .catch Lqhj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v10, Lqjk;->a:[I

    nop

    nop

    nop

    nop

    aget v11, v10, v8

    nop

    if-nez v11, :cond_2

    nop

    nop

    nop

    invoke-static {v15, v10, v8, v10, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_1

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance v0, Lqhj;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lqjk;->c()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lqhj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :cond_2
    :goto_1a
    monitor-exit v9

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-array v2, v6, [I

    nop

    nop

    new-array v14, v6, [Landroid/opengl/EGLConfig;

    nop

    const/16 v9, 0xf

    nop

    nop

    nop

    new-array v10, v9, [I

    nop

    nop

    fill-array-data v10, :array_0

    const/16 v16, 0x1

    nop

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    const/4 v11, 0x0

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v9, v15

    nop

    nop

    move-object v12, v14

    nop

    nop

    nop

    move-object/from16 v18, v14

    nop

    nop

    move/from16 v14, v16

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    nop

    move-object v15, v2

    nop

    nop

    nop

    move/from16 v16, v17

    nop

    nop

    nop

    nop

    invoke-static/range {v9 .. v16}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v9

    nop

    if-eqz v9, :cond_d

    nop

    aget v2, v2, v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    aget-object v14, v18, v8

    nop

    const/16 v2, 0x3098

    nop

    nop

    nop

    nop

    nop

    const/16 v9, 0x3038

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    nop

    nop

    iget v10, v3, Lqjx;->b:I

    nop

    nop

    const/16 v11, 0x30fc

    nop

    nop

    nop

    filled-new-array {v2, v10, v11, v6, v9}, [I

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    :cond_3
    iget v10, v3, Lqjx;->b:I

    nop

    filled-new-array {v2, v10, v9}, [I

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    nop

    nop

    move-object/from16 v15, v19

    nop

    nop

    nop

    nop

    nop

    invoke-static {v15, v14, v10, v2, v8}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v13

    nop

    nop

    if-eqz v13, :cond_b

    nop

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    if-eq v13, v2, :cond_b

    nop

    nop

    nop

    invoke-virtual {v5}, Lqfe;->b()I

    move-result v2

    nop

    nop

    nop

    invoke-virtual {v5}, Lqfe;->a()I

    move-result v10

    nop

    nop

    const/16 v11, 0x3057

    nop

    nop

    nop

    const/16 v12, 0x3056

    nop

    nop

    filled-new-array {v11, v2, v12, v10, v9}, [I

    move-result-object v2

    nop

    nop

    invoke-static {v15, v14, v2, v8}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v12

    nop

    nop

    nop

    nop

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    if-eq v12, v2, :cond_a

    nop

    invoke-static {v15, v12, v12, v13}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    if-eqz v7, :cond_4

    nop

    new-instance v2, Lful;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lful;-><init>()V

    invoke-static {v2}, Lcom/google/acmi/gldebug/GLDebug;->nativeEnableGLDebugInfos(Lcom/google/acmi/gldebug/GLDebug$OnGLDebugMessageJNIListener;)V

    :cond_4
    new-instance v2, Lqjg;

    nop

    nop

    nop

    const/16 v7, 0x1f02

    nop

    nop

    invoke-static {v7}, Landroid/opengl/GLES30;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v9, "\\s"

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    array-length v10, v9

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x3

    nop

    nop

    if-lt v10, v11, :cond_9

    nop

    nop

    nop

    nop

    nop

    aget-object v10, v9, v8

    nop

    nop

    nop

    nop

    const-string v11, "OpenGL"

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    if-eqz v10, :cond_9

    nop

    nop

    nop

    nop

    nop

    aget-object v10, v9, v6

    nop

    nop

    nop

    nop

    const-string v11, "ES"

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_9

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    aget-object v9, v9, v7

    nop

    nop

    const-string v10, "\\."

    nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    array-length v11, v10

    nop

    nop

    nop

    nop

    nop

    if-ne v11, v6, :cond_5

    nop

    nop

    nop

    nop

    aget-object v10, v10, v8

    nop

    nop

    nop

    nop

    const-string v11, "0"

    nop

    nop

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    :cond_5
    array-length v11, v10

    nop

    nop

    nop

    nop

    nop

    if-eq v11, v7, :cond_7

    nop

    nop

    const/4 v7, 0x3

    nop

    if-ne v11, v7, :cond_6

    nop

    nop

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    new-instance v0, Lqhj;

    nop

    nop

    nop

    const-string v2, "Unexpected GL version format \'"

    nop

    const-string v3, "\'!"

    nop

    nop

    nop

    nop

    invoke-static {v9, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lqhj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_2
    .catch Lqhj; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/opengl/GLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_1c
    :try_start_3
    aget-object v7, v10, v8

    nop

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    aget-object v6, v10, v6

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    nop

    nop

    new-instance v10, Lqjx;

    nop

    nop

    nop

    invoke-direct {v10, v7, v6}, Lqjx;-><init>(II)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lqhj; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/opengl/GLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v4, v4, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lqhe;

    nop

    nop

    invoke-static {v4, v5}, Lqoe;->D(Lqhe;Lqfe;)Lqhe;

    move-result-object v4

    nop

    nop

    nop

    nop

    move-object v9, v2

    nop

    nop

    nop

    move-object v11, v15

    nop

    nop

    move-object v5, v15

    nop

    nop

    move-object v15, v4

    nop

    nop

    nop

    move-object/from16 v16, v5

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v16}, Lqjg;-><init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Lqhe;Landroid/opengl/EGLDisplay;)V

    iget-object v4, v2, Lqiy;->a:Lqjx;

    nop

    invoke-virtual {v4, v3}, Lqjx;->a(Lqjx;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-ltz v4, :cond_8

    nop

    return-object v2

    nop

    nop

    :cond_8
    const-string v4, "GLRootCanvasCore"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lqiy;->a:Lqjx;

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but got: "

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lqfa;->close()V

    invoke-static {v3}, Lqhj;->a(Lqjx;)Lqhj;

    move-result-object v0

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    new-instance v0, Lqhj;

    nop

    nop

    nop

    const-string v2, "Unexpected numerical GL version format \'"

    nop

    nop

    nop

    const-string v3, "\'!"

    nop

    nop

    nop

    nop

    invoke-static {v9, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {v0, v2}, Lqhj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_9
    new-instance v0, Lqhj;

    nop

    nop

    nop

    nop

    const-string v2, "Unexpected GL version string \'"

    nop

    nop

    nop

    nop

    nop

    const-string v3, "\'!"

    nop

    nop

    invoke-static {v7, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lqhj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_a
    new-instance v0, Lqhj;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lqjk;->c()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v3, "EGL Error: Bad surface: "

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lqhj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_b
    invoke-static {v3}, Lqhj;->a(Lqjx;)Lqhj;

    move-result-object v0

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    const-string v2, "Could not find suitable EGLConfig!"

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    const-string v2, "EGL Error: eglChooseConfig failed!"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop
    :try_end_4
    .catch Lqhj; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/opengl/GLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit v9

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_e
    new-instance v0, Lqhj;

    nop

    nop

    nop

    invoke-static {}, Lqjk;->c()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->FEdLUwuOuyEuy:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lqhj;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop
    :try_end_6
    .catch Lqhj; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/opengl/GLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_1f
    const-string v0, ", Min Version: "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v1, Lqid;->a:Lqhy;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    const-string v3, "GLContexts"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lqid;->a()Lqjf;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
