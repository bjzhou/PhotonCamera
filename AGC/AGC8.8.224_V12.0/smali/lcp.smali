.class final Llcp;
.super Llch;


# instance fields
.field final synthetic g:Llcn;

.field final synthetic h:Llfg;


# direct methods
.method public constructor <init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Llaq;Llcn;Llfg;)V
    .locals 9

    move-object v8, p0

    move-object/from16 v0, p7

    iput-object v0, v8, Llcp;->g:Llcn;

    move-object/from16 v0, p8

    iput-object v0, v8, Llcp;->h:Llfg;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Llch;-><init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlaq;)V

    return-void
.end method


# virtual methods
.method public final b()Lkzf;
    .locals 3

    :try_start_0
    iget-object v0, p0, Llcp;->g:Llcn;

    invoke-interface {v0}, Llcn;->k()V

    iget-object v0, p0, Llcp;->h:Llfg;

    invoke-interface {v0}, Llfg;->a()Lkzf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Llcp;->h:Llfg;

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
