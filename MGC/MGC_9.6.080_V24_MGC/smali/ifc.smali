.class public final Lifc;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lpge;

.field final synthetic b:Lify;

.field final synthetic c:Lifx;


# direct methods
.method public constructor <init>(Lpge;Lify;Lifx;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p2, p0, Lifc;->b:Lify;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lifc;->a:Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object p3, p0, Lifc;->c:Lifx;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final cJ()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lifc;->a:Lpge;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_2

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

.method public final cV()V
    .locals 10

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    nop

    nop

    :goto_2
    iget-object p0, p0, Lifc;->a:Lpge;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lifc;->a:Lpge;

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

    nop

    :goto_6
    rem-int v0, v0, v1

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

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

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

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lprv;

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lprv;

    nop

    nop

    const/4 v7, 0x2

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lprv;

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    nop

    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    iput-object v7, v1, Ligo;->f:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    iput-object v8, v1, Ligo;->g:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    iput-object v9, v1, Ligo;->h:Ljava/nio/ByteBuffer;

    nop

    iput v3, v1, Ligo;->a:I

    nop

    nop

    iput v2, v1, Ligo;->b:I

    nop

    invoke-interface {v0}, Lprw;->c()I

    move-result v2

    nop

    nop

    iput v2, v1, Ligo;->c:I

    nop

    invoke-interface {v0}, Lprw;->b()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Ligo;->d:I

    nop

    nop

    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v2

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getPixelStride()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    iput v2, v1, Ligo;->i:I

    nop

    nop

    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getPixelStride()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v2, v3

    nop

    nop

    nop

    nop

    iput v2, v1, Ligo;->j:I

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lprv;->getRowStride()I

    move-result v2

    nop

    nop

    nop

    invoke-interface {v4}, Lprv;->getPixelStride()I

    move-result v3

    nop

    nop

    nop

    nop

    div-int/2addr v2, v3

    nop

    iput v2, v1, Ligo;->k:I

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ligo;->e:Lprw;

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->close()V

    :cond_0
    iput-object v0, v1, Ligo;->e:Lprw;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v1

    nop

    goto :goto_a

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_d

    nop

    :goto_10
    :try_start_2
    iget-object v0, p0, Lifc;->a:Lpge;

    nop

    nop

    iget-object v1, p0, Lifc;->b:Lify;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lify;->e()Lphh;

    move-result-object v1

    nop

    nop

    invoke-interface {v0, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v0

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Lifc;->c:Lifx;

    nop

    iget-object v1, v1, Lifx;->q:Ligc;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ligc;->l:Landroid/opengl/GLSurfaceView;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    if-nez v2, :cond_4

    nop

    const-string v2, "ghostViewfinder"

    nop

    nop

    nop

    nop

    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    move-object v2, v3

    nop

    nop

    :cond_4
    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v2

    nop

    nop

    iget-object v4, v1, Ligc;->l:Landroid/opengl/GLSurfaceView;

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    nop

    const-string v4, "ghostViewfinder"

    nop

    invoke-static {v4}, Luch;->b(Ljava/lang/String;)V

    goto :goto_11

    nop

    nop

    nop

    :cond_5
    move-object v3, v4

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Ligc;->d:Ligo;

    nop

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v3

    nop

    iget-boolean v4, v1, Ligo;->l:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    invoke-interface {v0}, Lprw;->close()V

    goto/16 :goto_a

    nop

    :cond_6
    invoke-interface {v0}, Lprw;->g()Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    nop

    const/4 v6, 0x3

    nop

    if-lt v5, v6, :cond_1

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
