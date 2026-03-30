.class public final Ljnt;
.super Ljmh;
.source "PG"


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Ljnt;->a:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iput v0, p0, Ljnt;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ljnt;->d:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Ljnt;->i(ILjava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljnt;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    iget v0, p0, Ljnt;->d:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ljnt;->h(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    const-string v1, "precision highp float;                            \nuniform float uAlphaFactor;                         \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  vec4 texcolor;                                    \n  texcolor = texture2D( sTexture, vTexCoord );      \n  texcolor.a = uAlphaFactor;                        \n  gl_FragColor = texcolor;                          \n}                                                   \n"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Ljnt;->e:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "aPosition"

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

    :goto_d
    iget p0, p0, Ljnt;->e:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    invoke-static {v0, v1}, Ljnt;->h(ILjava/lang/String;)I

    move-result v0

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

    nop

    :goto_10
    const-string v1, "uMvpMatrix"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    const-string v1, "uAlphaFactor"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Ljnt;->c:I

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    const-string v1, "aTextureCoord"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Ljnt;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    const v0, 0x3

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

    :goto_19
    const v1, 0x18

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v1}, Ljnt;->i(ILjava/lang/String;)I

    move-result v0

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

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Ljnt;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljmh;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ljmh;->c()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x3f666666    # 0.9f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Ljnt;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final j(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget p0, p0, Ljnt;->e:I

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
