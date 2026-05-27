.class public final Lejb;
.super Ljava/lang/Object;

# interfaces
.implements Leiq;


# instance fields
.field private final a:[F

.field private final b:[F

.field private c:Lelg;

.field private final d:Leir;


# direct methods
.method public constructor <init>(Leir;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lejb;->a:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lejb;->b:[F

    iput-object p1, p0, Lejb;->d:Leir;

    new-instance p1, Lelg;

    invoke-direct {p1}, Lelg;-><init>()V

    iput-object p1, p0, Lejb;->c:Lelg;

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
    .locals 3

    iget-object v0, p0, Lejb;->c:Lelg;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lelg;->f:Lltt;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lltt;->b()V

    iput-object v2, v0, Lelg;->f:Lltt;

    :cond_0
    iput-object v2, p0, Lejb;->c:Lelg;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 14

    iget-object v0, p0, Lejb;->c:Lelg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lejb;->d:Leir;

    iget-boolean v0, v0, Leir;->n:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lejb;->d:Leir;

    iget-object v0, v0, Leir;->i:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v0, v0, v5

    iget-object v6, p0, Lejb;->b:[F

    aput v2, v6, v1

    aput v4, v6, v3

    aput v0, v6, v5

    iget-object v0, p0, Lejb;->a:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lejb;->a:[F

    iget-object v2, p0, Lejb;->d:Leir;

    iget v4, v2, Leir;->b:F

    iget v2, v2, Leir;->c:F

    const/4 v6, 0x0

    invoke-static {v0, v1, v4, v2, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v8, 0x0

    iget-object v9, p0, Lejb;->a:[F

    const/4 v10, 0x0

    iget-object v0, p0, Lejb;->d:Leir;

    iget-object v11, v0, Leir;->f:[F

    const/4 v12, 0x0

    move-object v7, v9

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lejb;->c:Lelg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lejb;->d:Leir;

    iget v4, v2, Leir;->d:F

    neg-float v6, v4

    iget v2, v2, Leir;->e:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v2, v7

    div-float/2addr v4, v7

    neg-float v2, v2

    sget-object v9, Lelg;->a:[F

    div-float/2addr v6, v7

    aput v6, v9, v1

    aput v8, v9, v3

    aput v6, v9, v5

    const v3, -0x43dc28f6    # -0.01f

    add-float v10, v8, v3

    const/4 v11, 0x3

    aput v10, v9, v11

    const/4 v11, 0x4

    aput v4, v9, v11

    const/4 v12, 0x5

    aput v10, v9, v12

    const/4 v12, 0x6

    aput v6, v9, v12

    const/4 v12, 0x7

    aput v8, v9, v12

    const/16 v12, 0x8

    aput v4, v9, v12

    const/16 v12, 0x9

    aput v10, v9, v12

    const/16 v12, 0xa

    aput v4, v9, v12

    const/16 v12, 0xb

    aput v8, v9, v12

    const/16 v8, 0xc

    aput v6, v9, v8

    div-float/2addr v2, v7

    const v7, 0x3c23d70a    # 0.01f

    add-float v8, v2, v7

    add-float/2addr v3, v4

    add-float/2addr v7, v6

    const/16 v12, 0xd

    aput v10, v9, v12

    const/16 v12, 0xe

    aput v6, v9, v12

    const/16 v12, 0xf

    aput v8, v9, v12

    const/16 v12, 0x10

    aput v7, v9, v12

    const/16 v13, 0x11

    aput v10, v9, v13

    const/16 v13, 0x12

    aput v7, v9, v13

    const/16 v13, 0x13

    aput v10, v9, v13

    const/16 v13, 0x14

    aput v6, v9, v13

    const/16 v13, 0x15

    aput v8, v9, v13

    const/16 v13, 0x16

    aput v7, v9, v13

    const/16 v7, 0x17

    aput v8, v9, v7

    const/16 v7, 0x18

    aput v3, v9, v7

    const/16 v7, 0x19

    aput v10, v9, v7

    const/16 v7, 0x1a

    aput v3, v9, v7

    const/16 v7, 0x1b

    aput v8, v9, v7

    const/16 v7, 0x1c

    aput v4, v9, v7

    const/16 v7, 0x1d

    aput v10, v9, v7

    const/16 v7, 0x1e

    aput v4, v9, v7

    const/16 v7, 0x1f

    aput v10, v9, v7

    const/16 v7, 0x20

    aput v3, v9, v7

    const/16 v3, 0x21

    aput v8, v9, v3

    const/16 v3, 0x22

    aput v4, v9, v3

    const/16 v3, 0x23

    aput v8, v9, v3

    const/16 v3, 0x24

    aput v6, v9, v3

    const/16 v3, 0x25

    aput v8, v9, v3

    const/16 v3, 0x26

    aput v6, v9, v3

    const/16 v3, 0x27

    aput v2, v9, v3

    const/16 v3, 0x28

    aput v4, v9, v3

    const/16 v3, 0x29

    aput v2, v9, v3

    const/16 v3, 0x2a

    aput v6, v9, v3

    const/16 v3, 0x2b

    aput v8, v9, v3

    const/16 v3, 0x2c

    aput v4, v9, v3

    const/16 v3, 0x2d

    aput v2, v9, v3

    const/16 v2, 0x2e

    aput v4, v9, v2

    const/16 v2, 0x2f

    aput v8, v9, v2

    invoke-static {v9}, Lljr;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lelg;->b:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lejb;->c:Lelg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lejb;->a:[F

    iget-object v0, v0, Lelg;->c:[F

    invoke-static {v2, v1, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lejb;->c:Lelg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lejb;->b:[F

    iget-object v0, v0, Lelg;->e:[F

    invoke-static {v2, v1, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lejb;->c:Lelg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lelg;->f:Lltt;

    if-nez v2, :cond_1

    new-instance v2, Lltt;

    const-string v3, "attribute vec2 vertexAttrib;uniform mat4 projectionMatrix;uniform mat4 vertexTransform;void main() {  gl_Position = projectionMatrix * vertexTransform * vec4(vertexAttrib, 0., 1.);}"

    const-string v4, "precision mediump float;uniform vec4 fillColor;void main() {  gl_FragColor = fillColor;}"

    invoke-direct {v2, v3, v4}, Lltt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lelg;->f:Lltt;

    iget-object v2, v0, Lelg;->f:Lltt;

    const-string v3, "vertexTransform"

    invoke-virtual {v2, v3}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v2

    iput-object v2, v0, Lelg;->g:Loxq;

    iget-object v2, v0, Lelg;->f:Lltt;

    const-string v3, "projectionMatrix"

    invoke-virtual {v2, v3}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v2

    iput-object v2, v0, Lelg;->h:Loxq;

    iget-object v2, v0, Lelg;->f:Lltt;

    const-string v3, "fillColor"

    invoke-virtual {v2, v3}, Lltt;->d(Ljava/lang/String;)Loxq;

    move-result-object v2

    iput-object v2, v0, Lelg;->i:Loxq;

    iget-object v2, v0, Lelg;->f:Lltt;

    const-string v3, "vertexAttrib"

    invoke-virtual {v2, v3}, Lltt;->e(Ljava/lang/String;)Loxq;

    move-result-object v2

    iput-object v2, v0, Lelg;->j:Loxq;

    :cond_1
    iget-object v2, v0, Lelg;->f:Lltt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lltt;->a()V

    iget-object v3, v0, Lelg;->j:Loxq;

    invoke-virtual {v3}, Loxq;->e()V

    iget-object v3, v0, Lelg;->j:Loxq;

    iget-object v4, v0, Lelg;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4, v5}, Loxq;->f(Ljava/nio/FloatBuffer;I)V

    iget-object v3, v0, Lelg;->g:Loxq;

    iget-object v4, v0, Lelg;->c:[F

    invoke-virtual {v3, v4}, Loxq;->a([F)V

    iget-object v3, v0, Lelg;->h:Loxq;

    iget-object v4, v0, Lelg;->d:[F

    invoke-virtual {v3, v4}, Loxq;->a([F)V

    iget-object v3, v0, Lelg;->i:Loxq;

    iget-object v4, v0, Lelg;->e:[F

    invoke-virtual {v3, v4}, Loxq;->b([F)V

    iget-object v3, v0, Lelg;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    div-int/2addr v3, v5

    invoke-static {v11, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v0, v0, Lelg;->j:Loxq;

    invoke-virtual {v0}, Loxq;->d()V

    invoke-virtual {v2}, Lltt;->c()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(II)V
    .locals 9

    iget-object v0, p0, Lejb;->c:Lelg;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    iget-object v1, v0, Lelg;->d:[F

    div-float v4, p1, p2

    const/4 v2, 0x0

    neg-float v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v7

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :cond_0
    return-void
.end method
