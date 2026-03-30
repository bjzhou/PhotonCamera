.class public final synthetic Lqho;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqeu;


# instance fields
.field public final synthetic a:Lqlt;

.field public final synthetic b:Lqfd;


# direct methods
.method public synthetic constructor <init>(Lqlt;Lqfd;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqho;->b:Lqfd;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqho;->a:Lqlt;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-interface {v8}, Lqlt;->c()Ljava/lang/Object;

    move-result-object p1

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

    :goto_1
    filled-new-array {p1}, [I

    move-result-object p1

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

    :goto_2
    const v1, 0x20

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

    :goto_3
    invoke-interface {v7}, Lqjf;->f()Landroid/opengl/EGLDisplay;

    move-result-object v0

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

    :goto_4
    const v0, 0x20

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqho;->b:Lqfd;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v7}, Lqjf;->d()Landroid/opengl/EGLConfig;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v8}, Lqjh;-><init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Lqhe;Lqjf;Lqlt;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lqjh;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lqkd;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    invoke-interface {v7}, Lqjf;->f()Landroid/opengl/EGLDisplay;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Lqlt;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    check-cast v3, Landroid/opengl/EGLSurface;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v7}, Lqjf;->h()Lqjx;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const/16 p1, 0x3038

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v7}, Lqjf;->l()Lqhe;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x0

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

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_16
    invoke-interface {v7}, Lqjf;->d()Landroid/opengl/EGLConfig;

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    new-array p1, p1, [Lqes;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, v0, p1}, Lqkd;-><init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v7}, Lqjf;->e()Landroid/opengl/EGLContext;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    aput-object v2, p1, v4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

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

    :goto_20
    new-instance v8, Lqlu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    iget-object v2, p0, Lqho;->a:Lqlt;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v7, Lqjf;

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

    :goto_23
    move-object v7, p1

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

    :goto_24
    invoke-direct {v8, v1, p1}, Lqlu;-><init>(Lqlt;Ljava/lang/Iterable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, p0}, Lqoe;->D(Lqhe;Lqfe;)Lqhe;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_27
    move-object v0, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, v1, v3, p1, v4}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

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
.end method
