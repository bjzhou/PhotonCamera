.class public final Llcb;
.super Lkyj;

# interfaces
.implements Llcn;


# instance fields
.field public final c:Lkyq;

.field private final d:Llfg;


# direct methods
.method public constructor <init>(Llfg;)V
    .locals 1

    invoke-direct {p0}, Lkyj;-><init>()V

    iput-object p1, p0, Llcb;->d:Llfg;

    new-instance p1, Lkyq;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkyq;-><init>([B)V

    iput-object p1, p0, Llcb;->c:Lkyq;

    return-void
.end method

.method private final o()Llcn;
    .locals 1

    iget-object v0, p0, Llcb;->c:Lkyq;

    invoke-virtual {v0}, Lkyq;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llcn;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Llcb;->d:Llfg;

    check-cast v0, Llfj;

    iget-object v0, v0, Llfj;->a:Ljava/lang/Object;

    check-cast v0, Llcn;

    return-object v0
.end method


# virtual methods
.method protected final b()Lkzf;
    .locals 6

    iget-object v0, p0, Llcb;->c:Lkyq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkyq;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llcn;

    if-nez v0, :cond_0

    sget-object v0, Lkze;->a:Lkzf;

    return-object v0

    :cond_0
    invoke-interface {v0}, Llcn;->a()Lkzf;

    move-result-object v0

    sget-object v1, Lkze;->a:Lkzf;

    sget-object v2, Lnnv;->a:Lnnv;

    new-instance v3, Lkyx;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4}, Lkyx;-><init>(Lkzc;I)V

    new-instance v4, Lkzi;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lkzi;-><init>(Lkzc;I)V

    invoke-interface {v0, v2, v3, v4}, Lkzc;->d(Ljava/util/concurrent/Executor;Lkzg;Lkzg;)Lkzc;

    move-result-object v0

    invoke-static {v0}, Lkzf;->k(Lkzc;)Lkzf;

    move-result-object v0

    return-object v0
.end method

.method protected final cv()V
    .locals 2

    iget-object v0, p0, Llcb;->c:Lkyq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkyq;->a(Lkyk;)V

    return-void
.end method

.method public final d()Landroid/opengl/EGLConfig;
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->d()Landroid/opengl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/opengl/EGLContext;
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->e()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/opengl/EGLDisplay;
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->f()Landroid/opengl/EGLDisplay;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/opengl/EGLSurface;
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->g()Landroid/opengl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lldg;
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->h()Lldg;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->i()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Llcb;->c:Lkyq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkyq;->a(Lkyk;)V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->k()V

    return-void
.end method

.method public final l(Ljava/nio/Buffer;)V
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0, p1}, Llcn;->l(Ljava/nio/Buffer;)V

    return-void
.end method

.method public final m()V
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->m()V

    return-void
.end method

.method public final n()Llaq;
    .locals 1

    invoke-direct {p0}, Llcb;->o()Llcn;

    move-result-object v0

    invoke-interface {v0}, Llcn;->n()Llaq;

    move-result-object v0

    return-object v0
.end method
