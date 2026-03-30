.class public final Llky;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Llky;->b:I

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llky;->a:Ljava/lang/Object;

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
.end method

.method public constructor <init>(Lqht;II)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llky;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const-string p2, "#version 320 es\n#extension GL_EXT_YUV_target : enable\nprecision highp float;\nuniform highp __samplerExternal2DY2YEXT uImgTex;\nin vec2 vTexCoord;\nout vec4 outColor;\nvoid main() {\n    outColor = vec4(yuv_2_rgb(texture(uImgTex, vTexCoord).rgb,\n                              itu_601_full_range), 1.0);\n}"

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Lqlr;

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

    :goto_6
    invoke-direct {p3, p1}, Lqjc;-><init>(Lqht;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const-string p2, "#version 320 es\n#extension GL_EXT_YUV_target : enable\nprecision highp float;\nuniform highp __samplerExternal2DY2YEXT uImgTex;\nin vec2 vTexCoord;\nlayout (yuv) out vec3 outColor;\nvoid main() {\n    outColor = texture(uImgTex, vTexCoord).rgb;\n}"

    nop

    nop

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

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3, v1}, Lqjc;->a(Lqlt;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    new-instance v1, Lqlr;

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

    :goto_f
    const v0, 0xd

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Lqjs;->b(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, v0}, Lqjs;->h(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    if-eq p2, v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "#version 320 es\nin vec4 aPosition;\nin vec2 aTexCoord;\nuniform mat4 uTransform;\nout vec2 vTexCoord;\nvoid main() {\n  vTexCoord = aTexCoord;\n  gl_Position = uTransform * aPosition;\n}"

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

    :goto_15
    invoke-direct {v1, v0}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_16
    new-instance p3, Lqjc;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p3, p2}, Lqjc;->a(Lqlt;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p3}, Lqjc;->b()Lqjs;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1

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

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_1d
    invoke-direct {p2, p1}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput p3, p0, Llky;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Llkz;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    iget-object p0, p0, Llky;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const-string v1, "Unable to close asset file"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    return-void

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

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    :try_start_0
    check-cast p0, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const/16 v2, 0xf10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lqia;

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

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_8

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

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Llky;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_18
    invoke-virtual {p0}, Lqia;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Llky;->b:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
