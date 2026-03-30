.class public final Lqqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field private a:Z

.field private b:J

.field private final c:Landroid/util/ArrayMap;

.field private final d:Lrtm;

.field private final e:Ltxm;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;Ltxm;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqqz;->c:Landroid/util/ArrayMap;

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

    :goto_2
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqqz;->e:Ltxm;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    new-instance v0, Llwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lqqz;->d:Lrtm;

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

    :goto_e
    invoke-direct {v0, v1}, Llwi;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lqrg;->H(Lrtm;)Lrtm;

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

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 20

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v0, Lqqz;->d:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    const/16 v2, 0x8

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v2, v0, Lqqz;->e:Ltxm;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    const-wide/16 v6, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_b
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v8}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v8

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

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v2, v0, Lqqz;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    iput-boolean v3, v0, Lqqz;->a:Z

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

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    move-object/from16 v0, p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    :goto_15
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_32

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    iget-wide v6, v0, Lqqz;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_20
    iget-object v1, v0, Lqqz;->c:Landroid/util/ArrayMap;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    monitor-enter v1

    nop

    nop

    :try_start_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    :goto_23
    if-ge v11, v0, :cond_18

    nop

    nop

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Lqrb;

    nop

    nop

    const-wide/32 v13, 0xf4240

    nop

    nop

    nop

    nop

    nop

    move/from16 p1, v11

    nop

    nop

    nop

    div-long v10, v4, v13

    nop

    long-to-int v10, v10

    nop

    nop

    nop

    nop

    nop

    int-to-long v13, v10

    nop

    nop

    nop

    const-wide/16 v16, 0x0

    nop

    nop

    nop

    nop

    cmp-long v11, v13, v16

    nop

    nop

    nop

    nop

    if-gez v11, :cond_3

    nop

    nop

    nop

    nop

    iget v10, v12, Lqrb;->i:I

    nop

    nop

    nop

    add-int/2addr v10, v3

    nop

    nop

    iput v10, v12, Lqrb;->i:I

    nop

    nop

    nop

    nop

    goto/16 :goto_27

    nop

    :cond_3
    iget v11, v12, Lqrb;->h:I

    nop

    nop

    nop

    nop

    add-int/2addr v11, v3

    nop

    iput v11, v12, Lqrb;->h:I

    nop

    cmp-long v11, v8, v16

    nop

    nop

    const/16 v15, 0x1e

    nop

    nop

    nop

    const/16 v2, 0x14

    nop

    nop

    if-lez v11, :cond_f

    nop

    nop

    nop

    nop

    nop

    sub-long v18, v4, v8

    nop

    const-wide/32 v16, 0xf4240

    nop

    nop

    nop

    div-long v13, v18, v16

    nop

    nop

    nop

    nop

    long-to-int v13, v13

    nop

    nop

    nop

    nop

    nop

    iget v14, v12, Lqrb;->n:I

    nop

    nop

    nop

    if-ge v14, v13, :cond_4

    nop

    nop

    iput v13, v12, Lqrb;->n:I

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v14, v12, Lqrb;->e:[I

    nop

    nop

    nop

    if-ge v13, v2, :cond_9

    nop

    nop

    nop

    nop

    const/16 v11, -0x14

    nop

    nop

    nop

    if-lt v13, v11, :cond_5

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0x14

    nop

    nop

    nop

    shr-int/lit8 v11, v13, 0x1

    nop

    nop

    add-int/lit8 v11, v11, 0xc

    nop

    goto/16 :goto_24

    nop

    nop

    :cond_5
    const/16 v11, -0x1e

    nop

    nop

    nop

    nop

    if-lt v13, v11, :cond_6

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0x1e

    nop

    nop

    div-int/lit8 v13, v13, 0x5

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v13, 0xa

    nop

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :cond_6
    const/16 v11, -0x64

    nop

    nop

    nop

    if-lt v13, v11, :cond_7

    nop

    add-int/lit8 v13, v13, 0x64

    nop

    nop

    div-int/lit8 v13, v13, 0xa

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v13, 0x3

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :cond_7
    const/16 v11, -0xc8

    nop

    nop

    if-lt v13, v11, :cond_8

    nop

    nop

    nop

    nop

    add-int/lit16 v13, v13, 0xc8

    nop

    nop

    div-int/lit8 v13, v13, 0x32

    nop

    nop

    nop

    nop

    add-int/lit8 v11, v13, 0x1

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_8
    const/4 v11, 0x0

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_9
    if-ge v13, v15, :cond_a

    nop

    nop

    add-int/lit8 v13, v13, -0x14

    nop

    div-int/lit8 v13, v13, 0x5

    nop

    nop

    nop

    add-int/lit8 v11, v13, 0x20

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    :cond_a
    const/16 v11, 0x64

    nop

    nop

    if-ge v13, v11, :cond_b

    nop

    add-int/lit8 v13, v13, -0x1e

    nop

    nop

    div-int/lit8 v13, v13, 0xa

    nop

    add-int/lit8 v11, v13, 0x22

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_b
    const/16 v11, 0xc8

    nop

    if-ge v13, v11, :cond_c

    nop

    add-int/lit8 v13, v13, -0x32

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x64

    nop

    nop

    div-int/lit8 v13, v13, 0x64

    nop

    add-int/lit8 v13, v13, 0x29

    nop

    move v11, v13

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    :cond_c
    const/16 v11, 0x3e8

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x64

    nop

    nop

    nop

    nop

    if-ge v13, v11, :cond_d

    nop

    nop

    add-int/lit16 v13, v13, -0xc8

    nop

    div-int/lit8 v13, v13, 0x64

    nop

    nop

    nop

    add-int/lit8 v11, v13, 0x2b

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const/16 v11, 0x33

    nop

    nop

    :goto_24
    aget v13, v14, v11

    nop

    add-int/2addr v13, v3

    nop

    aput v13, v14, v11

    nop

    nop

    nop

    cmp-long v11, v4, v8

    nop

    nop

    nop

    nop

    if-lez v11, :cond_e

    nop

    nop

    iget v11, v12, Lqrb;->f:I

    nop

    nop

    nop

    add-int/2addr v11, v3

    nop

    nop

    nop

    nop

    iput v11, v12, Lqrb;->f:I

    nop

    nop

    nop

    nop

    iget v11, v12, Lqrb;->k:I

    nop

    nop

    add-int/2addr v11, v10

    nop

    nop

    nop

    nop

    nop

    iput v11, v12, Lqrb;->k:I

    nop

    nop

    nop

    nop

    :cond_e
    cmp-long v11, v4, v6

    nop

    nop

    nop

    nop

    nop

    if-lez v11, :cond_10

    nop

    iget v11, v12, Lqrb;->g:I

    nop

    nop

    add-int/2addr v11, v3

    nop

    nop

    iput v11, v12, Lqrb;->g:I

    nop

    nop

    nop

    nop

    iget v11, v12, Lqrb;->l:I

    nop

    add-int/2addr v11, v10

    nop

    nop

    iput v11, v12, Lqrb;->l:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    :cond_f
    cmp-long v11, v4, v6

    nop

    nop

    nop

    nop

    nop

    if-lez v11, :cond_10

    nop

    iget v11, v12, Lqrb;->f:I

    nop

    nop

    add-int/2addr v11, v3

    nop

    iput v11, v12, Lqrb;->f:I

    nop

    iget v11, v12, Lqrb;->k:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v11, v10

    nop

    nop

    nop

    nop

    nop

    iput v11, v12, Lqrb;->k:I

    nop

    nop

    nop

    nop

    nop

    :cond_10
    :goto_25
    iget-object v11, v12, Lqrb;->d:[I

    nop

    nop

    nop

    if-gt v10, v2, :cond_12

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    if-lt v10, v2, :cond_11

    nop

    nop

    nop

    nop

    shr-int/lit8 v13, v10, 0x1

    nop

    add-int/lit8 v13, v13, -0x2

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_11
    div-int/lit8 v13, v10, 0x4

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    :cond_12
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    if-gt v10, v15, :cond_13

    nop

    nop

    div-int/lit8 v13, v10, 0x5

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0x4

    nop

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    :cond_13
    const/16 v13, 0x64

    nop

    nop

    nop

    if-gt v10, v13, :cond_14

    nop

    div-int/lit8 v13, v10, 0xa

    nop

    nop

    add-int/lit8 v13, v13, 0x7

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    :cond_14
    const/16 v13, 0xc8

    nop

    nop

    if-gt v10, v13, :cond_15

    nop

    div-int/lit8 v13, v10, 0x32

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0xf

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    :cond_15
    const/16 v13, 0x3e8

    nop

    nop

    nop

    nop

    nop

    if-gt v10, v13, :cond_16

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 v13, v10, 0x64

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, 0x11

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_16
    const/16 v13, 0x1b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget v14, v11, v13

    nop

    nop

    nop

    add-int/2addr v14, v3

    nop

    aput v14, v11, v13

    nop

    nop

    nop

    iget v11, v12, Lqrb;->i:I

    nop

    nop

    nop

    nop

    add-int v11, v11, p3

    nop

    nop

    iput v11, v12, Lqrb;->i:I

    nop

    nop

    nop

    iget v11, v12, Lqrb;->j:I

    nop

    nop

    if-ge v11, v10, :cond_17

    nop

    nop

    nop

    iput v10, v12, Lqrb;->j:I

    nop

    nop

    nop

    :cond_17
    iget v11, v12, Lqrb;->m:I

    nop

    nop

    add-int/2addr v11, v10

    nop

    iput v11, v12, Lqrb;->m:I

    nop

    nop

    :goto_27
    add-int/lit8 v11, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_23

    nop

    :cond_18
    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_28
    if-eqz v2, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v1, p2

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

    :goto_2a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    const v4, 0x4e6e6b28    # 1.0E9f

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2c
    const/16 v2, 0x9

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2e
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

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

    :goto_2f
    float-to-long v4, v4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v8, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-wide v4, v0, Lqqz;->b:J

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v2, v0, Lqqz;->e:Ltxm;

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

    :goto_34
    if-nez v2, :cond_1a

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

    :cond_1a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    cmp-long v2, v4, v6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_38
    iput-wide v4, v0, Lqqz;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    div-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
