.class final Llcr;
.super Llch;


# instance fields
.field final synthetic g:Llcn;

.field final synthetic h:I

.field final synthetic i:Llfg;


# direct methods
.method public constructor <init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlaq;Llcn;ILlfg;)V
    .locals 0

    iput-object p8, p0, Llcr;->g:Llcn;

    iput p9, p0, Llcr;->h:I

    iput-object p10, p0, Llcr;->i:Llfg;

    invoke-direct/range {p0 .. p7}, Llch;-><init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlaq;)V

    return-void
.end method


# virtual methods
.method public final b()Lkzf;
    .locals 3

    :try_start_0
    iget-object v0, p0, Llcr;->g:Llcn;

    invoke-interface {v0}, Llcn;->k()V

    const/4 v0, 0x0

    invoke-static {v0}, Llcu;->f(I)V

    iget v0, p0, Llcr;->h:I

    invoke-static {v0}, Llcu;->e(I)V

    iget-object v0, p0, Llcr;->i:Llfg;

    invoke-interface {v0}, Llfg;->a()Lkzf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Llcr;->i:Llfg;

    invoke-interface {v1}, Llfg;->a()Lkzf;

    move-result-object v1

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0}, Llpm;->p(Ljava/lang/Throwable;)Lkye;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lkzf;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method
