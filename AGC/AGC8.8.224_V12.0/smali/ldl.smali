.class public final Lldl;
.super Llff;


# instance fields
.field private final a:Landroid/opengl/EGLDisplay;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .locals 0

    invoke-direct {p0, p2}, Llff;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lldl;->a:Landroid/opengl/EGLDisplay;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/opengl/EGLSurface;

    iget-object v0, p0, Lldl;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method
