.class public final Llkb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field private final a:Lmrl;

.field private b:Z

.field private c:J

.field private final d:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lffe;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lffe;-><init>(I)V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Llkb;->a:Lmrl;

    iput-object p1, p0, Llkb;->d:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-boolean v2, v1, Llkb;->b:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, v1, Llkb;->b:Z

    iget-object v2, v1, Llkb;->a:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Llkb;->c:J

    :cond_0
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    iget-wide v6, v1, Llkb;->c:J

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v8

    iget-object v10, v1, Llkb;->d:Landroid/util/ArrayMap;

    monitor-enter v10

    :try_start_0
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_17

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Llkg;

    const-wide/32 v14, 0xf4240

    move/from16 p2, v12

    div-long v11, v4, v14

    long-to-int v12, v11

    int-to-long v14, v12

    const-wide/16 v18, 0x0

    cmp-long v11, v14, v18

    if-gez v11, :cond_2

    iget v11, v13, Llkg;->j:I

    add-int/2addr v11, v3

    iput v11, v13, Llkg;->j:I

    const/16 v12, 0x8

    goto/16 :goto_4

    :cond_2
    iget v11, v13, Llkg;->i:I

    add-int/2addr v11, v3

    iput v11, v13, Llkg;->i:I

    const/16 v14, 0xc8

    const/16 v15, 0x1e

    const/16 v2, 0x14

    cmp-long v20, v8, v18

    if-lez v20, :cond_e

    sub-long v18, v4, v8

    move/from16 v20, v12

    const-wide/32 v16, 0xf4240

    div-long v11, v18, v16

    long-to-int v12, v11

    iget v11, v13, Llkg;->o:I

    if-ge v11, v12, :cond_3

    iput v12, v13, Llkg;->o:I

    :cond_3
    iget-object v11, v13, Llkg;->f:[I

    if-ge v12, v2, :cond_8

    const/16 v2, -0x14

    if-lt v12, v2, :cond_4

    add-int/lit8 v12, v12, 0x14

    shr-int/lit8 v2, v12, 0x1

    add-int/lit8 v2, v2, 0xc

    goto :goto_1

    :cond_4
    const/16 v2, -0x1e

    if-lt v12, v2, :cond_5

    add-int/lit8 v12, v12, 0x1e

    div-int/lit8 v12, v12, 0x5

    add-int/lit8 v2, v12, 0xa

    goto :goto_1

    :cond_5
    const/16 v2, -0x64

    if-lt v12, v2, :cond_6

    add-int/lit8 v12, v12, 0x64

    div-int/lit8 v12, v12, 0xa

    add-int/lit8 v2, v12, 0x3

    goto :goto_1

    :cond_6
    const/16 v2, -0xc8

    if-lt v12, v2, :cond_7

    add-int/lit16 v12, v12, 0xc8

    div-int/lit8 v12, v12, 0x32

    add-int/lit8 v2, v12, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    if-ge v12, v15, :cond_9

    add-int/lit8 v12, v12, -0x14

    div-int/lit8 v12, v12, 0x5

    add-int/lit8 v2, v12, 0x20

    goto :goto_1

    :cond_9
    const/16 v2, 0x64

    if-ge v12, v2, :cond_a

    add-int/lit8 v12, v12, -0x1e

    div-int/lit8 v12, v12, 0xa

    add-int/lit8 v2, v12, 0x22

    goto :goto_1

    :cond_a
    if-ge v12, v14, :cond_b

    add-int/lit8 v12, v12, -0x32

    const/16 v2, 0x64

    div-int/2addr v12, v2

    add-int/lit8 v2, v12, 0x29

    goto :goto_1

    :cond_b
    const/16 v2, 0x3e8

    if-ge v12, v2, :cond_c

    add-int/lit16 v12, v12, -0xc8

    const/16 v2, 0x64

    div-int/2addr v12, v2

    add-int/lit8 v2, v12, 0x2b

    goto :goto_1

    :cond_c
    const/16 v2, 0x33

    :goto_1
    aget v12, v11, v2

    add-int/2addr v12, v3

    aput v12, v11, v2

    cmp-long v2, v4, v8

    if-lez v2, :cond_d

    iget v2, v13, Llkg;->g:I

    add-int/2addr v2, v3

    iput v2, v13, Llkg;->g:I

    iget v2, v13, Llkg;->l:I

    add-int v2, v2, v20

    iput v2, v13, Llkg;->l:I

    :cond_d
    cmp-long v2, v4, v6

    if-lez v2, :cond_f

    iget v2, v13, Llkg;->h:I

    add-int/2addr v2, v3

    iput v2, v13, Llkg;->h:I

    iget v2, v13, Llkg;->m:I

    add-int v2, v2, v20

    iput v2, v13, Llkg;->m:I

    goto :goto_2

    :cond_e
    move/from16 v20, v12

    cmp-long v2, v4, v6

    if-lez v2, :cond_f

    iget v2, v13, Llkg;->g:I

    add-int/2addr v2, v3

    iput v2, v13, Llkg;->g:I

    iget v2, v13, Llkg;->l:I

    add-int v2, v2, v20

    iput v2, v13, Llkg;->l:I

    :cond_f
    :goto_2
    iget-object v2, v13, Llkg;->e:[I

    move/from16 v11, v20

    const/16 v12, 0x14

    if-gt v11, v12, :cond_11

    const/16 v12, 0x8

    if-lt v11, v12, :cond_10

    shr-int/lit8 v14, v11, 0x1

    add-int/lit8 v14, v14, -0x2

    goto :goto_3

    :cond_10
    div-int/lit8 v14, v11, 0x4

    goto :goto_3

    :cond_11
    const/16 v12, 0x8

    if-gt v11, v15, :cond_12

    div-int/lit8 v14, v11, 0x5

    add-int/lit8 v14, v14, 0x4

    goto :goto_3

    :cond_12
    const/16 v15, 0x64

    if-gt v11, v15, :cond_13

    div-int/lit8 v14, v11, 0xa

    add-int/lit8 v14, v14, 0x7

    goto :goto_3

    :cond_13
    if-gt v11, v14, :cond_14

    div-int/lit8 v14, v11, 0x32

    add-int/lit8 v14, v14, 0xf

    goto :goto_3

    :cond_14
    const/16 v14, 0x3e8

    if-gt v11, v14, :cond_15

    div-int/lit8 v14, v11, 0x64

    add-int/lit8 v14, v14, 0x11

    goto :goto_3

    :cond_15
    const/16 v14, 0x1b

    :goto_3
    aget v15, v2, v14

    add-int/2addr v15, v3

    aput v15, v2, v14

    iget v2, v13, Llkg;->j:I

    add-int v2, v2, p3

    iput v2, v13, Llkg;->j:I

    iget v2, v13, Llkg;->k:I

    if-ge v2, v11, :cond_16

    iput v11, v13, Llkg;->k:I

    :cond_16
    iget v2, v13, Llkg;->n:I

    add-int/2addr v2, v11

    iput v2, v13, Llkg;->n:I

    :goto_4
    add-int/lit8 v2, p2, 0x1

    move v12, v2

    const/16 v2, 0x8

    goto/16 :goto_0

    :cond_17
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
