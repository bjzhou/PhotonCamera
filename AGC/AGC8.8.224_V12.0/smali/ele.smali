.class public final Lele;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:[F

.field private c:Ljava/nio/FloatBuffer;

.field private final d:[F

.field private final e:[F

.field private f:Lltt;

.field private g:F

.field private h:Loxq;

.field private i:Loxq;

.field private j:Loxq;

.field private k:Loxq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/rendering/shaders/LineShader"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lele;->b:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lele;->c:Ljava/nio/FloatBuffer;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lele;->d:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lele;->e:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lele;->a:[F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lele;->g:F

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lele;->f:Lltt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lltt;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lele;->f:Lltt;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lele;->f:Lltt;

    if-nez v0, :cond_0

    new-instance v0, Lltt;

    const-string v1, "attribute vec2 vertexAttrib;uniform mat4 projectionMatrix;uniform mat4 vertexTransform;void main() {  gl_Position = projectionMatrix * vertexTransform * vec4(vertexAttrib, 0., 1.);}"

    const-string v2, "precision mediump float;uniform vec4 fillColor;void main() {  gl_FragColor = fillColor;}"

    invoke-direct {v0, v1, v2}, Lltt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lele;->f:Lltt;

    const-string v1, "vertexTransform"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lele;->h:Loxq;

    iget-object v0, p0, Lele;->f:Lltt;

    const-string v1, "projectionMatrix"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lele;->i:Loxq;

    iget-object v0, p0, Lele;->f:Lltt;

    const-string v1, "fillColor"

    invoke-virtual {v0, v1}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lele;->j:Loxq;

    iget-object v0, p0, Lele;->f:Lltt;

    const-string v1, "vertexAttrib"

    invoke-virtual {v0, v1}, Lltt;->e(Ljava/lang/String;)Loxq;

    move-result-object v0

    iput-object v0, p0, Lele;->k:Loxq;

    :cond_0
    iget-object v0, p0, Lele;->c:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lele;->f:Lltt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lltt;->a()V

    iget-object v1, p0, Lele;->k:Loxq;

    invoke-virtual {v1}, Loxq;->e()V

    iget-object v1, p0, Lele;->k:Loxq;

    iget-object v2, p0, Lele;->c:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Loxq;->f(Ljava/nio/FloatBuffer;I)V

    iget-object v1, p0, Lele;->h:Loxq;

    iget-object v2, p0, Lele;->d:[F

    invoke-virtual {v1, v2}, Loxq;->a([F)V

    iget-object v1, p0, Lele;->i:Loxq;

    iget-object v2, p0, Lele;->e:[F

    invoke-virtual {v1, v2}, Loxq;->a([F)V

    iget-object v1, p0, Lele;->j:Loxq;

    iget-object v2, p0, Lele;->a:[F

    invoke-virtual {v1, v2}, Loxq;->b([F)V

    iget v1, p0, Lele;->g:F

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget-object v1, p0, Lele;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/2addr v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, p0, Lele;->k:Loxq;

    invoke-virtual {v1}, Loxq;->d()V

    invoke-virtual {v0}, Lltt;->c()V

    return-void
.end method

.method public final c([FF)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lele;->g:F

    invoke-static {p1}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lele;->c:Ljava/nio/FloatBuffer;

    return-void

    :cond_1
    :goto_0
    sget-object p2, Lele;->b:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x63a

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "Tried to draw a set of lines with %d floats"

    array-length p1, p1

    invoke-interface {p2, v0, p1}, Lnah;->p(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lele;->c:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final d(FF)V
    .locals 8

    div-float v3, p1, p2

    neg-float v2, v3

    iget-object v0, p0, Lele;->e:[F

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v4, v6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method
