.class public final Leah;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lkmn;

.field private final c:Leaj;

.field private final d:I

.field private final e:Z

.field private f:Lkmm;

.field private g:Z

.field private volatile h:Leak;

.field private final i:I

.field private final j:Ldqx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/gyro/motionestimator/GyroBasedMotionEstimator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leah;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkmn;Ldqx;Leaj;III[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leah;->b:Lkmn;

    iput-object p2, p0, Leah;->j:Ldqx;

    iput-object p3, p0, Leah;->c:Leaj;

    iput p4, p0, Leah;->d:I

    iput p6, p0, Leah;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, Leah;->h:Leak;

    const/4 p1, 0x1

    if-eq p5, p1, :cond_0

    const/4 p5, 0x2

    :cond_0
    invoke-static {p1}, Lmoz;->e(Z)V

    const/4 p2, 0x0

    if-ne p5, p1, :cond_1

    iget-boolean p3, p3, Leaj;->c:Z

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Leah;->e:Z

    iput-boolean p2, p0, Leah;->g:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lgrw;Lgrw;)F
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget-object v14, v1, Leah;->h:Leak;

    iget-boolean v3, v1, Leah;->g:Z

    if-eqz v3, :cond_1

    if-eqz v14, :cond_1

    iget-wide v10, v0, Lgrw;->d:J

    iget v12, v0, Lgrw;->h:F

    iget v13, v0, Lgrw;->i:F

    iget-object v3, v0, Lgrw;->o:Landroid/graphics/Rect;

    invoke-virtual {v14, v3}, Leak;->f(Landroid/graphics/Rect;)[F

    move-result-object v15

    iget-wide v4, v0, Lgrw;->c:J

    iget-wide v8, v0, Lgrw;->e:J

    iget-wide v6, v0, Lgrw;->n:J

    iget-wide v0, v2, Lgrw;->d:J

    iget v3, v2, Lgrw;->h:F

    move-wide/from16 v22, v0

    iget v0, v2, Lgrw;->i:F

    iget-object v1, v2, Lgrw;->o:Landroid/graphics/Rect;

    invoke-virtual {v14, v1}, Leak;->f(Landroid/graphics/Rect;)[F

    move-result-object v1

    move/from16 v16, v12

    move/from16 v17, v13

    iget-wide v12, v2, Lgrw;->c:J

    move-wide/from16 v24, v10

    iget-wide v10, v2, Lgrw;->e:J

    move/from16 v26, v0

    move-object/from16 v27, v1

    iget-wide v0, v2, Lgrw;->n:J

    move v2, v3

    move-object v3, v14

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide/from16 v20, v8

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Leak;->c(JJ[F)J

    move-result-wide v28

    move-object v3, v14

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Leak;->c(JJ[F)J

    move-result-wide v30

    move-wide/from16 v3, v20

    invoke-virtual {v14, v3, v4, v15}, Leak;->b(J[F)J

    move-result-wide v32

    move-object v3, v14

    move-wide v4, v12

    move-wide v6, v10

    move-object/from16 v8, v27

    invoke-virtual/range {v3 .. v8}, Leak;->c(JJ[F)J

    move-result-wide v12

    move-object v3, v14

    move-wide v4, v0

    move-wide v6, v10

    move-object/from16 v8, v27

    invoke-virtual/range {v3 .. v8}, Leak;->c(JJ[F)J

    move-result-wide v0

    move-object/from16 v3, v27

    invoke-virtual {v14, v10, v11, v3}, Leak;->b(J[F)J

    move-result-wide v34

    move-wide/from16 v4, v28

    move-wide/from16 v6, v32

    move-wide/from16 v8, v24

    invoke-static/range {v4 .. v9}, Leak;->d(JJJ)J

    move-result-wide v37

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual {v14, v4, v5, v15}, Leak;->a(FF[F)F

    move-result v39

    move-wide/from16 v16, v12

    move-wide/from16 v18, v34

    move-wide/from16 v20, v22

    invoke-static/range {v16 .. v21}, Leak;->d(JJJ)J

    move-result-wide v42

    move/from16 v4, v26

    invoke-virtual {v14, v2, v4, v3}, Leak;->a(FF[F)F

    move-result v44

    move-object/from16 v2, p1

    move-wide/from16 v16, v22

    iget-object v4, v2, Lgrw;->b:Ljava/lang/String;

    iget-object v11, v14, Leak;->d:Lkaf;

    const/4 v13, 0x0

    move-object/from16 v18, v3

    move-object v3, v14

    move-wide/from16 v5, v30

    move-wide/from16 v7, v32

    move-wide/from16 v9, v24

    move-object v12, v15

    invoke-virtual/range {v3 .. v13}, Leak;->e(Ljava/lang/String;JJJLkaf;[FZ)[F

    move-result-object v13

    move-object/from16 v2, p2

    iget-object v3, v2, Lgrw;->b:Ljava/lang/String;

    iget-object v10, v14, Leak;->d:Lkaf;

    const/4 v12, 0x0

    move-object v2, v14

    move-wide v4, v0

    move-wide/from16 v6, v34

    move-wide/from16 v8, v16

    move-object/from16 v11, v18

    invoke-virtual/range {v2 .. v12}, Leak;->e(Ljava/lang/String;JJJLkaf;[FZ)[F

    move-result-object v0

    iget-object v1, v14, Leak;->b:Lemr;

    const/4 v2, 0x0

    aget v40, v13, v2

    const/4 v3, 0x1

    aget v41, v13, v3

    aget v45, v0, v2

    aget v46, v0, v3

    move-object/from16 v36, v1

    invoke-interface/range {v36 .. v46}, Lemr;->d(JFFFJFFF)[F

    move-result-object v0

    invoke-static {v0}, Llau;->a([F)Llau;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v5, v4, [F

    iget-object v6, v14, Leak;->d:Lkaf;

    iget v6, v6, Lkaf;->a:I

    int-to-float v6, v6

    aput v6, v5, v2

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v5, v4, [F

    aput v6, v5, v2

    iget-object v7, v14, Leak;->d:Lkaf;

    iget v7, v7, Lkaf;->b:I

    int-to-float v7, v7

    aput v7, v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v4, [F

    iget-object v5, v14, Leak;->d:Lkaf;

    iget v7, v5, Lkaf;->a:I

    int-to-float v7, v7

    aput v7, v4, v2

    iget v5, v5, Lkaf;->b:I

    int-to-float v5, v5

    aput v5, v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    invoke-virtual {v0, v7}, Llau;->e([F)[F

    move-result-object v8

    float-to-double v9, v6

    aget v6, v8, v2

    aget v11, v7, v2

    sub-float/2addr v6, v11

    aget v8, v8, v3

    aget v7, v7, v3

    sub-float/2addr v8, v7

    float-to-double v6, v6

    float-to-double v11, v8

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v6

    :cond_1
    monitor-exit p0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final b(JLgrw;)Ljava/util/List;
    .locals 36

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    iget-object v13, v1, Leah;->h:Leak;

    if-eqz v0, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Leah;->d()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-wide v10, v0, Lgrw;->d:J

    iget v2, v0, Lgrw;->h:F

    iget v3, v0, Lgrw;->i:F

    iget-object v4, v0, Lgrw;->o:Landroid/graphics/Rect;

    invoke-virtual {v13, v4}, Leak;->f(Landroid/graphics/Rect;)[F

    move-result-object v8

    invoke-virtual {v13, v2, v3, v8}, Leak;->a(FF[F)F

    move-result v23

    iget-wide v3, v0, Lgrw;->c:J

    iget-wide v5, v0, Lgrw;->e:J

    move-object/from16 p1, v15

    iget-wide v14, v0, Lgrw;->n:J

    move-object v2, v13

    move-wide/from16 v16, v5

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Leak;->c(JJ[F)J

    move-result-wide v24

    move-wide v3, v14

    invoke-virtual/range {v2 .. v7}, Leak;->c(JJ[F)J

    move-result-wide v14

    move-wide/from16 v2, v16

    invoke-virtual {v13, v2, v3, v8}, Leak;->b(J[F)J

    move-result-wide v26

    const/4 v9, 0x0

    move-object/from16 v28, v9

    const/4 v6, 0x0

    :goto_0
    iget v2, v13, Leak;->c:I

    const/16 v7, 0x9

    if-ge v6, v2, :cond_2

    int-to-long v4, v6

    mul-long v4, v4, v26

    int-to-long v2, v2

    div-long v16, v4, v2

    add-long v4, v24, v16

    div-long v18, v26, v2

    move-wide v2, v4

    move-wide/from16 v4, v18

    move/from16 v30, v6

    move-wide v6, v10

    invoke-static/range {v2 .. v7}, Leak;->d(JJJ)J

    move-result-wide v20

    iget-object v3, v0, Lgrw;->b:Ljava/lang/String;

    add-long v4, v14, v16

    iget-object v6, v13, Leak;->d:Lkaf;

    const/16 v16, 0x1

    move-object v2, v13

    move-object/from16 v17, v6

    move-wide/from16 v6, v18

    move-object/from16 v31, v8

    move-wide v8, v10

    move-wide/from16 v32, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v31

    move-wide/from16 v34, v14

    move-object v14, v12

    move/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Leak;->e(Ljava/lang/String;JJJLkaf;[FZ)[F

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [F

    iget-object v4, v13, Leak;->b:Lemr;

    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v5, 0x1

    aget v2, v2, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v20

    move/from16 v19, v23

    move/from16 v20, v6

    move/from16 v21, v2

    move-object/from16 v22, v3

    invoke-interface/range {v16 .. v22}, Lemr;->c(JFFF[F)Z

    move-result v2

    if-eq v5, v2, :cond_0

    move-object/from16 v3, v28

    goto :goto_1

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-static {v3}, Llau;->a([F)Llau;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v3

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v4, p1

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v30, 0x1

    move-object v9, v2

    move-object/from16 p1, v4

    move-object v12, v14

    move-object/from16 v8, v31

    move-wide/from16 v10, v32

    move-wide/from16 v14, v34

    goto :goto_0

    :cond_2
    move-object/from16 v4, p1

    move-object v2, v9

    move-object v14, v12

    const/16 v3, 0x9

    const/4 v5, 0x1

    iget-object v6, v13, Leak;->e:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, v13, Leak;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v7, 0x0

    :goto_3
    iget v8, v13, Leak;->c:I

    if-ge v7, v8, :cond_a

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llau;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llau;

    if-eqz v8, :cond_9

    if-nez v9, :cond_3

    move-object/from16 v24, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_8

    :cond_3
    iget-object v8, v8, Llau;->c:[F

    const/4 v10, 0x0

    aget v11, v8, v10

    const/4 v10, 0x4

    aget v12, v8, v10

    const/16 v15, 0x8

    aget v16, v8, v15

    mul-float v17, v12, v16

    const/16 v18, 0x5

    aget v19, v8, v18

    const/16 v20, 0x7

    aget v21, v8, v20

    mul-float v22, v19, v21

    sub-float v17, v17, v22

    mul-float v11, v11, v17

    float-to-double v10, v11

    aget v22, v8, v5

    const/4 v2, 0x3

    aget v23, v8, v2

    mul-float v24, v23, v16

    const/16 v25, 0x6

    aget v26, v8, v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v27, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double v10, v10, v27

    mul-float v29, v19, v26

    sub-float v24, v24, v29

    mul-float v15, v22, v24

    move-object/from16 v24, v6

    float-to-double v5, v15

    const/4 v15, 0x2

    :try_start_1
    aget v30, v8, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v5

    mul-float v5, v23, v21

    mul-float v6, v12, v26

    sub-float/2addr v5, v6

    mul-float v5, v5, v30

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v5

    cmpl-double v5, v10, v27

    if-nez v5, :cond_4

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v10

    double-to-float v5, v5

    :try_start_2
    new-array v6, v3, [F

    mul-float v17, v17, v5

    const/4 v10, 0x0

    aput v17, v6, v10

    mul-float v22, v22, v16

    mul-float v10, v30, v21

    sub-float v10, v22, v10

    neg-float v10, v10

    mul-float v10, v10, v5

    const/4 v11, 0x1

    aput v10, v6, v11

    aget v10, v8, v11

    mul-float v17, v10, v19

    mul-float v30, v30, v12

    sub-float v17, v17, v30

    mul-float v17, v17, v5

    aput v17, v6, v15

    mul-float v23, v23, v16

    mul-float v12, v19, v26

    sub-float v12, v23, v12

    neg-float v12, v12

    mul-float v12, v12, v5

    aput v12, v6, v2

    const/4 v12, 0x0

    aget v17, v8, v12

    mul-float v16, v16, v17

    aget v15, v8, v15

    mul-float v22, v15, v26

    sub-float v16, v16, v22

    mul-float v16, v16, v5

    const/16 v22, 0x4

    aput v16, v6, v22

    mul-float v19, v19, v17

    aget v16, v8, v2

    mul-float v15, v15, v16

    sub-float v15, v19, v15

    neg-float v15, v15

    mul-float v15, v15, v5

    aput v15, v6, v18

    mul-float v15, v16, v21

    const/16 v18, 0x4

    aget v18, v8, v18

    mul-float v26, v26, v18

    sub-float v15, v15, v26

    mul-float v15, v15, v5

    aput v15, v6, v25

    mul-float v21, v21, v17

    aget v8, v8, v25

    mul-float v8, v8, v10

    sub-float v8, v21, v8

    neg-float v8, v8

    mul-float v8, v8, v5

    aput v8, v6, v20

    mul-float v17, v17, v18

    mul-float v10, v10, v16

    sub-float v17, v17, v10

    mul-float v17, v17, v5

    const/16 v5, 0x8

    aput v17, v6, v5

    invoke-static {v6}, Llau;->a([F)Llau;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_5

    sget-object v2, Leak;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v5, 0x4e3

    invoke-interface {v2, v5}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v5, "Inverse cannot be computed. Defaulting to identity"

    invoke-interface {v2, v5}, Lnah;->o(Ljava/lang/String;)V

    invoke-static {}, Llau;->b()Llau;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_5
    invoke-virtual {v5}, Llau;->d()[F

    move-result-object v5

    new-array v6, v3, [F

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v2, :cond_8

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v2, :cond_7

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v2, :cond_6

    mul-int/lit8 v16, v8, 0x3

    add-int v17, v16, v10

    aget v18, v6, v17

    iget-object v2, v9, Llau;->c:[F

    add-int v16, v16, v15

    aget v2, v2, v16

    mul-int/lit8 v16, v15, 0x3

    add-int v16, v16, v10

    aget v16, v5, v16

    mul-float v2, v2, v16

    add-float v18, v18, v2

    aput v18, v6, v17

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x3

    goto :goto_7

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x3

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x3

    goto :goto_5

    :cond_8
    invoke-static {v6}, Llau;->a([F)Llau;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    move-object/from16 v24, v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_8
    sget-object v2, Leak;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v5, 0x4e2

    invoke-interface {v2, v5}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v5, "Previous or current projection matrix cannot be computed. Defaulting to identity"

    invoke-interface {v2, v5}, Lnah;->o(Ljava/lang/String;)V

    invoke-static {}, Llau;->b()Llau;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v24

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v24, v6

    iget-object v0, v13, Leak;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v24

    return-object v14

    :catchall_0
    move-exception v0

    move-object/from16 v24, v6

    :goto_a
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_b
    const/4 v12, 0x0

    if-nez v0, :cond_c

    sget-object v0, Leah;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x4dc

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Camera metadata not valid at : %d"

    invoke-interface {v0, v4, v2, v3}, Lnah;->q(Ljava/lang/String;J)V

    goto :goto_b

    :cond_c
    sget-object v0, Leah;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x4db

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "Gyro transform calculator not valid at : %d"

    invoke-interface {v0, v4, v2, v3}, Lnah;->q(Ljava/lang/String;J)V

    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Leah;->h:Leak;

    if-eqz v2, :cond_d

    iget v2, v2, Leak;->c:I

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v2, :cond_e

    invoke-static {}, Llau;->b()Llau;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_d
    sget-object v2, Leah;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Gyro transform calculator not valid."

    const/16 v4, 0x4da

    invoke-static {v2, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_e
    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Leah;->g:Z

    iget-object v0, p0, Leah;->f:Lkmm;

    if-eqz v0, :cond_0

    new-instance v1, Lcei;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lcei;-><init>(Lkmm;I)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    :cond_0
    iget-object v0, p0, Leah;->f:Lkmm;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkmm;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Leah;->h:Leak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leah;->f:Lkmm;

    iget-boolean v1, p0, Leah;->g:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Leah;->c:Leaj;

    invoke-virtual {v1, v0}, Leaj;->a(Lkmm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leah;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Lkaf;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leah;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Leah;->j:Ldqx;

    iget v5, p0, Leah;->d:I

    iget v1, p0, Leah;->i:I

    iget-object v2, v0, Ldqx;->d:Ljava/lang/Object;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v2, v3}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    if-eq v1, v9, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-static {v9}, Lmoz;->e(Z)V

    iget-object v3, v0, Ldqx;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v3, Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkll;

    iget-object v3, v3, Lkll;->a:Ljava/lang/String;

    invoke-static {v3}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_2
    sget-object v3, Lmza;->a:Lmza;

    move-object v8, v3

    :goto_0
    new-instance v10, Leak;

    iget-object v3, v0, Ldqx;->b:Ljava/lang/Object;

    check-cast v3, Lgdd;

    invoke-virtual {v3}, Lgdd;->b()Lkaf;

    move-result-object v4

    iget-object v6, v0, Ldqx;->c:Ljava/lang/Object;

    if-ne v1, v9, :cond_3

    iget-object v0, v0, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemx;

    move-object v7, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lemv;

    invoke-direct {v0}, Lemv;-><init>()V

    move-object v7, v0

    :goto_1
    move-object v1, v10

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Leak;-><init>(Landroid/util/SizeF;Lkaf;Lkaf;ILemr;Lemx;Ljava/util/Set;)V

    iput-object v10, p0, Leah;->h:Leak;

    iget-object p1, p0, Leah;->b:Lkmn;

    invoke-interface {p1, p2}, Lkmn;->a(Ljava/lang/String;)Lkmm;

    move-result-object p1

    iput-object p1, p0, Leah;->f:Lkmm;

    if-eqz p1, :cond_4

    iput-boolean v9, p0, Leah;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
