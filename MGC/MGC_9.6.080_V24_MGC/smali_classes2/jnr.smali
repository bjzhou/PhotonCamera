.class public final Ljnr;
.super Ljmh;
.source "PG"


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljmh;->c()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ljnr;->e:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Ljnr;->a:I

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

    :goto_3
    iget v0, p0, Ljnr;->d:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Ljnr;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "precision mediump float;                            \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord);   \n  gl_FragColor.a = gl_FragColor.a * uAlphaFactor;   \n}                                                   \n"

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

    :goto_6
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljnr;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Ljnr;->i(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ljnr;->h(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "uAlphaFactor"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    const-string v1, "aTextureCoord"

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

    :goto_10
    iget v0, p0, Ljnr;->d:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Ljnr;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_13
    iput v0, p0, Ljnr;->c:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Ljnr;->d:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Ljnr;->e:I

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
    invoke-static {v0, v1}, Ljnr;->h(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1}, Ljnr;->i(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Ljnr;->d:I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->ustKSFyveCcpzsK:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    invoke-direct {p0}, Ljmh;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

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

    :goto_22
    const-string v1, "aPosition"

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    const v0, 0x3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xf

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

    nop

    nop
.end method


# virtual methods
.method public final j(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Ljnr;->e:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method
