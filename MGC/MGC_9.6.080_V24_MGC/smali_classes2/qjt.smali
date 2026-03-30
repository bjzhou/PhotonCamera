.class final Lqjt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lqht;

.field final synthetic b:Lqhe;


# direct methods
.method public constructor <init>(Lqht;Lqhe;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqjt;->a:Lqht;

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

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p2, p0, Lqjt;->b:Lqhe;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 11

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lqjt;->b:Lqhe;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lqjm;->close()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lqjt;->a:Lqht;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x20

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

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Lqht;->e()Lqjx;

    move-result-object v0

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

    :goto_d
    const v1, 0x16

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, p0, v1}, Lqjq;->h(Lqjx;Lqhe;I)Lqjq;

    move-result-object p0

    nop

    :try_start_0
    invoke-virtual {p0}, Lqjq;->e()V

    iget-object v0, p0, Lqjq;->a:Lqjx;

    nop

    sget-object v1, Lqjx;->a:Lqjx;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lqjx;->b(Lqjx;)Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lqjq;->d()V

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    iget-boolean v0, p0, Lqjq;->f:Z

    nop

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iget v2, p0, Lqjq;->c:I

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lqjq;->g:Lqhe;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->b()I

    move-result v5

    nop

    nop

    nop

    iget-object v0, p0, Lqjq;->g:Lqhe;

    nop

    nop

    nop

    iget-object v0, v0, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqfe;->a()I

    move-result v6

    nop

    nop

    const/16 v9, 0x1401

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    const v4, 0x8058

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    const/16 v8, 0x1908

    nop

    nop

    nop

    nop

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iput-boolean v1, p0, Lqjq;->f:Z

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lqiz;->a()Z

    move-result v0

    nop

    nop

    iget v2, p0, Lqjq;->d:I

    nop

    nop

    invoke-static {v0, v2}, Lqjq;->g(ZI)V

    iput-boolean v1, p0, Lqjq;->f:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x812f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "createTexture(RGBA8888)"

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

    :goto_1
    return-object p0

    nop

    nop
.end method
