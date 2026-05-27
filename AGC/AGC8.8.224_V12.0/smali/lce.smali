.class public final Llce;
.super Ljava/lang/Object;

# interfaces
.implements Llcg;


# instance fields
.field final synthetic a:Landroid/opengl/EGLDisplay;

.field final synthetic b:Landroid/opengl/EGLSync;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)V
    .locals 0

    iput-object p1, p0, Llce;->a:Landroid/opengl/EGLDisplay;

    iput-object p2, p0, Llce;->b:Landroid/opengl/EGLSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Llce;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Llce;->b:Landroid/opengl/EGLSync;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/EGL15;->eglClientWaitSync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;IJ)I

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Llce;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Llce;->b:Landroid/opengl/EGLSync;

    invoke-static {v0, v1}, Landroid/opengl/EGL15;->eglDestroySync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Z

    return-void
.end method
