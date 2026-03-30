.class public final Llqi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqk;


# instance fields
.field private final a:Ltbs;

.field private final b:Lqjw;

.field private c:Llql;

.field private d:Llqj;


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()Llqk;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object v0

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

    :try_start_0
    monitor-exit p0

    nop

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

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llqi;->c:Llql;

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Llqi;->a:Ltbs;

    nop

    new-instance v1, Llql;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Llql;-><init>(Ltbs;)V

    iput-object v1, p0, Llqi;->c:Llql;

    nop

    :cond_0
    iget-object v0, p0, Llqi;->c:Llql;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

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
.end method

.method public constructor <init>(Ltbs;Lqjw;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llqi;->a:Ltbs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Llqi;->b:Lqjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

.method private final declared-synchronized f875135777c17da3cef2ea6eeff5be29m()Llqj;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_8

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llqi;->d:Llqj;

    nop

    if-nez v0, :cond_1

    nop

    iget-object v0, p0, Llqi;->b:Lqjw;

    nop

    nop

    nop

    nop

    new-instance v1, Llqj;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Llqj;-><init>(Lqjw;)V

    iput-object v1, p0, Llqi;->d:Llqj;

    nop

    nop

    :cond_1
    iget-object v0, p0, Llqi;->d:Llqj;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lprw;)V
    .locals 25

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    move-object v1, v0

    nop

    nop

    :try_start_0
    invoke-virtual {v7}, Lqia;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_3
    const-string v1, "Unsupported image format: "

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    if-nez v4, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Llqi;->f875135777c17da3cef2ea6eeff5be29m()Llqj;

    move-result-object v0

    nop

    iget-object v1, v0, Llqj;->a:Lqjw;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lqjw;->b:Lqht;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    invoke-direct {v2, v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-static {v1, v2}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v1, v5}, Lqjs;->j(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqjs;

    move-result-object v7

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, v0, Llqj;->a:Lqjw;

    nop

    nop

    sget-object v8, Lqjw;->a:[F

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6, v7, v8}, Lqjw;->c(Lqiu;Lqjs;[F)V

    invoke-static {v1}, Lqoe;->B(Lqht;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    :try_start_6
    invoke-virtual {v7}, Lqia;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v6}, Lqia;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto/32 :goto_28

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :cond_1
    :try_start_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    const-string v1, "No transformer available to transform image!"

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

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

    nop

    :goto_7
    goto/32 :goto_34

    nop

    nop

    :goto_8
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v7, v0

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    throw v1

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    move-object v2, v0

    nop

    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    check-cast v6, Lpng;

    nop

    nop

    nop

    nop

    iget v6, v6, Lpng;->a:I

    nop

    nop

    nop

    nop

    if-ne v5, v6, :cond_1

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    const/16 v6, 0x23

    nop

    nop

    nop

    nop

    nop

    if-ne v5, v6, :cond_1

    nop

    nop

    invoke-direct/range {p0 .. p0}, Llqi;->33f5b80483094659737b73d90f80a8a4m()Llqk;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v7

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    check-cast v8, Lpng;

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Lpng;->a:I

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    if-ne v7, v8, :cond_2

    nop

    nop

    move v7, v10

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_2
    move v7, v9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v7}, La;->au(Z)V

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v7

    nop

    if-ne v7, v6, :cond_3

    nop

    move v7, v10

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_3
    move v7, v9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v7}, La;->au(Z)V

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v7

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lpng;

    nop

    iget v8, v8, Lpng;->b:I

    nop

    nop

    nop

    if-ne v7, v8, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v7

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    check-cast v8, Lpng;

    nop

    nop

    nop

    iget v8, v8, Lpng;->c:I

    nop

    nop

    nop

    if-ne v7, v8, :cond_9

    nop

    check-cast v5, Llql;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Llql;->b:Llto;

    nop

    nop

    nop

    nop

    move-object v5, v0

    nop

    nop

    nop

    nop

    check-cast v5, Lpng;

    nop

    nop

    iget v5, v5, Lpng;->a:I

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-ne v7, v5, :cond_4

    nop

    nop

    nop

    move v5, v10

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    move v5, v9

    nop

    :goto_13
    invoke-static {v5}, La;->au(Z)V

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x22

    nop

    nop

    nop

    if-eq v5, v7, :cond_5

    nop

    nop

    nop

    move v5, v10

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_5
    move v5, v9

    nop

    nop

    :goto_14
    invoke-static {v5}, La;->au(Z)V

    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lpng;

    nop

    iget v5, v5, Lpng;->a:I

    nop

    nop

    nop

    nop

    if-eq v5, v7, :cond_6

    nop

    nop

    nop

    move v5, v10

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_6
    move v5, v9

    nop

    :goto_15
    invoke-static {v5}, La;->au(Z)V

    new-instance v5, Lpck;

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v7

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v8

    nop

    nop

    invoke-direct {v5, v7, v8}, Lpck;-><init>(II)V

    move-object v7, v0

    nop

    nop

    nop

    check-cast v7, Lpng;

    nop

    iget v7, v7, Lpng;->c:I

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    check-cast v8, Lpng;

    nop

    nop

    iget v8, v8, Lpng;->b:I

    nop

    nop

    nop

    nop

    new-instance v11, Lpck;

    nop

    invoke-direct {v11, v8, v7}, Lpck;-><init>(II)V

    invoke-virtual {v5, v11}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is different with destination image size "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-static {v7, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v2

    nop

    if-ne v2, v6, :cond_8

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v1

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpng;

    nop

    invoke-virtual {v2}, Lpng;->k()Lryb;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v11

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lprv;

    nop

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lprv;

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lprv;

    nop

    nop

    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    nop

    nop

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lprv;

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v16

    nop

    nop

    nop

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v17

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getPixelStride()I

    move-result v18

    nop

    nop

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lprv;

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v21

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getRowStride()I

    move-result v22

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lprv;

    nop

    nop

    invoke-interface {v1}, Lprv;->getRowStride()I

    move-result v23

    nop

    nop

    nop

    nop

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    invoke-interface {v1}, Lprv;->getPixelStride()I

    move-result v24

    nop

    nop

    nop

    invoke-static/range {v11 .. v24}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->copyYUV_420_888Native(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    check-cast v0, Lpng;

    nop

    nop

    invoke-virtual {v0}, Lpng;->k()Lryb;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_c

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lprv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_16

    nop

    nop

    :cond_7
    const-string v0, "Copy failed."

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :cond_9
    move-object v1, v5

    nop

    nop

    nop

    check-cast v1, Llql;

    nop

    nop

    iget-object v1, v1, Llql;->a:Ltbs;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, p1

    nop

    nop

    invoke-virtual {v1, v2}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Llql;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v5, Llql;->a:Ltbs;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v1}, Lsgj;->v(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object v1

    nop

    nop

    nop

    sget v2, Lcom/google/googlex/gcam/imageproc/Resample;->a:I

    nop

    iget-wide v1, v1, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v5

    nop

    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    cmp-long v0, v1, v7

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    move v0, v10

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    :cond_a
    move v0, v9

    nop

    :goto_17
    const-string v11, "src is null"

    nop

    nop

    invoke-static {v0, v11}, Lrrf;->m(ZLjava/lang/Object;)V

    cmp-long v0, v5, v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    move v9, v10

    nop

    :cond_b
    const-string v0, "dst is null"

    nop

    invoke-static {v9, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-static {v1, v2, v0, v5, v6}, Lcom/google/googlex/gcam/imageproc/Resample;->resampleLanczosYuvImpl(JFJ)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_18
    move-object v6, v0

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    :goto_1c
    goto :goto_21

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    move-object v5, v0

    nop

    :try_start_f
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v1

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_a

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_d

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    invoke-interface/range {p1 .. p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    nop

    :try_start_10
    invoke-interface/range {p2 .. p2}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_37

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    if-nez v3, :cond_e

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_e
    :try_start_11
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v0, p2

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

    :goto_2a
    goto/16 :goto_1e

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2c
    move-object v1, v0

    nop

    :try_start_12
    invoke-virtual {v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_10
    :try_start_13
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_30
    const-string v2, "source image size "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_31
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_33

    nop

    :goto_32
    if-nez v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_12
    :try_start_14
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_29

    nop

    nop

    :goto_35
    move-object v1, v0

    nop

    nop

    :try_start_15
    invoke-virtual {v6}, Lqia;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_36
    move-object v2, v0

    nop

    nop

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :catchall_a
    move-exception v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :catchall_b
    move-exception v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v1, v0

    nop

    nop

    :try_start_17
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto/32 :goto_2f

    nop

    nop
.end method
