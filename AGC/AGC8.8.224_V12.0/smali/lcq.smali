.class final Llcq;
.super Llch;


# instance fields
.field final synthetic g:Llcn;

.field final synthetic h:I

.field final synthetic i:I


# direct methods
.method public constructor <init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlar;Llcn;II)V
    .locals 0

    iput-object p8, p0, Llcq;->g:Llcn;

    iput p9, p0, Llcq;->h:I

    iput p10, p0, Llcq;->i:I

    invoke-direct/range {p0 .. p7}, Llch;-><init>(Lldg;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILlaq;)V

    return-void
.end method


# virtual methods
.method public final b()Lkzf;
    .locals 1

    iget-object v0, p0, Llcq;->g:Llcn;

    invoke-interface {v0}, Llcn;->k()V

    iget v0, p0, Llcq;->h:I

    invoke-static {v0}, Llcu;->f(I)V

    iget v0, p0, Llcq;->i:I

    invoke-static {v0}, Llcu;->e(I)V

    sget-object v0, Lkze;->a:Lkzf;

    return-object v0
.end method
