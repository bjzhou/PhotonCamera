.class final Llbc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Llbd;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Llbd;Landroid/view/SurfaceView;I)V
    .locals 0

    iput p3, p0, Llbc;->c:I

    iput-object p1, p0, Llbc;->a:Llbd;

    iput-object p2, p0, Llbc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;I)V
    .locals 0

    iput p3, p0, Llbc;->c:I

    iput-object p1, p0, Llbc;->a:Llbd;

    iput-object p2, p0, Llbc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llbd;Llaq;I)V
    .locals 0

    iput p3, p0, Llbc;->c:I

    iput-object p1, p0, Llbc;->a:Llbd;

    iput-object p2, p0, Llbc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Llbc;->c:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llbc;->a:Llbd;

    invoke-interface {v0}, Llbd;->e()Lldg;

    move-result-object v0

    iget-object v2, p0, Llbc;->b:Ljava/lang/Object;

    check-cast v2, Llaq;

    invoke-static {v0, v2}, Llda;->h(Lldg;Llaq;)Llda;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Llbc;->a:Llbd;

    iget-object v1, p0, Llbc;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0}, Llbd;->i()Lldc;

    move-result-object v2

    invoke-virtual {v2}, Llbk;->c()Llcv;

    move-result-object v2

    check-cast v2, Llcn;

    new-instance v3, Llcb;

    invoke-static {v2}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object v4

    invoke-direct {v3, v4}, Llcb;-><init>(Llfg;)V

    new-instance v4, Llcs;

    invoke-direct {v4, v0, v3, v2}, Llcs;-><init>(Llbd;Llcb;Llcn;)V

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Llct;

    invoke-direct {v0, v3, v4, v1}, Llct;-><init>(Llcn;Llcs;Landroid/view/SurfaceHolder;)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llbc;->a:Llbd;

    iget-object v2, p0, Llbc;->b:Ljava/lang/Object;

    invoke-static {}, Llcu;->a()I

    move-result v13

    new-array v3, v1, [I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES30;->glGenRenderbuffers(I[II)V

    aget v12, v3, v4

    const v1, 0x8d41

    invoke-static {v1, v12}, Landroid/opengl/GLES30;->glBindRenderbuffer(II)V

    check-cast v2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    iget-wide v3, v2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a:J

    invoke-static {v3, v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->attachToRbo(J)V

    const v3, 0x8d40

    invoke-static {v3, v13}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    invoke-static {v3, v4, v1, v12}, Landroid/opengl/GLES30;->glFramebufferRenderbuffer(IIII)V

    invoke-interface {v0}, Llbd;->i()Lldc;

    move-result-object v0

    invoke-virtual {v0}, Llbk;->c()Llcv;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Llcn;

    new-instance v0, Llcq;

    invoke-interface {v11}, Llcn;->h()Lldg;

    move-result-object v4

    invoke-interface {v11}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v5

    invoke-interface {v11}, Llcn;->g()Landroid/opengl/EGLSurface;

    move-result-object v6

    invoke-interface {v11}, Llcn;->e()Landroid/opengl/EGLContext;

    move-result-object v7

    invoke-interface {v11}, Llcn;->d()Landroid/opengl/EGLConfig;

    move-result-object v8

    new-instance v10, Llar;

    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b()Lkym;

    move-result-object v1

    invoke-direct {v10, v1}, Llar;-><init>(Lkym;)V

    move-object v3, v0

    move v9, v13

    invoke-direct/range {v3 .. v13}, Llcq;-><init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlar;Llcn;II)V

    return-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Llda;->e()V

    iget-object v2, v0, Llda;->a:Lldg;

    sget-object v3, Lldg;->a:Lldg;

    invoke-virtual {v2, v3}, Lldg;->b(Lldg;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Llda;->d()V

    goto :goto_1

    :cond_0
    iget-boolean v2, v0, Llda;->e:Z

    xor-int/2addr v2, v1

    invoke-static {v2}, Lmoz;->p(Z)V

    iget v3, v0, Llda;->c:I

    iget-object v2, v0, Llda;->f:Llaq;

    iget-object v2, v2, Llaq;->a:Lkym;

    invoke-virtual {v2}, Lkyn;->b()I

    move-result v6

    iget-object v2, v0, Llda;->f:Llaq;

    iget-object v2, v2, Llaq;->a:Lkym;

    invoke-virtual {v2}, Lkyn;->a()I

    move-result v7

    const/4 v4, 0x0

    const v5, 0x8058

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iput-boolean v1, v0, Llda;->e:Z

    :goto_1
    invoke-static {}, Llci;->b()Z

    move-result v2

    invoke-static {v2}, Llda;->g(Z)V

    iput-boolean v1, v0, Llda;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Llcw;->close()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Llbc;->c:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_0

    const-string v0, "createTexture(RGBA8888)"

    return-object v0

    :pswitch_0
    iget-object v0, p0, Llbc;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCanvasForSurfaceView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Llbc;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b()Lkym;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCanvasForImage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
