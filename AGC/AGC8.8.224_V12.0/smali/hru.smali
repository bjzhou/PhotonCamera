.class public final synthetic Lhru;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field private final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lhqe;IILemq;Ljad;I[B[B[B)V
    .locals 0

    iput p6, p0, Lhru;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhru;->c:Ljava/lang/Object;

    iput p2, p0, Lhru;->a:I

    iput p3, p0, Lhru;->b:I

    iput-object p4, p0, Lhru;->d:Ljava/lang/Object;

    iput-object p5, p0, Lhru;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrz;ILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;II)V
    .locals 0

    iput p6, p0, Lhru;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhru;->c:Ljava/lang/Object;

    iput p2, p0, Lhru;->a:I

    iput-object p3, p0, Lhru;->d:Ljava/lang/Object;

    iput-object p4, p0, Lhru;->e:Ljava/lang/Object;

    iput p5, p0, Lhru;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lhru;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhru;->c:Ljava/lang/Object;

    iget v3, p0, Lhru;->a:I

    iget v4, p0, Lhru;->b:I

    iget-object v1, p0, Lhru;->d:Ljava/lang/Object;

    iget-object v2, p0, Lhru;->e:Ljava/lang/Object;

    new-instance v11, Ldqx;

    check-cast v0, Lhqe;

    iget-object v5, v0, Lhqe;->f:Ljpw;

    move-object v6, v2

    check-cast v6, Ljad;

    move-object v7, v1

    check-cast v7, Lemq;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, v11

    move-object v2, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    invoke-direct/range {v1 .. v10}, Ldqx;-><init>(Ljpw;IILemq;Ljad;[B[B[B[B)V

    iput-object v11, v0, Lhqe;->h:Ldqx;

    iget-object v0, v0, Lhqe;->h:Ldqx;

    iget-object v0, v0, Ldqx;->e:Ljava/lang/Object;

    check-cast v0, Ligo;

    iget-object v1, v0, Ligo;->a:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [I

    check-cast v1, Lhqi;

    iget v4, v1, Lhqi;->c:I

    const/16 v5, 0x3056

    iget v6, v1, Lhqi;->b:I

    const/16 v7, 0x3057

    const/16 v8, 0x3038

    filled-new-array {v7, v4, v5, v6, v8}, [I

    move-result-object v4

    const/16 v5, 0x3098

    filled-new-array {v5, v2, v8}, [I

    move-result-object v5

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v6, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    iput-object v6, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v6, v7, :cond_6

    iget-object v6, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x11

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    iget-object v6, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v6, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, v1, Lhqi;->g:[Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v10, 0x0

    move-object v8, v3

    move-object v11, v2

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v12, 0x0

    aget v10, v2, v12

    new-array v6, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v6, v1, Lhqi;->g:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, v1, Lhqi;->g:[Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v2, v1, Lhqi;->g:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lhqi;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, v1, Lhqi;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v6, v7, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lhqi;->h:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, v1, Lhqi;->h:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_4

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, v1, Lhqi;->f:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, v1, Lhqi;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, v1, Lhqi;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v1, Lhqi;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, v1, Lhqi;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v2, v1, Lhqi;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, v1, Lhqi;->k:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, v0, Ligo;->a:Ljava/lang/Object;

    iget-object v0, v0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lhqh;

    check-cast v1, Lhqi;

    iput-object v0, v1, Lhqi;->l:Lhqh;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lhqi;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lhqi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "setRenderer: This thread does not own the OpenGL context."

    const/16 v2, 0xf3f

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhru;->c:Ljava/lang/Object;

    iget v1, p0, Lhru;->a:I

    iget-object v2, p0, Lhru;->d:Ljava/lang/Object;

    iget-object v3, p0, Lhru;->e:Ljava/lang/Object;

    iget v4, p0, Lhru;->b:I

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-ltz v1, :cond_0

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0e0104

    invoke-static {v5, v7, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v7, 0x7f0b030d

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    check-cast v0, Lhrz;

    invoke-virtual {v0, v6, v5}, Lhrz;->d(Landroid/view/View;Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lhrz;->f(Landroid/view/ViewGroup;)V

    iget-object v1, v0, Lhrz;->d:Lmgf;

    if-eqz v1, :cond_1

    new-instance v2, Lhrv;

    invoke-direct {v2, v0, v3, v4}, Lhrv;-><init>(Lhrz;Landroid/content/DialogInterface$OnDismissListener;I)V

    invoke-virtual {v1, v2}, Lmgf;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, v0, Lhrz;->d:Lmgf;

    invoke-virtual {v0}, Lmgf;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v1, Lhqi;->l:Lhqh;

    iget-object v2, v1, Lhqi;->k:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, v1, Lhqi;->c:I

    iget v1, v1, Lhqi;->b:I

    invoke-virtual {v0, v2, v3, v1}, Lhqh;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglSurface create failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglContext create failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3025
        0x0
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data
.end method
