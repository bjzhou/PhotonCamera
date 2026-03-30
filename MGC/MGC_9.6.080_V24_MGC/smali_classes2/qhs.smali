.class final Lqhs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lqht;

.field final synthetic b:Lcom/google/android/libraries/oliveoil/gl/EGLImage;


# direct methods
.method public constructor <init>(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqhs;->b:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqhs;->a:Lqht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 11

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v8}, Lqjf;->e()Landroid/opengl/EGLContext;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenRenderbuffers(I[II)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v0 .. v10}, Lqji;-><init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILqhf;Lqjf;II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lqji;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    new-array v1, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    invoke-static {v0, v9}, Landroid/opengl/GLES30;->glBindRenderbuffer(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b()Lqfd;

    move-result-object v0

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

    nop

    :goto_9
    iget-object v1, p0, Lqhs;->b:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    move v6, v10

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    move-object v4, v5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    invoke-direct {v7, v0}, Lqhf;-><init>(Lqfd;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-static {v2, v3, v0, v9}, Landroid/opengl/GLES30;->glFramebufferRenderbuffer(IIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v3, 0x8ce0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    move-object v3, v4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lqhs;->a:Lqht;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_15
    aget v9, v1, v2

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

    nop

    :goto_16
    invoke-static {}, Lqjk;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    check-cast v8, Lqjf;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v8}, Lqjf;->d()Landroid/opengl/EGLConfig;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    const v2, 0x8d40

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    iget-wide v2, v1, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    const v0, 0x8d41

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

    nop

    :goto_21
    invoke-static {v2, v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->attachToRbo(J)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    move-object v5, v6

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v8}, Lqjf;->g()Landroid/opengl/EGLSurface;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lqia;->e()Lqjl;

    move-result-object p0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_26
    new-instance v7, Lqhf;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
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

    :goto_28
    move-object v2, v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    move-object v8, p0

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

    :goto_2a
    invoke-interface {v8}, Lqjf;->f()Landroid/opengl/EGLDisplay;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    invoke-interface {v8}, Lqjf;->h()Lqjx;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    invoke-static {v2, v10}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Lqht;->i()Lqjs;

    move-result-object p0

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

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const-string v1, "createCanvasForImage("

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqhs;->b:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->b()Lqfd;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, ")"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_12
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
