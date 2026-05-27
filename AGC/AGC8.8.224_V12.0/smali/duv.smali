.class public final Lduv;
.super Ljava/lang/Object;

# interfaces
.implements Ldsy;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ldsx;

.field public c:I

.field private final d:[F

.field private final e:[J

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Lduu;

.field private final j:Ldut;

.field private k:Z

.field private final l:I

.field private final m:Lduw;


# direct methods
.method public constructor <init>(Ldsx;IIIILduu;Lduw;Ldut;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lduv;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lduv;->c:I

    iput-boolean v0, p0, Lduv;->k:Z

    iput-object p1, p0, Lduv;->b:Ldsx;

    iput-object p7, p0, Lduv;->m:Lduw;

    iput-object p8, p0, Lduv;->j:Ldut;

    iput p4, p0, Lduv;->f:I

    mul-int p3, p3, p2

    new-array p1, p3, [F

    iput-object p1, p0, Lduv;->d:[F

    new-array p1, p2, [J

    iput-object p1, p0, Lduv;->e:[J

    iput p2, p0, Lduv;->g:I

    iput p3, p0, Lduv;->h:I

    iput p5, p0, Lduv;->l:I

    iput-object p6, p0, Lduv;->i:Lduu;

    return-void
.end method

.method private final i()Z
    .locals 2

    iget-boolean v0, p0, Lduv;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lduv;->k:Z

    iget-object v0, p0, Lduv;->i:Lduu;

    invoke-interface {v0, p0}, Lduu;->a(Lduv;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private static final j(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method

.method private static final k(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x2

    neg-int p0, p0

    return p0
.end method


# virtual methods
.method public final a(J)F
    .locals 8

    iget v0, p0, Lduv;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v0, "valueAt() only applicable to 1D features!"

    invoke-static {v2, v0}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lduv;->c:I

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    iget-object v4, p0, Lduv;->e:[J

    invoke-static {v4, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2

    iget v4, p0, Lduv;->l:I

    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    packed-switch v5, :pswitch_data_0

    monitor-exit v0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {v2}, Lduv;->k(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lduv;->c:I

    add-int/2addr v3, v4

    invoke-static {v2}, Lduv;->j(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Lduv;->d:[F

    aget p1, p1, v1

    monitor-exit v0

    return p1

    :cond_2
    iget-object v3, p0, Lduv;->e:[J

    aget-wide v4, v3, v1

    sub-long/2addr p1, v4

    aget-wide v6, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double p1, p1

    sub-long/2addr v6, v4

    long-to-double v3, v6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, p1

    :try_start_1
    iget-object v5, p0, Lduv;->d:[F

    aget v1, v5, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v6

    :try_start_2
    aget v1, v5, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    add-double/2addr v3, p1

    :try_start_3
    monitor-exit v0

    double-to-float p1, v3

    return p1

    :pswitch_1
    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lduv;->d:[F

    invoke-static {v2}, Lduv;->k(I)I

    move-result p2

    aget v3, p1, p2

    :goto_1
    monitor-exit v0

    return v3

    :pswitch_2
    if-ltz v2, :cond_4

    iget-object p1, p0, Lduv;->d:[F

    aget v3, p1, v2

    :cond_4
    monitor-exit v0

    return v3

    :pswitch_3
    invoke-static {v2}, Lduv;->k(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lduv;->c:I

    add-int/2addr v3, v4

    invoke-static {v2}, Lduv;->j(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lduv;->e:[J

    aget-wide v4, v3, v1

    aget-wide v6, v3, v2

    iget-object v3, p0, Lduv;->d:[F

    sub-long v4, p1, v4

    sub-long/2addr v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    aget p1, v3, v1

    monitor-exit v0

    return p1

    :goto_3
    return v3

    :cond_6
    const/4 p1, 0x0

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()J
    .locals 3

    iget-object v0, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lduv;->c:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lduv;->e:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v2, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(J)Ldsv;
    .locals 19

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    iget v0, v1, Lduv;->l:I

    iget-object v8, v1, Lduv;->a:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget v2, v1, Lduv;->c:I

    if-nez v2, :cond_0

    iget-object v0, v1, Lduv;->b:Ldsx;

    invoke-static {v0, v3, v4}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object v0

    monitor-exit v8

    goto/16 :goto_6

    :cond_0
    iget-object v5, v1, Lduv;->e:[J

    const/4 v6, 0x0

    invoke-static {v5, v6, v2, v3, v4}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-int/lit8 v5, v0, -0x1

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    packed-switch v5, :pswitch_data_0

    move-object/from16 v17, v8

    :try_start_1
    iget-object v0, v1, Lduv;->b:Ldsx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/16 :goto_5

    :pswitch_0
    const/4 v5, 0x1

    :try_start_2
    invoke-static {v5}, Lmoz;->p(Z)V

    invoke-static {v2}, Lduv;->k(I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v7, v1, Lduv;->c:I

    add-int/2addr v7, v0

    invoke-static {v2}, Lduv;->j(I)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v0, :cond_1

    :try_start_3
    iget-object v2, v1, Lduv;->b:Ldsx;

    iget-object v0, v1, Lduv;->d:[F

    iget-object v6, v1, Lduv;->j:Ldut;

    invoke-interface {v6, v5}, Ldut;->a(I)I

    move-result v6

    iget-object v5, v1, Lduv;->m:Lduw;

    iget v7, v5, Lduw;->a:I

    move-wide/from16 v3, p1

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_6

    :cond_1
    :try_start_4
    iget-object v2, v1, Lduv;->e:[J

    aget-wide v9, v2, v5

    sub-long v11, v3, v9

    aget-wide v13, v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    long-to-double v11, v11

    sub-long/2addr v13, v9

    long-to-double v9, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v9

    :try_start_5
    iget-object v2, v1, Lduv;->b:Ldsx;

    iget-object v7, v1, Lduv;->d:[F

    iget-object v9, v1, Lduv;->j:Ldut;

    invoke-interface {v9, v5}, Ldut;->a(I)I

    move-result v5

    invoke-interface {v9, v0}, Ldut;->a(I)I

    move-result v0

    iget-object v9, v1, Lduv;->m:Lduw;

    iget v9, v9, Lduw;->a:I

    new-array v10, v9, [F

    :goto_0
    if-ge v6, v9, :cond_2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v11

    add-int v15, v5, v6

    aget v15, v7, v15

    move-object/from16 v16, v2

    float-to-double v1, v15

    add-int v15, v0, v6

    aget v15, v7, v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v11

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v1

    add-double/2addr v13, v7

    double-to-float v1, v13

    :try_start_6
    aput v1, v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_0

    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v17, v8

    new-instance v0, Ldsv;

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4, v10}, Ldsv;-><init>(Ldsx;J[F)V

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v8

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v17, v8

    if-ne v2, v0, :cond_3

    move-object/from16 v1, p0

    :try_start_7
    iget-object v0, v1, Lduv;->b:Ldsx;

    invoke-static {v0, v3, v4}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object v0

    monitor-exit v17

    goto/16 :goto_6

    :cond_3
    move-object/from16 v1, p0

    invoke-static {v2}, Lduv;->k(I)I

    move-result v0

    iget-object v2, v1, Lduv;->b:Ldsx;

    iget-object v5, v1, Lduv;->d:[F

    iget-object v6, v1, Lduv;->j:Ldut;

    invoke-interface {v6, v0}, Ldut;->a(I)I

    move-result v6

    iget-object v0, v1, Lduv;->m:Lduw;

    iget v7, v0, Lduw;->a:I

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    monitor-exit v17

    goto/16 :goto_6

    :pswitch_2
    move-object/from16 v17, v8

    if-ltz v2, :cond_4

    iget-object v0, v1, Lduv;->b:Ldsx;

    iget-object v5, v1, Lduv;->d:[F

    iget-object v6, v1, Lduv;->j:Ldut;

    invoke-interface {v6, v2}, Ldut;->a(I)I

    move-result v6

    iget-object v2, v1, Lduv;->m:Lduw;

    iget v7, v2, Lduw;->a:I

    move-object v2, v0

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lduv;->b:Ldsx;

    invoke-static {v0, v3, v4}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object v0

    :goto_2
    monitor-exit v17

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v17, v8

    invoke-static {v2}, Lduv;->k(I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v1, Lduv;->c:I

    add-int/2addr v6, v0

    invoke-static {v2}, Lduv;->j(I)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lduv;->e:[J

    aget-wide v7, v2, v5

    aget-wide v10, v2, v0

    sub-long v12, v3, v7

    sub-long v3, v10, v3

    cmp-long v2, v12, v3

    if-gez v2, :cond_5

    iget-object v6, v1, Lduv;->b:Ldsx;

    iget-object v9, v1, Lduv;->d:[F

    iget-object v0, v1, Lduv;->j:Ldut;

    invoke-interface {v0, v5}, Ldut;->a(I)I

    move-result v10

    iget-object v0, v1, Lduv;->m:Lduw;

    iget v11, v0, Lduw;->a:I

    invoke-static/range {v6 .. v11}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v9, v1, Lduv;->b:Ldsx;

    iget-object v12, v1, Lduv;->d:[F

    iget-object v2, v1, Lduv;->j:Ldut;

    invoke-interface {v2, v0}, Ldut;->a(I)I

    move-result v13

    iget-object v0, v1, Lduv;->m:Lduw;

    iget v14, v0, Lduw;->a:I

    invoke-static/range {v9 .. v14}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    :goto_3
    monitor-exit v17

    goto :goto_6

    :pswitch_4
    move-object/from16 v17, v8

    invoke-static {v2}, Lduv;->k(I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v1, Lduv;->c:I

    add-int/2addr v6, v0

    invoke-static {v2}, Lduv;->j(I)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lduv;->e:[J

    aget-wide v6, v2, v5

    aget-wide v8, v2, v0

    sub-long v6, v3, v6

    sub-long/2addr v8, v3

    cmp-long v2, v6, v8

    if-gez v2, :cond_6

    iget-object v2, v1, Lduv;->b:Ldsx;

    iget-object v0, v1, Lduv;->d:[F

    iget-object v6, v1, Lduv;->j:Ldut;

    invoke-interface {v6, v5}, Ldut;->a(I)I

    move-result v6

    iget-object v5, v1, Lduv;->m:Lduw;

    iget v7, v5, Lduw;->a:I

    move-wide/from16 v3, p1

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v2, v1, Lduv;->b:Ldsx;

    iget-object v5, v1, Lduv;->d:[F

    iget-object v6, v1, Lduv;->j:Ldut;

    invoke-interface {v6, v0}, Ldut;->a(I)I

    move-result v6

    iget-object v0, v1, Lduv;->m:Lduw;

    iget v7, v0, Lduw;->a:I

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v0

    :goto_4
    monitor-exit v17

    goto :goto_6

    :goto_5
    invoke-static {v0, v3, v4}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object v0

    monitor-exit v17

    :goto_6
    return-object v0

    :cond_7
    move-object/from16 v17, v8

    const/4 v0, 0x0

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v17, v8

    :goto_7
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ldsv;
    .locals 8

    iget-object v0, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lduv;->c:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lduv;->b:Ldsx;

    iget-object v3, p0, Lduv;->e:[J

    add-int/lit8 v1, v1, -0x1

    aget-wide v4, v3, v1

    iget-object v6, p0, Lduv;->d:[F

    iget-object v3, p0, Lduv;->j:Ldut;

    invoke-interface {v3, v1}, Ldut;->a(I)I

    move-result v1

    iget-object v3, p0, Lduv;->m:Lduw;

    iget v7, v3, Lduw;->a:I

    move-wide v3, v4

    move-object v5, v6

    move v6, v1

    invoke-static/range {v2 .. v7}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lduv;->b:Ldsx;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ldsv;->c(Ldsx;J)Ldsv;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lduv;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(JI)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-gtz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lduv;->e:[J

    iget v6, p0, Lduv;->c:I

    invoke-static {v5, v2, v6, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    invoke-static {p1}, Lduv;->j(I)I

    move-result p1

    move p2, p1

    :goto_0
    iget v2, p0, Lduv;->c:I

    if-ge p2, v2, :cond_3

    add-int v2, p1, p3

    if-ge p2, v2, :cond_3

    iget-object v2, p0, Lduv;->e:[J

    aget-wide v6, v2, p2

    cmp-long v2, v6, v3

    if-lez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lduv;->b:Ldsx;

    iget-object v8, p0, Lduv;->d:[F

    iget-object v2, p0, Lduv;->j:Ldut;

    invoke-interface {v2, p2}, Ldut;->a(I)I

    move-result v9

    iget-object v2, p0, Lduv;->m:Lduw;

    iget v10, v2, Lduw;->a:I

    invoke-static/range {v5 .. v10}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lduv;->e:[J

    iget v6, p0, Lduv;->c:I

    invoke-static {v5, v2, v6, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result p1

    invoke-static {p1}, Lduv;->k(I)I

    move-result p1

    if-gez p1, :cond_2

    monitor-exit v1

    return-object v0

    :cond_2
    move p2, p1

    :goto_1
    if-ltz p2, :cond_3

    sub-int v2, p1, p3

    if-le p2, v2, :cond_3

    iget-object v2, p0, Lduv;->e:[J

    aget-wide v6, v2, p2

    cmp-long v2, v6, v3

    if-ltz v2, :cond_3

    iget-object v5, p0, Lduv;->b:Ldsx;

    iget-object v8, p0, Lduv;->d:[F

    iget-object v2, p0, Lduv;->j:Ldut;

    invoke-interface {v2, p2}, Ldut;->a(I)I

    move-result v9

    iget-object v2, p0, Lduv;->m:Lduw;

    iget v10, v2, Lduw;->a:I

    invoke-static/range {v5 .. v10}, Ldsv;->d(Ldsx;J[FII)Ldsv;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final g(JF)V
    .locals 4

    iget-object v0, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lduv;->c:I

    iget v2, p0, Lduv;->g:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lduv;->j:Ldut;

    invoke-interface {v2, v1}, Ldut;->b(I)I

    move-result v2

    iget v3, p0, Lduv;->h:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lduv;->d:[F

    aput p3, v3, v2

    iget-object p3, p0, Lduv;->e:[J

    aput-wide p1, p3, v1

    iget-object p1, p0, Lduv;->m:Lduw;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lduw;->a(I)I

    iget p1, p0, Lduv;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lduv;->c:I

    iput-boolean p2, p0, Lduv;->k:Z

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lduv;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lduv;->g(JF)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs h(J[F)V
    .locals 5

    iget-object v0, p0, Lduv;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lduv;->c:I

    iget v2, p0, Lduv;->g:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lduv;->j:Ldut;

    array-length v3, p3

    invoke-interface {v2, v1}, Ldut;->b(I)I

    move-result v1

    add-int v2, v1, v3

    iget v4, p0, Lduv;->h:I

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lduv;->d:[F

    iget-object v4, p0, Lduv;->m:Lduw;

    invoke-virtual {v4, v3}, Lduw;->a(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p3, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lduv;->e:[J

    iget v1, p0, Lduv;->c:I

    aput-wide p1, p3, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    iput v1, p0, Lduv;->c:I

    iput-boolean p1, p0, Lduv;->k:Z

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-direct {p0}, Lduv;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lduv;->h(J[F)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
