.class final Lqjg;
.super Lqiy;
.source "PG"


# instance fields
.field final synthetic e:Landroid/opengl/EGLDisplay;


# direct methods
.method public constructor <init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Lqhe;Landroid/opengl/EGLDisplay;)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v7, p6

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p7, p0, Lqjg;->e:Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    nop

    :goto_5
    invoke-direct/range {v0 .. v7}, Lqiy;-><init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILqhe;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    move-object v4, p4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_d
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    const/4 v6, 0x0

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

    :goto_12
    move-object v5, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v3, p3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()Lqfv;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lqjg;->e:Landroid/opengl/EGLDisplay;

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
    iget-object v1, p0, Lqiy;->d:Landroid/opengl/EGLContext;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    iget-object v0, p0, Lqiy;->b:Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lqiy;->b:Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    iget-object p0, p0, Lqiy;->c:Landroid/opengl/EGLSurface;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

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

    :goto_11
    sget-object p0, Lqfu;->a:Lqfv;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const v1, 0xb

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

    :goto_13
    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto/32 :goto_11

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
