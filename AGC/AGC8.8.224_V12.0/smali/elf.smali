.class public final Lelf;
.super Ljava/lang/Object;


# instance fields
.field public final a:[F

.field private final b:[F

.field private c:Ljava/nio/FloatBuffer;

.field private final d:[F

.field private e:Ljava/nio/FloatBuffer;

.field private final f:[F

.field private g:Lltt;

.field private h:Loxq;

.field private i:Loxq;

.field private j:Loxq;

.field private k:Loxq;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lelf;->b:[F

    invoke-static {v0}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lelf;->c:Ljava/nio/FloatBuffer;

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lelf;->d:[F

    invoke-static {v1}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lelf;->e:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    iput-object v1, p0, Lelf;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lelf;->f:[F

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lelf;->g:Lltt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lltt;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lelf;->g:Lltt;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lelf;->g:Lltt;

    if-nez v0, :cond_0

    new-instance v0, Lltt;

    const-string v1, "attribute vec2 vertexAttrib;attribute vec4 vertexColorAttrib;varying vec4 vertexColor;uniform mat4 projectionMatrix;uniform mat4 vertexTransform;void main() {  vertexColor = vertexColorAttrib;  gl_Position = projectionMatrix * vertexTransform * vec4(vertexAttrib, 0., 1.);}"

    const-string v2, "precision mediump float;varying vec4 vertexColor;void main() {  gl_FragColor = vertexColor;}"

    invoke-direct {v0, v1, v2}, Lltt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lelf;->g:Lltt;

    const-string v1, "vertexTransform"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lelf;->h:Loxq;

    iget-object v0, p0, Lelf;->g:Lltt;

    const-string v1, "projectionMatrix"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lelf;->i:Loxq;

    iget-object v0, p0, Lelf;->g:Lltt;

    const-string v1, "vertexAttrib"

    invoke-virtual {v0, v1}, Lltt;->e(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lelf;->j:Loxq;

    iget-object v0, p0, Lelf;->g:Lltt;

    const-string v1, "vertexColorAttrib"

    invoke-virtual {v0, v1}, Lltt;->e(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lelf;->k:Loxq;

    :cond_0
    iget-object v0, p0, Lelf;->g:Lltt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lltt;->a()V

    iget-object v1, p0, Lelf;->j:Loxq;

    invoke-virtual {v1}, Loxq;->e()V

    iget-object v1, p0, Lelf;->j:Loxq;

    iget-object v2, p0, Lelf;->c:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Loxq;->f(Ljava/nio/FloatBuffer;I)V

    iget-object v1, p0, Lelf;->k:Loxq;

    invoke-virtual {v1}, Loxq;->e()V

    iget-object v1, p0, Lelf;->k:Loxq;

    iget-object v2, p0, Lelf;->e:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4}, Loxq;->f(Ljava/nio/FloatBuffer;I)V

    iget-object v1, p0, Lelf;->h:Loxq;

    iget-object v2, p0, Lelf;->a:[F

    invoke-virtual {v1, v2}, Loxq;->a([F)V

    iget-object v1, p0, Lelf;->i:Loxq;

    iget-object v2, p0, Lelf;->f:[F

    invoke-virtual {v1, v2}, Loxq;->a([F)V

    iget-object v1, p0, Lelf;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/2addr v1, v3

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, p0, Lelf;->k:Loxq;

    invoke-virtual {v1}, Loxq;->d()V

    iget-object v1, p0, Lelf;->j:Loxq;

    invoke-virtual {v1}, Loxq;->d()V

    invoke-virtual {v0}, Lltt;->c()V

    return-void
.end method

.method public final c(FF)V
    .locals 8

    div-float v3, p1, p2

    neg-float v2, v3

    iget-object v0, p0, Lelf;->f:[F

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v4, v6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public final d(FFFF)V
    .locals 2

    iget-object v0, p0, Lelf;->b:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 p1, 0x3

    aput p4, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p2, v0, p1

    const/4 p1, 0x6

    aput p3, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    invoke-static {v0}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lelf;->c:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final e([F)V
    .locals 0

    invoke-static {p1}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lelf;->e:Ljava/nio/FloatBuffer;

    return-void
.end method
