.class public final Ljns;
.super Ljmh;
.source "PG"


# instance fields
.field public final e:I

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Ljns;->i(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Ljns;->i(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, v2}, Ljns;->i(ILjava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljns;->h(ILjava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    iput v0, p0, Ljns;->c:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const/high16 p0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "uniform mat4 uMvpMatrix;                   \nattribute vec4 aPosition;                   \nattribute vec2 aTextureCoord;               \nvarying vec2 vTexCoord;                     \nvoid main()                                 \n{                                           \n   gl_Position = uMvpMatrix * aPosition;    \n   vTexCoord = aTextureCoord;               \n}                                           \n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ljns;->d:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljns;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Ljns;->h(ILjava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    const-string v2, "uAlpha"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Ljns;->f:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Ljns;->b:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "uMvpMatrix"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljmh;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Ljns;->d:I

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

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    const v1, 0x18

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljmh;->c()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Ljns;->d:I

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

    :goto_18
    const-string v1, "aPosition"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    const-string v1, "aTextureCoord"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Ljns;->e:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    const-string v1, "precision mediump float;                            \nuniform float uBrightness;                          \nuniform float uAlpha;                               \nvarying vec2 vTexCoord;                             \nuniform sampler2D sTexture;                         \nvoid main()                                         \n{                                                   \n  gl_FragColor = texture2D( sTexture, vTexCoord);   \n  gl_FragColor.rgb *= uBrightness * uAlpha;         \n  gl_FragColor.a = gl_FragColor.a * uAlpha;         \n}                                                   \n"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_1e
    const-string v1, "uBrightness"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Ljns;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Ljns;->d:I

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

    :goto_23
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Ljns;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop
.end method


# virtual methods
.method public final j(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    iget p0, p0, Ljns;->f:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/32 :goto_0

    nop

    nop
.end method
