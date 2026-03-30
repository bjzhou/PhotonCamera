.class public final Liwx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[F

.field private final b:[F

.field private c:Ljava/nio/FloatBuffer;

.field private final d:[F

.field private e:Ljava/nio/FloatBuffer;

.field private final f:[F

.field private g:Lrcx;

.field private h:Luoj;

.field private i:Luoj;

.field private j:Luoj;

.field private k:Luoj;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object v1, p0, Liwx;->e:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Liwx;->f:[F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/16 v0, 0x8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    iput-object v0, p0, Liwx;->b:[F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Liwx;->d:[F

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    new-array v0, v0, [F

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

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

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Liwx;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Liwx;->a:[F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lrcx;->b()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Luoj;->f()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    div-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Liwx;->c:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Liwx;->h:Luoj;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Liwx;->a:[F

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_9
    iget-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "projectionMatrix"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "vertexTransform"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_f
    iget-object v1, p0, Liwx;->k:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Liwx;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Liwx;->i:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lrcx;->a()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Luoj;->e()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    :goto_1b
    const-string v2, "precision mediump float;varying vec4 vertexColor;void main() {  gl_FragColor = vertexColor;}"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Liwx;->k:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Liwx;->e:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Luoj;->e()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    sget-object v1, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->zFSUbFZzeuhnSDu:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Liwx;->i:Luoj;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v2, v4}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Luoj;->f()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2, v3}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lrcx;->c()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1, v2}, Lrcx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/32 :goto_35

    nop

    nop

    :goto_31
    const-string v1, "vertexAttrib"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_32
    iget-object v1, p0, Liwx;->j:Luoj;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    iput-object v0, p0, Liwx;->h:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Liwx;->g:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Liwx;->k:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Liwx;->j:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Liwx;->j:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v0, p0, Liwx;->k:Luoj;

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Liwx;->g:Lrcx;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3f
    iget-object v2, p0, Liwx;->f:[F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v0, p0, Liwx;->j:Luoj;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v1, "vertexColorAttrib"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final c(FF)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    div-float v3, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Liwx;->f:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/high16 v6, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    move v4, v6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    neg-float v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop
.end method

.method public final d(FFFF)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    aput p4, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput p2, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Liwx;->c:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    aput p2, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    iget-object v0, p0, Liwx;->b:[F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    aput p4, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_17
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    aput p3, v0, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aput p3, v0, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final e([F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Liwx;->e:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
