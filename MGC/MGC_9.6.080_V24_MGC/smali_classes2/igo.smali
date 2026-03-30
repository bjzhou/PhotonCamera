.class public final Ligo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lprw;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/nio/ByteBuffer;

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field private final m:Loyd;

.field private final n:[F

.field private final o:Ljava/nio/FloatBuffer;

.field private final p:[F

.field private final q:Ljava/nio/FloatBuffer;

.field private r:Lrcx;

.field private final s:[F

.field private t:Lcom/google/android/libraries/vision/opengl/Texture;

.field private u:Lcom/google/android/libraries/vision/opengl/Texture;

.field private v:Lcom/google/android/libraries/vision/opengl/Texture;

.field private w:Luoj;

.field private x:Luoj;

.field private y:Luoj;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    iget v2, p0, Ligo;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Ligo;->d:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ligo;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Ligo;->d:I

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Ligo;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Ligo;->u:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

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

    :goto_12
    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

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

    :goto_14
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ligo;->t:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, p0, Ligo;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Ligo;->v:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loyd;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ligo;->p:[F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ligo;->m:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ligo;->s:[F

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object v0

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

    :goto_7
    new-array v0, p1, [F

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Ligo;->n:[F

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

    :goto_a
    return-void

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
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_b
    new-array p1, p1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const/16 p1, 0x10

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iput p1, p0, Ligo;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Ligo;->o:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    iput p1, p0, Ligo;->d:I

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

    nop

    :goto_11
    new-array p1, p1, [F

    nop

    fill-array-data p1, :array_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Ligo;->q:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Ligo;->r:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const-string v1, "texCoordAttrib"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sget-object v1, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->LtmvqpRKx:Ljava/lang/String;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lrcx;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    iput-object v0, p0, Ligo;->r:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Ligo;->y:Luoj;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x9

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    iget-object v0, p0, Ligo;->r:Lrcx;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iput-object v0, p0, Ligo;->x:Luoj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Ligo;->w:Luoj;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    const-string v2, "precision mediump float;varying vec2 texCoord;uniform sampler2D y_texture;uniform sampler2D u_texture;uniform sampler2D v_texture;void main (void){  float r, g, b, y, u, v;  y = texture2D(y_texture, texCoord).r;  u = texture2D(u_texture, texCoord).r - 0.5;  v = texture2D(v_texture, texCoord).r - 0.5;  r = y + 1.13983*v;  g = y - 0.39465*u - 0.58060*v;  b = y + 2.03211*u;  gl_FragColor = vec4(r, g, b, 0.5);}"

    nop

    nop

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

    :goto_14
    const-string v1, "vertexAttrib"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    const-string v1, "attribute vec2 vertexAttrib;attribute vec2 texCoordAttrib;uniform mat4 uVertexTransform;varying vec2 texCoord;void main() {  texCoord = vec4(texCoordAttrib, 0., 1.).xy;  gl_Position = uVertexTransform * vec4(vertexAttrib, 0., 1.);}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_18
    invoke-direct {v0, v1, v2}, Lrcx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

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

    :goto_1d
    invoke-direct {p0}, Ligo;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ligo;->g:Ljava/nio/ByteBuffer;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    throw v0

    nop
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ligo;->h:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ligo;->f:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 21

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    :cond_1
    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ligo;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ligo;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ligo;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, v1, Ligo;->r:Lrcx;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    invoke-direct/range {p0 .. p0}, Ligo;->da190e616797844b591057d0190e7728m()V

    :cond_3
    iget-object v0, v1, Ligo;->t:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    if-eqz v0, :cond_c

    nop

    nop

    nop

    iget-object v2, v1, Ligo;->u:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ligo;->v:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    if-nez v2, :cond_4

    nop

    goto/16 :goto_14

    nop

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    iget v3, v1, Ligo;->d:I

    nop

    nop

    if-ne v2, v3, :cond_5

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v0

    nop

    nop

    iget v2, v1, Ligo;->c:I

    nop

    nop

    if-eq v0, v2, :cond_6

    nop

    nop

    nop

    nop

    :cond_5
    invoke-direct/range {p0 .. p0}, Ligo;->23ce148e54b083367f51e25c7971761em()V

    :cond_6
    iget v0, v1, Ligo;->a:I

    nop

    iget v2, v1, Ligo;->b:I

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    nop

    nop

    nop

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, v1, Ligo;->r:Lrcx;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrcx;->a()V

    :cond_7
    iget-object v0, v1, Ligo;->m:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lnbh;

    nop

    nop

    nop

    invoke-virtual {v0}, Lnbh;->d()Z

    move-result v2

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Ligo;->s:[F

    nop

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_9

    nop

    :cond_8
    iget-object v2, v1, Ligo;->s:[F

    nop

    nop

    nop

    nop

    iget v0, v0, Lnbh;->e:I

    nop

    nop

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v4, v0}, Landroid/opengl/Matrix;->setRotateEulerM2([FIFFF)V

    :goto_9
    iget-object v0, v1, Ligo;->w:Luoj;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ligo;->s:[F

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Luoj;->b([F)V

    :cond_9
    iget-object v0, v1, Ligo;->x:Luoj;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Luoj;->f()V

    :cond_a
    iget-object v0, v1, Ligo;->x:Luoj;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ligo;->o:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v4}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    iget-object v0, v1, Ligo;->y:Luoj;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Luoj;->f()V

    :cond_b
    iget-object v0, v1, Ligo;->y:Luoj;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Ligo;->q:Ljava/nio/FloatBuffer;

    nop

    nop

    invoke-virtual {v0, v2, v4}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    iget-object v0, v1, Ligo;->r:Lrcx;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lrcx;->a:I

    nop

    const-string v2, "u_texture"

    nop

    nop

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    iget-object v2, v1, Ligo;->r:Lrcx;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lrcx;->a:I

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->gpeGgOZ:Ljava/lang/String;

    nop

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    nop

    nop

    iget-object v5, v1, Ligo;->r:Lrcx;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Lrcx;->a:I

    nop

    nop

    nop

    nop

    const-string v6, "y_texture"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v5, 0x1

    nop

    nop

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, v1, Ligo;->i:I

    nop

    nop

    const/16 v2, 0xcf2

    nop

    nop

    nop

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget-object v0, v1, Ligo;->t:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->bind()V

    iget-object v0, v1, Ligo;->t:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v8

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v9

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ligo;->c()Ljava/nio/ByteBuffer;

    move-result-object v13

    nop

    nop

    const/16 v11, 0x1909

    nop

    const/16 v12, 0x1401

    nop

    nop

    nop

    nop

    const/16 v5, 0xde1

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    const/16 v7, 0x1909

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2801

    nop

    nop

    nop

    nop

    nop

    const v5, 0x46180400    # 9729.0f

    nop

    nop

    const/16 v6, 0xde1

    nop

    nop

    nop

    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v7, 0x2800

    nop

    nop

    nop

    nop

    invoke-static {v6, v7, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v8, 0x2802

    nop

    nop

    nop

    const v9, 0x47012f00    # 33071.0f

    nop

    invoke-static {v6, v8, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v10, 0x2803

    nop

    invoke-static {v6, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v11, 0x84c1

    nop

    nop

    nop

    nop

    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v11, v1, Ligo;->j:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget-object v11, v1, Ligo;->u:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/google/android/libraries/vision/opengl/Texture;->bind()V

    iget-object v11, v1, Ligo;->u:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v15

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v16

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ligo;->a()Ljava/nio/ByteBuffer;

    move-result-object v20

    nop

    nop

    const/16 v18, 0x190a

    nop

    nop

    const/16 v19, 0x1401

    nop

    const/16 v12, 0xde1

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    const/16 v14, 0x190a

    nop

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v7, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v8, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v9, 0x84c2

    nop

    nop

    nop

    nop

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v9, v1, Ligo;->k:I

    nop

    nop

    nop

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget-object v2, v1, Ligo;->v:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->bind()V

    iget-object v2, v1, Ligo;->v:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v14

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v15

    nop

    invoke-virtual/range {p0 .. p0}, Ligo;->b()Ljava/nio/ByteBuffer;

    move-result-object v19

    nop

    nop

    nop

    nop

    nop

    const/16 v17, 0x190a

    nop

    nop

    nop

    const/16 v18, 0x1401

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0xde1

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    const/16 v13, 0x190a

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v7, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x812f

    nop

    nop

    nop

    invoke-static {v6, v8, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v6, v10, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0xbe2

    nop

    nop

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    nop

    nop

    nop

    const/16 v5, 0x303

    nop

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v2, v1, Ligo;->o:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    nop

    div-int/2addr v2, v4

    nop

    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-object v0, v1, Ligo;->t:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    iget-object v0, v1, Ligo;->u:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    iget-object v0, v1, Ligo;->v:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->unbind()V

    iget-object v0, v1, Ligo;->y:Luoj;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Luoj;->e()V

    iget-object v0, v1, Ligo;->x:Luoj;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Luoj;->e()V

    iget-object v0, v1, Ligo;->r:Lrcx;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lrcx;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    monitor-exit p0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ligo;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
