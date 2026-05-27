.class final Llct;
.super Ljava/lang/Object;

# interfaces
.implements Llcn;


# instance fields
.field final synthetic a:Llcs;

.field final synthetic b:Landroid/view/SurfaceHolder;

.field private final c:Llcn;


# direct methods
.method public constructor <init>(Llcn;Llcs;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p2, p0, Llct;->a:Llcs;

    iput-object p3, p0, Llct;->b:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llct;->c:Llcn;

    return-void
.end method


# virtual methods
.method public final a()Lkzf;
    .locals 1

    invoke-virtual {p0}, Llct;->b()V

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->a()Lkzf;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Llct;->a:Llcs;

    const/4 v1, 0x0

    iput-boolean v1, v0, Llcs;->c:Z

    iget-object v0, p0, Llct;->b:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Llct;->a:Llcs;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Llct;->b()V

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->close()V

    return-void
.end method

.method public final d()Landroid/opengl/EGLConfig;
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->d()Landroid/opengl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/opengl/EGLContext;
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->e()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/opengl/EGLDisplay;
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/opengl/EGLSurface;
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->g()Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lldg;
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->h()Lldg;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->i()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->k()V

    return-void
.end method

.method public final l(Ljava/nio/Buffer;)V
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0, p1}, Llcn;->l(Ljava/nio/Buffer;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->m()V

    return-void
.end method

.method public final n()Llaq;
    .locals 1

    iget-object v0, p0, Llct;->c:Llcn;

    invoke-interface {v0}, Llcn;->n()Llaq;

    move-result-object v0

    return-object v0
.end method
