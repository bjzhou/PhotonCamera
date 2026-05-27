.class public final Llcu;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Llcu;->a:[I

    return-void
.end method

.method public static a()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenFramebuffers(I[II)V

    aget v0, v1, v2

    return v0
.end method

.method public static b(Llcn;Llfg;Lkym;)Llcn;
    .locals 12

    const/16 v0, 0x3038

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-interface {p0}, Llcn;->d()Landroid/opengl/EGLConfig;

    move-result-object v2

    invoke-interface {p1}, Llfg;->c()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    new-instance v2, Lldl;

    invoke-direct {v2, v1, v0}, Lldl;-><init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lkyc;

    aput-object p1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v11, Llfh;

    invoke-direct {v11, v2, p1}, Llfh;-><init>(Llfg;Ljava/lang/Iterable;)V

    invoke-interface {p0}, Llcn;->n()Llaq;

    move-result-object p1

    invoke-static {p1, p2}, Llpm;->c(Llaq;Lkyn;)Llaq;

    move-result-object v9

    new-instance p1, Llcp;

    invoke-interface {p0}, Llcn;->h()Lldg;

    move-result-object v4

    invoke-interface {p0}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v5

    invoke-interface {v11}, Llfg;->c()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/opengl/EGLSurface;

    invoke-interface {p0}, Llcn;->e()Landroid/opengl/EGLContext;

    move-result-object v7

    invoke-interface {p0}, Llcn;->d()Landroid/opengl/EGLConfig;

    move-result-object v8

    move-object v3, p1

    move-object v10, p0

    invoke-direct/range {v3 .. v11}, Llcp;-><init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Llaq;Llcn;Llfg;)V

    return-object p1
.end method

.method public static c(Llfg;)Llcn;
    .locals 12

    invoke-static {}, Llcu;->a()I

    move-result v9

    invoke-interface {p0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llde;

    const v1, 0x8d40

    invoke-static {v1, v9}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    invoke-virtual {v0}, Llbk;->c()Llcv;

    move-result-object v2

    check-cast v2, Llda;

    iget v2, v2, Llda;->c:I

    invoke-virtual {v0}, Llbk;->c()Llcv;

    move-result-object v3

    check-cast v3, Llda;

    iget v3, v3, Llcw;->b:I

    const v4, 0x8ce0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Landroid/opengl/GLES30;->glFramebufferTexture2D(IIIII)V

    iget-object v1, v0, Llbk;->b:Llbd;

    invoke-interface {v1}, Llbd;->i()Lldc;

    move-result-object v1

    invoke-virtual {v1}, Llbk;->c()Llcv;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Llcn;

    new-instance v11, Llcr;

    invoke-interface {v8}, Llcn;->h()Lldg;

    move-result-object v1

    invoke-interface {v8}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v2

    invoke-interface {v8}, Llcn;->g()Landroid/opengl/EGLSurface;

    move-result-object v3

    invoke-interface {v8}, Llcn;->e()Landroid/opengl/EGLContext;

    move-result-object v4

    invoke-interface {v8}, Llcn;->d()Landroid/opengl/EGLConfig;

    move-result-object v5

    invoke-virtual {v0}, Llde;->b()Llaq;

    move-result-object v7

    move-object v0, v11

    move v6, v9

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Llcr;-><init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlaq;Llcn;ILlfg;)V

    return-object v11
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)V
    .locals 2

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public static f(I)V
    .locals 2

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES30;->glDeleteRenderbuffers(I[II)V

    return-void
.end method
