.class public final Lktf;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Llij;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lmrp;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lohg;->b()V

    sget-object v1, Lohd;->a:Lohd;

    invoke-virtual {v1}, Lohd;->b()Lohe;

    move-result-object v1

    invoke-interface {v1}, Lohe;->c()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    long-to-int v0, v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljot;)Lnou;
    .locals 4

    new-instance v0, Lkto;

    invoke-direct {v0, p0}, Lkto;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lnnv;->a:Lnnv;

    new-instance v2, Lfbe;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lfbe;-><init>(Lkto;I)V

    invoke-virtual {p0, v1, v2}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    return-object v0
.end method

.method public static c(Lkrw;)Ljava/util/concurrent/Executor;
    .locals 8

    iget-object p0, p0, Lkrw;->a:Landroid/content/Context;

    invoke-static {p0}, Lkwp;->f(Landroid/content/Context;)Z

    move-result p0

    const/16 v0, 0xa

    if-eqz p0, :cond_0

    sget-object p0, Ljma;->a:Ljmj;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    invoke-static {v0, p0}, Ljmj;->c(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lktj;->a:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0
.end method

.method public static d(Ljava/lang/String;[Lknh;[Lknh;)V
    .locals 2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " which is different from: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e([BI)F
    .locals 0

    invoke-static {p0, p1}, Lktf;->f([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static f([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static g([BI)J
    .locals 2

    add-int/lit8 p1, p1, 0xc

    invoke-static {p0, p1}, Lktf;->f([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static h([BI)J
    .locals 15

    const/16 v0, 0x10

    add-int/lit8 v1, p1, 0x10

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v1, 0x5

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x6

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v1, v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v9, v3

    int-to-long v3, v4

    int-to-long v11, v5

    int-to-long v5, v6

    int-to-long v13, v7

    int-to-long v7, v8

    int-to-long v0, v1

    move-wide p0, v0

    int-to-long v0, v2

    const/16 v2, 0x8

    shl-long/2addr v9, v2

    add-long/2addr v0, v9

    const/16 v2, 0x10

    shl-long v2, v3, v2

    add-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v11, v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v5, v2

    add-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v13, v2

    add-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v7, v2

    add-long/2addr v0, v2

    const/16 v2, 0x38

    move-wide v3, p0

    shl-long v2, v3, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static i(Ljava/util/Collection;)J
    .locals 10

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfj;

    check-cast v4, Lkkb;

    invoke-virtual {v4}, Lkkb;->f()J

    move-result-wide v5

    const/4 v7, 0x0

    cmp-long v8, v5, v0

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "bytesPerImage() must be >= 0"

    invoke-static {v8, v9, v7}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkkb;->i()Z

    move-result v4

    if-nez v4, :cond_0

    add-long/2addr v2, v5

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public static synthetic j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static k(Ljava/lang/Object;)Llfg;
    .locals 1

    new-instance v0, Llfj;

    invoke-direct {v0, p0}, Llfj;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static l(Lkyc;)Llfg;
    .locals 1

    new-instance v0, Llfe;

    invoke-direct {v0, p0}, Llfe;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static m(Ljava/util/concurrent/Executor;)Ller;
    .locals 1

    new-instance v0, Ller;

    invoke-direct {v0, p0}, Ller;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static o(Llen;)Llec;
    .locals 1

    new-instance v0, Llef;

    invoke-direct {v0, p0}, Llef;-><init>(Llen;)V

    return-object v0
.end method

.method public static p(Landroid/opengl/EGLSync;)Llcg;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    new-instance v1, Llce;

    invoke-direct {v1, v0, p0}, Llce;-><init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)V

    return-object v1
.end method

.method public static q(Ljava/lang/Runnable;IIIZ)V
    .locals 30

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v6, v0, [I

    new-array v7, v2, [I

    new-array v8, v2, [I

    const/4 v9, 0x4

    new-array v10, v9, [I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v15

    add-int/2addr v15, v15

    new-array v9, v15, [Ljava/lang/Thread;

    invoke-virtual {v13, v9, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_0
    if-ge v13, v15, :cond_3

    aget-object v0, v9, v13

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v17, v17, 0x1

    :cond_0
    if-ne v0, v12, :cond_1

    move/from16 v16, v17

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x1

    const/16 v17, 0x0

    :cond_3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v2

    const/16 v9, 0x305a

    invoke-static {v9}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v9

    const/16 v11, 0x3059

    invoke-static {v11}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v11

    const v12, 0x821b

    invoke-static {v12, v1, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const v12, 0x821c

    const/4 v13, 0x1

    invoke-static {v12, v1, v13}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const v12, 0x8b8d

    invoke-static {v12, v3, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const v12, 0x84e0

    invoke-static {v12, v4, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const v12, 0x8caa

    invoke-static {v12, v7, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const v12, 0x8ca7

    invoke-static {v12, v8, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const v12, 0x8069

    invoke-static {v12, v5, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    const/16 v12, 0xba2

    invoke-static {v12, v10, v14}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    aget v12, v5, v14

    const/4 v13, 0x3

    if-eqz v12, :cond_6

    aget v12, v1, v14

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    aget v18, v1, v12

    if-lez v18, :cond_5

    const/16 v13, 0xde1

    const/16 v15, 0x1000

    invoke-static {v13, v14, v15, v6, v14}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    const/16 v15, 0x1001

    invoke-static {v13, v14, v15, v6, v12}, Landroid/opengl/GLES31;->glGetTexLevelParameteriv(III[II)V

    goto :goto_1

    :cond_4
    const/4 v12, 0x1

    :cond_5
    const/4 v13, -0x1

    aput v13, v6, v14

    aput v13, v6, v12

    :cond_6
    :goto_1
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v13, 0x19

    new-array v13, v13, [Ljava/lang/Object;

    aget v15, v1, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v15, 0x1

    aget v1, v1, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v13, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x3

    aput-object v1, v13, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x4

    aput-object v1, v13, v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v15, 0x5

    aput-object v1, v13, v15

    const/4 v1, 0x6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v1

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "EGL_NO_CONTEXT"

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lktf;->y(Landroid/opengl/EGLObjectHandle;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x7

    aput-object v0, v13, v1

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v0}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "EGL_NO_DISPLAY"

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lktf;->y(Landroid/opengl/EGLObjectHandle;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/16 v1, 0x8

    aput-object v0, v13, v1

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v9, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "EGL_NO_SURFACE"

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_4

    :cond_9
    invoke-static {v9}, Lktf;->y(Landroid/opengl/EGLObjectHandle;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/16 v2, 0x9

    aput-object v0, v13, v2

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v11, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v11}, Lktf;->y(Landroid/opengl/EGLObjectHandle;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    const/16 v0, 0xa

    aput-object v1, v13, v0

    const/16 v0, 0x3000

    move/from16 v1, p2

    if-ne v1, v0, :cond_b

    const-string v0, "EGL_SUCCESS"

    goto :goto_6

    :cond_b
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/16 v1, 0xb

    aput-object v0, v13, v1

    if-nez p3, :cond_c

    const-string v0, "GL_NO_ERROR"

    goto :goto_7

    :cond_c
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/16 v1, 0xc

    aput-object v0, v13, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v13, v1

    aget v0, v3, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v13, v1

    aget v0, v4, v14

    const v1, -0x84c0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, v13, v1

    aget v0, v5, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v13, v1

    aget v0, v6, v14

    const-string v1, "?"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    move-object v0, v1

    :goto_8
    const/16 v4, 0x11

    aput-object v0, v13, v4

    const/4 v0, 0x1

    aget v4, v6, v0

    if-eq v4, v2, :cond_e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_e
    :goto_9
    const/16 v0, 0x12

    aput-object v1, v13, v0

    aget v0, v7, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, v13, v1

    aget v0, v8, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x14

    aput-object v0, v13, v1

    aget v0, v10, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, v13, v1

    const/4 v0, 0x1

    aget v1, v10, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v13, v1

    const/4 v0, 0x2

    aget v1, v10, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, v13, v1

    const/4 v0, 0x3

    aget v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v13, v1

    const-string v0, "\n- General EGL Status ------------------\nVersion: %d.%d\nThread: %s (%d of %d)\nCommands Executed: %d\nCommand Run: %s\nCurrent Context: %s\nCurrent Display: %s\nCurrent Read Surface: %s\nCurrent Draw Surface: %s\nEGL Error: %s\nGL Error: %s\nClosing: %b\n- GL Status ---------------------------\nBound Program: %d\nActive Texture Slot: %d\nTexture2D Binding: %d\nTexture Size: %sx%s\nFBO Binding: %d\nRenderbuffer Binding: %d\nViewport: %d,%d,%dx%d\n"

    invoke-static {v12, v0, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v3, v14

    if-eqz v2, :cond_11

    const-string v2, "- Program Details ---------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x8b86

    invoke-static {v2, v7, v6, v14}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v5, [Ljava/lang/Object;

    aget v9, v6, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    const-string v9, "Uni Count: %d\n"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v5, [I

    const v8, 0x8b87

    invoke-static {v2, v8, v7, v14}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    const/4 v8, 0x0

    :goto_a
    aget v9, v6, v14

    const/16 v10, 0xff

    if-ge v8, v9, :cond_f

    new-array v9, v5, [I

    new-array v11, v5, [I

    new-array v12, v5, [I

    new-array v5, v10, [B

    aget v21, v7, v14

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move/from16 v19, v2

    move/from16 v20, v8

    move-object/from16 v22, v9

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    move-object/from16 v28, v5

    invoke-static/range {v19 .. v29}, Landroid/opengl/GLES30;->glGetActiveUniform(III[II[II[II[BI)V

    new-instance v9, Ljava/lang/String;

    invoke-static {v5}, Lktf;->x([B)I

    move-result v10

    invoke-direct {v9, v5, v14, v10}, Ljava/lang/String;-><init>([BII)V

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    aget v5, v12, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v14

    const/4 v5, 0x1

    aput-object v9, v10, v5

    const-string v5, "Uni 0x%X %s\n"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x8b89

    invoke-static {v2, v6, v5, v14}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    aget v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v14

    const-string v8, "Attrib Count: %d\n"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v4, [I

    const v7, 0x8b8a

    invoke-static {v2, v7, v6, v14}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    const/4 v7, 0x0

    :goto_b
    aget v8, v5, v14

    if-ge v7, v8, :cond_10

    new-array v8, v4, [I

    new-array v9, v4, [I

    new-array v11, v4, [I

    new-array v4, v10, [B

    aget v21, v6, v14

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move/from16 v19, v2

    move/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v28, v4

    invoke-static/range {v19 .. v29}, Landroid/opengl/GLES30;->glGetActiveAttrib(III[II[II[II[BI)V

    new-instance v8, Ljava/lang/String;

    invoke-static {v4}, Lktf;->x([B)I

    move-result v9

    invoke-direct {v8, v4, v14, v9}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    aget v11, v11, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v14

    const/4 v11, 0x1

    aput-object v8, v9, v11

    const-string v8, "Attrib 0x%X %s\n"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLContext"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static r(Llbd;)Llbd;
    .locals 1

    new-instance v0, Llca;

    invoke-direct {v0, p0}, Llca;-><init>(Llbd;)V

    return-object v0
.end method

.method public static s(Lldg;Ljava/lang/String;)Llbd;
    .locals 8

    invoke-static {}, Lktf;->w()Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-result-object v2

    invoke-static {}, Llpm;->l()Lkyw;

    move-result-object v0

    invoke-static {p1, v0}, Lkyv;->b(Ljava/lang/String;Lkyw;)Lkyv;

    move-result-object p1

    invoke-virtual {p1}, Lkyv;->a()V

    invoke-static {p1}, Lktf;->t(Lkyv;)Llbh;

    move-result-object p1

    new-instance v7, Llbo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Llbo;-><init>(Lldg;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B)V

    invoke-static {p1, v7}, Llpm;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkzc;

    move-result-object p0

    new-instance v0, Lldc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, v1}, Lldc;-><init>(Llbd;Lkzc;[B[B)V

    invoke-virtual {p1, v0}, Llbh;->m(Lldc;)V

    return-object p1
.end method

.method public static t(Lkyv;)Llbh;
    .locals 1

    new-instance v0, Llbn;

    invoke-direct {v0, p0, p0}, Llbn;-><init>(Ljava/util/concurrent/Executor;Lkyv;)V

    return-object v0
.end method

.method public static u(Llbd;)V
    .locals 2

    sget-object v0, Lfrj;->g:Lfrj;

    sget-object v1, Llbl;->a:Llbl;

    invoke-interface {p0, v0, v1}, Llbd;->f(Llcj;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lktf;->v(Llbd;)V

    return-void
.end method

.method public static v(Llbd;)V
    .locals 7

    invoke-interface {p0}, Llbd;->d()Llcg;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Llcg;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Llcg;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Llcg;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    throw v0
.end method

.method public static w()Landroidx/wear/ambient/AmbientMode$AmbientController;
    .locals 2

    new-instance v0, Llar;

    const/4 v1, 0x1

    invoke-static {v1, v1}, Lkyn;->d(II)Lkym;

    move-result-object v1

    invoke-direct {v0, v1}, Llar;-><init>(Lkym;)V

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, v0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Llaq;)V

    return-object v1
.end method

.method private static x([B)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static y(Landroid/opengl/EGLObjectHandle;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "0x%X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
