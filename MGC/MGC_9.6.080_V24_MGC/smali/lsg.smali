.class public final Llsg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field private final a:[F

.field private b:Z

.field private c:F

.field private d:Liyj;

.field private final e:Loeq;


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Loeq;->n()Loeq;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    const/16 v0, 0x100

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Llsg;->b:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    invoke-interface {p1, p4}, Liyj;->c(Z)V

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    if-nez p2, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Llsg;->c:F

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p3, :cond_2

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    :goto_13
    goto :goto_8

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_16
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    new-array p1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    iput-object p1, p0, Llsg;->d:Liyj;

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

    :goto_19
    iput-object p1, p0, Llsg;->a:[F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Llsg;->e:Loeq;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNimaV2;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p1}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNimaV2;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p3, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    const/16 v0, 0x120

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

    :goto_24
    iput-object v1, p0, Llsg;->d:Liyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

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

    :goto_26
    invoke-direct {p1}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;-><init>()V

    :goto_27
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;Llsc;)F
    .locals 21

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :cond_0
    :goto_7
    :try_start_0
    iget-object v0, v1, Llsg;->a:[F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    iput v3, v1, Llsg;->c:F

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    :goto_8
    move-object/from16 v1, p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_a
    move-object/from16 v0, p2

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

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, v1, Llsg;->d:Liyj;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    iget-object v2, v0, Llsc;->q:[Llsf;

    nop

    nop

    nop

    nop

    nop

    array-length v2, v2

    nop

    nop

    nop

    nop

    nop

    if-lez v2, :cond_2

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    :cond_2
    iget-object v2, v1, Llsg;->e:Loeq;

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v0, Llsc;->c:J

    nop

    nop

    nop

    invoke-virtual {v2, v4, v5}, Loeq;->d(J)Z

    move-result v2

    nop

    nop

    iget v4, v1, Llsg;->c:F

    nop

    nop

    nop

    nop

    nop

    cmpl-float v4, v4, v3

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    if-lez v4, :cond_3

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    move v2, v5

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_3
    move v2, v6

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v2, v1, Llsg;->b:Z

    nop

    nop

    nop

    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    const-string v2, "AestheticFrameQualityScorer.getFrameScore"

    nop

    nop

    nop

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v0, Llsc;->o:Landroid/graphics/Rect;

    nop

    nop

    iget-object v0, v0, Llsc;->t:Landroid/graphics/Rect;

    nop

    nop

    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    if-lez v7, :cond_4

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    nop

    if-lez v7, :cond_4

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    if-lez v7, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    nop

    if-lez v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    mul-float/2addr v7, v4

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    nop

    int-to-float v8, v8

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    mul-float/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    nop

    div-float/2addr v7, v8

    nop

    nop

    nop

    div-float/2addr v0, v2

    nop

    add-float/2addr v7, v0

    nop

    nop

    mul-float/2addr v4, v7

    nop

    nop

    :cond_4
    move v10, v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->g()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lprv;

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lprv;

    nop

    nop

    nop

    iget-object v7, v1, Llsg;->d:Liyj;

    nop

    if-eqz v7, :cond_5

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->c()I

    move-result v8

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->b()I

    move-result v9

    nop

    nop

    invoke-interface {v2}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    nop

    invoke-interface {v2}, Lprv;->getPixelStride()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprv;->getRowStride()I

    move-result v13

    nop

    nop

    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lprv;->getPixelStride()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lprv;->getRowStride()I

    move-result v16

    nop

    nop

    invoke-interface {v0}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    nop

    invoke-interface {v0}, Lprv;->getPixelStride()I

    move-result v18

    nop

    nop

    invoke-interface {v0}, Lprv;->getRowStride()I

    move-result v19

    nop

    nop

    nop

    nop

    iget-object v0, v1, Llsg;->a:[F

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v20, v0

    nop

    nop

    nop

    nop

    invoke-interface/range {v7 .. v20}, Liyj;->a(IIFLjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F

    move-result v0

    nop

    iput v0, v1, Llsg;->c:F

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_5
    iget-object v0, v1, Llsg;->a:[F

    nop

    nop

    nop

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    iput v3, v1, Llsg;->c:F

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_6
    iget v0, v1, Llsg;->c:F

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

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

    nop

    :goto_f
    throw v0

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    return v3

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Lrss;
    .locals 5

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const v1, 0x13

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

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

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
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Llsg;->a:[F

    nop

    array-length v1, v0

    nop

    if-eqz v1, :cond_0

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    :goto_d
    if-ge v2, v1, :cond_1

    nop

    aget v4, v0, v2

    nop

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    nop

    nop

    add-float/2addr v3, v4

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_1
    float-to-double v0, v3

    nop

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    nop

    cmpg-double v0, v0, v2

    nop

    if-gez v0, :cond_2

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_2
    iget-object v0, p0, Llsg;->a:[F

    nop

    nop

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, [F

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_5

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized c()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Llsg;->b:Z

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    throw v0

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llsg;->d:Liyj;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Liyj;->b()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Llsg;->d:Liyj;

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

    nop

    nop

    :goto_2
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

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

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
.end method
