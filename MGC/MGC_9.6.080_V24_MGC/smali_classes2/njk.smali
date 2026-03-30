.class public final Lnjk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnrm;


# instance fields
.field private final a:Lqjb;

.field private final b:Lqjy;

.field private final c:Lqht;

.field private final d:Lqjw;

.field private final e:Lpdf;

.field private final f:Lnji;

.field private g:Lqjv;

.field private final h:Lqjs;

.field private final i:Lqjs;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lqia;->close()V

    goto/32 :goto_19

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnjk;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    iput-object v0, p0, Lnjk;->g:Lqjv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    :goto_6
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const-string v1, "closeTexture"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    :goto_14
    iget-object v0, p0, Lnjk;->g:Lqjv;

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

    :goto_15
    iget-object v0, p0, Lnjk;->e:Lpdf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnjk;->g:Lqjv;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lnji;Lpdf;)V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    goto/32 :goto_20

    nop

    :goto_1
    aput-object v1, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lnjk;->g(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lqjw;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lnjk;->f:Lnji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Liha;->a()Lqjb;

    move-result-object p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p2, "#version 320 es\nprecision highp float;\nin vec2 texCoord;\nout vec4 outColor;\nvoid main() {\n  outColor = vec4(0,0,0,1);\n}\n"

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    iput-object p3, p0, Lnjk;->a:Lqjb;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lnjk;->h:Lqjs;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p2, Liha;->d:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lnjk;->b:Lqjy;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    iget-object p2, p2, Liha;->c:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    new-instance p2, Liha;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    aput-object p2, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Lqka;->c([F)Lqka;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-static {p1, p2}, Lnjk;->g(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lnjk;->d:Lqjw;

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

    nop

    nop

    :goto_18
    iput-object p1, p0, Lnjk;->c:Lqht;

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p2}, Lqka;->b([F)Lqka;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p1}, Lqjw;-><init>(Lqht;)V

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    new-array v0, v0, [Lqka;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1d
    invoke-direct {p2, p1, p3}, Liha;-><init>(Lqht;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 p3, 0xc

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    :goto_20
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    iput-object p3, p0, Lnjk;->e:Lpdf;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_23
    invoke-static {p3, v0}, Lqjy;->e(Lqht;[Lqka;)Lqjy;

    move-result-object p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p3, p2, Liha;->a:Lqht;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Lnjk;->i:Lqjs;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_27
    const-string p2, "#version 320 es\n#extension GL_EXT_YUV_target : require\nprecision highp float;\nuniform float fade;\nuniform sampler2D uImgTex;\nin vec2 texCoord;\nlayout(yuv) out vec4 outColor;\nvoid main() {\n  outColor =     vec4(rgb_2_yuv(texture(uImgTex, texCoord).xyz * fade, itu_601_full_range), 1.0);\n}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_28
    const/4 v1, 0x1

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
.end method

.method private static g(Lqht;Ljava/lang/String;)Lqjs;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lqjs;->b(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Lqjc;->b()Lqjs;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, p0}, Lqjc;->a(Lqlt;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Lqlr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lqjc;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lqlr;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    invoke-static {p0, v0}, Lqjs;->h(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {v1, p0}, Lqjc;->a(Lqlt;)V

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "#version 320 es\nin vec4 aPosition;\nin vec2 aTexCoord;\nout vec2 texCoord;\nvoid main() {\n  texCoord = aTexCoord;\n  gl_Position = vec4(aPosition.xyz, aPosition.w);\n}"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, p0}, Lqjc;-><init>(Lqht;)V

    goto/32 :goto_a

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Lprw;Lprw;)Lnrl;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lnzk;->k(Lnrm;Lprw;Lprw;)Lnrl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Lpge;Lphh;Lpge;)Lnrl;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lnzk;->l(Lnrm;Lpge;Lphh;Lpge;)Lnrl;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final c()Lnrn;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lnrn;->i:Lnrn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnjk;->d:Lqjw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lnjk;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqjw;->close()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lqia;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnjk;->h:Lqjs;

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

    :goto_6
    invoke-virtual {v0}, Lqia;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnjk;->i:Lqjs;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lqht;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnjk;->c:Lqht;

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

.method public final synthetic e()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lnzk;->m(Lnrm;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic r()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final t(Lqiu;Lqjs;)Lnrl;
    .locals 10

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3
    invoke-direct {v3, p1}, Lqhf;-><init>(Lqfd;)V

    goto/32 :goto_17

    nop

    nop

    :goto_4
    iget-object v5, p0, Lnjk;->i:Lqjs;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iget-object v2, p0, Lnjk;->f:Lnji;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, p2}, Lqio;->n(Lqjs;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lnjk;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "uImgTex"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_f
    iput-object p1, p0, Lnjk;->g:Lqjv;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    invoke-virtual {v3}, Lqia;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v3, v2, Lnji;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_12
    new-instance v3, Lqlw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_48

    nop

    nop

    :goto_15
    invoke-virtual {v3, v1, v0}, Lqio;->e(Ljava/lang/String;F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lnjk;->g:Lqjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lnjk;->c:Lqht;

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

    :goto_18
    iget-object p1, p0, Lnjk;->e:Lpdf;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

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

    nop

    :goto_1a
    iget-object v4, p0, Lnjk;->a:Lqjb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    cmp-long v5, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v0, p1}, Lqio;->d(Ljava/lang/String;Lqjv;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, v3}, Lqjv;->g(Lqht;Lqhe;)Lqjv;

    move-result-object p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    move v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_1f
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lnjk;->e:Lpdf;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Lnjk;->f:Lnji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-wide v5, v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_35

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, v2, Lnji;->a:Loxv;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_65

    nop

    nop

    :goto_28
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lqiu;->g()Lqhe;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_2b
    move v5, v6

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

    nop

    :goto_2c
    iget-object v3, p0, Lnjk;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v1, v7}, Lqio;->b(Ljava/lang/String;I)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2f
    sget-object p0, Lnrl;->a:Lnrl;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_31
    iget-object v3, p0, Lnjk;->g:Lqjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Lnji;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3b

    nop

    nop

    :goto_34
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {p0}, Lnjk;->7ecc92917e9c4556cc19f457ddc41af8m()V

    :goto_37
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_38
    sget-object p0, Lnrl;->b:Lnrl;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_39
    const-string v4, "allocateTexture"

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1

    nop

    nop

    :goto_3b
    goto/32 :goto_57

    nop

    nop

    :goto_3c
    iput-wide v3, v2, Lnji;->c:J

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

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

    :goto_3e
    iget-object v0, v0, Lnji;->b:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v3, v5}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lnjk;->e:Lpdf;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Lnjk;->f:Lnji;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_43
    invoke-interface {p1}, Lpdf;->g()V

    :goto_44
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_45
    const-string v1, "fade"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v5}, La;->au(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v3, p1}, Lqlw;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v5, v7

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    :goto_4b
    invoke-static {v3, v4}, Lqio;->l(Lqjy;Lqjb;)Lqxk;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4d
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    :goto_50
    cmp-long v9, v5, v7

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string v1, "aPosition"

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

    :goto_52
    const v0, 0x20

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_53
    new-instance v3, Lqhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v3, p0, Lnjk;->b:Lqjy;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v3, v7

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_57
    const-string v0, "aTexCoord"

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_58
    goto :goto_56

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v0, Ljava/lang/Float;

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

    :goto_5b
    const-string v3, "capture effect"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmp-long v5, v5, v7

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

    :goto_5d
    iget-wide v5, v2, Lnji;->c:J

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v2, :cond_5

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

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v3}, Lrrf;->x(Z)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_62
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_64
    move-wide v5, v7

    nop

    nop

    :goto_65
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v3}, Lqjs;->l(Lqlt;)Lqjs;

    move-result-object v3

    nop

    nop

    :try_start_1
    iget-object v4, p0, Lnjk;->b:Lqjy;

    nop

    nop

    nop

    iget-object v5, p0, Lnjk;->a:Lqjb;

    nop

    invoke-static {v4, v5}, Lqio;->l(Lqjy;Lqjb;)Lqxk;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lnjk;->h:Lqjs;

    nop

    nop

    invoke-virtual {v4, v5}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4, v1, v7}, Lqio;->b(Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v6}, Lqio;->b(Ljava/lang/String;I)V

    invoke-virtual {v4, v3}, Lqio;->n(Lqjs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_67
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_68
    if-eqz v9, :cond_6

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_69
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, p0, Lnjk;->f:Lnji;

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

    :goto_6b
    iget-object v2, v2, Lnji;->a:Loxv;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p1, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v3, v0, v6}, Lqio;->b(Ljava/lang/String;I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-wide v5, v2, Lnji;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-gez v5, :cond_7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v3, p0, Lnjk;->g:Lqjv;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v3}, Lqia;->close()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p1, p1, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
