.class public final Liwz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Lcom/google/android/libraries/vision/opengl/Texture;

.field public c:I

.field public d:Z

.field public final e:[F

.field private final f:[F

.field private g:Ljava/nio/FloatBuffer;

.field private final h:[F

.field private final i:[F

.field private final j:[F

.field private final k:[F

.field private l:Lrcx;

.field private m:Luoj;

.field private n:Luoj;

.field private o:Luoj;

.field private p:Luoj;

.field private q:Luoj;

.field private r:Luoj;

.field private s:Luoj;

.field private t:Luoj;


# direct methods
.method public constructor <init>()V
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Liwz;->g:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v3, p0, Liwz;->d:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-void

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
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_9
    iput-object v1, p0, Liwz;->f:[F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v4, p0, Liwz;->e:[F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0x10

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_14

    nop

    nop

    :goto_f
    iput-object v0, p0, Liwz;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    new-array v4, v4, [F

    nop

    nop

    nop

    nop

    fill-array-data v4, :array_2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v2, p0, Liwz;->j:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Liwz;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_15
    iput v3, p0, Liwz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    iput-object v1, p0, Liwz;->i:[F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-array v2, v0, [F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Liwz;->k:[F

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-array v0, v0, [F

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    const v3, 0x812f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Liwz;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrcx;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Liwz;->l:Lrcx;

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Liwz;->e:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5f

    nop

    nop

    :goto_3
    const-string v0, "texture"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Liwz;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "#extension GL_OES_EGL_image_external : require \nprecision mediump float;uniform samplerExternalOES texture;uniform bool overrideColorActive;uniform vec4 overrideColor;varying vec2 texCoord;void main() {  vec4 texColor = texture2D(texture, texCoord);  gl_FragColor = (overrideColorActive && texColor.a > 0.01) ? overrideColor : texColor;}"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    iget-boolean v2, p0, Liwz;->d:Z

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Liwz;->o:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "vertexTransform"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_b
    const v0, 0x7

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Liwz;->t:Luoj;

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v2, p0, Liwz;->c:I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Liwz;->m:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "attribute vec2 vertexAttrib;attribute vec2 texCoordAttrib;varying vec2 texCoord;uniform mat4 projectionMatrix;uniform mat4 vertexTransform;uniform mat4 textureTransform;void main() {  texCoord = (textureTransform * vec4(texCoordAttrib, 0., 1.)).xy;  gl_Position = projectionMatrix * vertexTransform * vec4(vertexAttrib, 0., 1.);}"

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Luoj;->f()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "texCoordAttrib"

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Liwz;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0x2803

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

    nop

    nop

    :goto_18
    const/16 v1, 0x2802

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2, v3}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    :goto_1d
    iget-object v1, p0, Liwz;->t:Luoj;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_20
    const-string v0, "precision mediump float;uniform sampler2D texture;uniform bool overrideColorActive;uniform vec4 overrideColor;varying vec2 texCoord;void main() {  vec4 texColor = texture2D(texture, texCoord);  gl_FragColor = (overrideColorActive && texColor.a > 0.01) ? overrideColor : texColor;}"

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Liwz;->r:Luoj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, "projectionMatrix"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Liwz;->p:Luoj;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x8d65

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_28
    iget-object v2, p0, Liwz;->g:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v0}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getType()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v0, p0, Liwz;->s:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Liwz;->q:Luoj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_6b

    nop

    :goto_30
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Luoj;->f()V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_32
    iget-object v2, p0, Liwz;->k:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lrcx;->c()V

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Liwz;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_36
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Luoj;->e()V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Liwz;->s:Luoj;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Luoj;->e()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->GNaoegtVx:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Liwz;->m:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v3, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3f
    const-string v1, "overrideColorActive"

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_40
    iget-object v2, p0, Liwz;->j:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Liwz;->l:Lrcx;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Liwz;->t:Luoj;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_45
    iget-object p0, p0, Liwz;->s:Luoj;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Liwz;->s:Luoj;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v4, 0xde1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v1, Lrcx;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v2, v3}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_4c
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto/32 :goto_17

    nop

    nop

    :goto_4d
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4f
    iget-object v1, p0, Liwz;->n:Luoj;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v4, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_4f

    nop

    nop

    :goto_52
    iget-object v2, p0, Liwz;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v1, v2, v0}, Lrcx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_54
    div-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_55
    const/4 v3, 0x0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v1, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Liwz;->t:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Lrcx;->a()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v1, v1, Luoj;->a:I

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5d
    const-string v1, "vertexAttrib"

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v1, v2}, Luoj;->d(Lcom/google/android/libraries/vision/opengl/Texture;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_60
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_61
    iget v2, p0, Liwz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v0, p0, Liwz;->q:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_63
    iput-object v0, p0, Liwz;->p:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-object v0, p0, Liwz;->n:Luoj;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v1, v2}, Luoj;->c([F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v1, p0, Liwz;->g:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput-object v0, p0, Liwz;->o:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6c
    iput-object v0, p0, Liwz;->r:Luoj;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6d
    const-string v1, "textureTransform"

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return-void

    nop

    :goto_6f
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Liwz;->l:Lrcx;

    nop

    nop

    goto/32 :goto_a

    nop

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

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

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

    :goto_1
    move v4, v6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/high16 v6, -0x40800000    # -1.0f

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    div-float v3, p1, p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Liwz;->k:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    neg-float v2, v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final d(FF)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    aput v0, v2, p1

    nop

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

    nop

    :goto_1
    div-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput p2, v2, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput v1, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x4

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

    :goto_9
    const/4 v1, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    aput p2, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    neg-float v0, p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    aput v0, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-static {v2}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_15
    aput p1, v2, p2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    aput p1, v2, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Liwz;->g:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    neg-float v1, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Liwz;->f:[F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    aput v1, v2, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr p2, v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e([F)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Liwz;->j:[F

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final f([F)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Liwz;->i:[F

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
