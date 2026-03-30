.class final Lqhp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lqhp;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

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

    :goto_1
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_3
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqjc;->a:Lqfc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lqjk;->b(Lqlt;)Lqjf;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lqfc;->close()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lqfc;->close()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lqjc;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    :catch_0
    move-exception v1

    nop

    :try_start_0
    invoke-virtual {v0}, Lqjm;->close()V

    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_11
    goto/32 :goto_18

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lqjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lqjn;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xc

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

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

    :goto_19
    iget-object p0, p0, Lqjc;->a:Lqfc;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    :cond_3
    :try_start_1
    iget v1, v0, Lqjn;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    nop

    new-instance v2, Lqkb;

    nop

    nop

    nop

    invoke-direct {v2, v1}, Lqkb;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lqhp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    throw v0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v2}, Lqjn;-><init>(I)V

    :try_start_2
    iget-object v2, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Lqjc;

    nop

    nop

    nop

    iget-object v2, v2, Lqjc;->a:Lqfc;

    nop

    nop

    nop

    invoke-virtual {v2}, Lqez;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_4

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lqlt;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lqlt;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lqjs;

    nop

    invoke-virtual {v3}, Lqia;->e()Lqjl;

    move-result-object v3

    nop

    nop

    check-cast v3, Lqjo;

    nop

    iget v4, v0, Lqjn;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v3, v3, Lqjm;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    goto :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    iget v2, v0, Lqjn;->b:I

    nop

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v1, [I

    nop

    nop

    nop

    nop

    nop

    iget v2, v0, Lqjn;->b:I

    nop

    nop

    nop

    nop

    const v3, 0x8b82

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v1, v4

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Lqjc;

    nop

    nop

    iget-object v1, v1, Lqjc;->a:Lqfc;

    nop

    nop

    nop

    invoke-virtual {v1}, Lqez;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lqlt;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lqlt;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lqjs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lqia;->e()Lqjl;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lqjo;

    nop

    nop

    iget v3, v0, Lqjn;->b:I

    nop

    nop

    iget v2, v2, Lqjm;->b:I

    nop

    nop

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glDetachShader(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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

    :goto_22
    invoke-static {p0}, Lqjk;->b(Lqlt;)Lqjf;

    move-result-object p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x1f

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_9

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lqjv;

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

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lqlt;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lqlt;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const-string p0, ")"

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

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lqjv;->b()Lqhe;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lqjv;->b()Lqhe;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lqjv;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lqhp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    :goto_19
    iget-object p0, p0, Lqjc;->a:Lqfc;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lqjc;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    const-string v1, "createCanvasForTexture(RGBA8888)"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1c

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "linkProgram(n="

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lqez;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    iget v0, p0, Lqhp;->b:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method
