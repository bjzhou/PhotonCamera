.class final Lqjj;
.super Lqiy;
.source "PG"


# instance fields
.field final synthetic e:Lqjf;

.field final synthetic f:I

.field final synthetic g:Lqlt;


# direct methods
.method public constructor <init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILqhe;Lqjf;ILqlt;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p7}, Lqiy;-><init>(Lqjx;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;ILqhe;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p8, p0, Lqjj;->e:Lqjf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p9, p0, Lqjj;->f:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p10, p0, Lqjj;->g:Lqlt;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()Lqfv;
    .locals 4

    goto/32 :goto_e

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

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v2, v3}, Lqfv;->a(Ljava/util/concurrent/Executor;Lqeu;)Lqfs;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    iget-object p0, p0, Lqjj;->g:Lqlt;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    :try_start_0
    iget-object v1, p0, Lqjj;->e:Lqjf;

    nop

    invoke-interface {v1}, Lqjf;->i()V

    invoke-static {v0}, Lqjk;->e(I)V

    iget v1, p0, Lqjj;->f:I

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lqjk;->d(I)V

    iget-object v1, p0, Lqjj;->g:Lqlt;

    nop

    nop

    invoke-interface {v1}, Lqlt;->a()Lqfv;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    new-instance v3, Lqex;

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

    :goto_9
    new-instance v0, Lqfv;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    const v1, 0x10

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

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const v0, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Lqfv;-><init>(Lqfs;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lqlt;->a()Lqfv;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v2, Lstd;->a:Lstd;

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

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-direct {v3, v1, v0}, Lqex;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
