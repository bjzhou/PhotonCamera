.class public final Lkgg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkgg;->a:Loiw;

    iput-object p2, p0, Lkgg;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    iget-object v0, v1, Lkgg;->a:Loiw;

    check-cast v0, Lkkd;

    invoke-virtual {v0}, Lkkd;->a()Llim;

    move-result-object v2

    iget-object v0, v1, Lkgg;->b:Loiw;

    check-cast v0, Lkge;

    invoke-virtual {v0}, Lkge;->a()Lkeq;

    move-result-object v0

    iget-object v0, v0, Lkeq;->g:Lmvv;

    iget-object v3, v2, Llim;->h:Ljava/lang/Object;

    const-string v4, "createStreamMap"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v3

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v4

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v5

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkfl;

    iget-object v0, v13, Lkfl;->b:Lmqp;

    iget-object v7, v2, Llim;->g:Ljava/lang/Object;

    check-cast v7, Lkeq;

    iget-object v7, v7, Lkeq;->a:Lkll;

    invoke-virtual {v0, v7}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkll;

    iget-object v7, v2, Llim;->e:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    iget-object v7, v2, Llim;->g:Ljava/lang/Object;

    check-cast v7, Lkeq;

    iget-object v7, v7, Lkeq;->a:Lkll;

    invoke-virtual {v0, v7}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v12, :cond_0

    goto :goto_2

    :cond_0
    iget-object v7, v2, Llim;->e:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v2, Llim;->e:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " or one of its physical cameras: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, ""

    :goto_1
    iget-object v8, v2, Llim;->f:Ljava/lang/Object;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    iget-object v9, v2, Llim;->g:Ljava/lang/Object;

    check-cast v9, Lkeq;

    iget-object v9, v9, Lkeq;->a:Lkll;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stream configuration is invalid. Camera-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not match "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " will not be available."

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lkaq;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :goto_2
    iget-object v0, v13, Lkfl;->a:Lkfm;

    sget-object v7, Lkfm;->a:Lkfm;

    if-ne v0, v7, :cond_d

    iget-object v0, v2, Llim;->d:Ljava/lang/Object;

    iget-object v7, v13, Lkfl;->d:Lkaf;

    iget v8, v13, Lkfl;->e:I

    iget v9, v13, Lkfl;->f:I

    const/4 v10, 0x2

    add-int/2addr v9, v10

    iget v11, v2, Llim;->a:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v11, 0x3

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v15, v13, Lkfl;->g:Lmqp;

    iget-object v14, v13, Lkfl;->h:Lmqp;

    iget-boolean v14, v13, Lkfl;->m:Z

    new-instance v11, Ljuf;

    invoke-direct {v11}, Ljuf;-><init>()V

    iget v10, v7, Lkaf;->a:I

    invoke-static {v8, v10}, Lkof;->e(II)Ljava/lang/String;

    move-result-object v10

    move-object v1, v0

    check-cast v1, Lmbe;

    move-object/from16 v28, v6

    iget-object v6, v1, Lmbe;->h:Ljava/lang/Object;

    invoke-interface {v6, v10}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v6

    move/from16 v16, v14

    iget-object v14, v1, Lmbe;->a:Ljava/lang/Object;

    invoke-static {v11, v10}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v10

    iget-object v14, v1, Lmbe;->g:Ljava/lang/Object;

    check-cast v14, Lkoe;

    iget-boolean v14, v14, Lkoe;->c:Z

    invoke-virtual {v15}, Lmqp;->g()Z

    move-result v23

    iget-object v14, v1, Lmbe;->c:Ljava/lang/Object;

    move-object/from16 v29, v5

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/16 v24, 0x0

    move-object/from16 v30, v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v5, v4}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v23, :cond_3

    invoke-virtual {v15}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v14, v1, Lmbe;->i:Ljava/lang/Object;

    iget v5, v7, Lkaf;->a:I

    move-object/from16 v31, v3

    iget v3, v7, Lkaf;->b:I

    move/from16 v25, v16

    move-object/from16 v26, v15

    move v15, v5

    move/from16 v16, v3

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-interface/range {v14 .. v20}, Lkpc;->b(IIIIJ)Lkpe;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object/from16 v31, v3

    move-object/from16 v26, v15

    move/from16 v25, v16

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring flags ("

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "). They are not supported on the current OS."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lkaq;->i(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v1, Lmbe;->i:Ljava/lang/Object;

    iget v5, v7, Lkaf;->a:I

    iget v14, v7, Lkaf;->b:I

    invoke-interface {v3, v5, v14, v8, v9}, Lkpc;->a(IIII)Lkpe;

    move-result-object v3

    :goto_3
    invoke-virtual {v11, v3}, Ljuf;->d(Lkad;)V

    const/4 v5, 0x1

    const-wide/16 v14, 0x0

    if-ne v4, v5, :cond_8

    if-eqz v23, :cond_7

    invoke-virtual/range {v26 .. v26}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {v26 .. v26}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/32 v26, 0x10000

    and-long v18, v18, v26

    cmp-long v4, v18, v14

    if-eqz v4, :cond_5

    iget-object v4, v1, Lmbe;->f:Ljava/lang/Object;

    check-cast v4, Llas;

    iget-wide v14, v4, Llas;->a:J

    neg-long v14, v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using fuzzy timestamp matching with an initial offset of: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ns"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lkaq;->f(Ljava/lang/String;)V

    new-instance v4, Lkjw;

    move-object v9, v6

    const-wide/32 v5, 0x7f2815

    invoke-direct {v4, v14, v15, v5, v6}, Lkjw;-><init>(JJ)V

    move-object/from16 v23, v4

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_5
    move-object v9, v6

    goto :goto_4

    :cond_6
    move-object v9, v6

    goto :goto_4

    :cond_7
    move-object v9, v6

    :goto_4
    const-string v4, "Using exact timestamp matching."

    invoke-interface {v9, v4}, Lkaq;->f(Ljava/lang/String;)V

    new-instance v4, Lkjw;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v5, v6}, Lkjw;-><init>(JJ)V

    move-object/from16 v23, v4

    goto :goto_5

    :cond_8
    move-object v9, v6

    move-wide v5, v14

    const-string v4, "Using fuzzy timestamp matching."

    invoke-interface {v9, v4}, Lkaq;->f(Ljava/lang/String;)V

    new-instance v4, Lkjw;

    const-wide/32 v14, 0x7f2815

    invoke-direct {v4, v5, v6, v14, v15}, Lkjw;-><init>(JJ)V

    move-object/from16 v23, v4

    :goto_5
    invoke-static {v8, v7}, Llho;->D(ILkaf;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-lez v4, :cond_b

    if-eqz v25, :cond_b

    :try_start_0
    check-cast v0, Lmbe;

    iget-object v0, v0, Lmbe;->c:Ljava/lang/Object;

    invoke-interface {v0, v8, v7}, Lkli;->g(ILkaf;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v6, 0x3fe56c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v32, v12

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :goto_6
    iget-object v0, v1, Lmbe;->c:Ljava/lang/Object;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v4, 0x8

    invoke-static {v0, v5, v4}, Lnsy;->O(III)I

    move-result v0

    iget-object v4, v1, Lmbe;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v4}, Landroidx/wear/ambient/AmbientDelegate;->W()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    div-long/2addr v4, v14

    long-to-int v5, v4

    if-le v0, v5, :cond_a

    move v0, v5

    :cond_a
    int-to-long v4, v0

    mul-long v4, v4, v14

    long-to-double v6, v4

    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v6, v16

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move/from16 v32, v12

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v12, v24

    long-to-double v6, v14

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v12, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v12, v6

    const-string v0, "Reserved %6.2f MiB(%6.2f MiB/image * %s) to estimate HAL memory usage."

    invoke-static {v8, v0, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, v1, Lmbe;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0, v4, v5}, Landroidx/wear/ambient/AmbientDelegate;->Z(J)Lknb;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v11, v0}, Ljuf;->d(Lkad;)V

    goto :goto_7

    :cond_b
    move/from16 v32, v12

    const-string v0, "Skipping memory reservation."

    invoke-interface {v9, v0}, Lkaq;->f(Ljava/lang/String;)V

    :cond_c
    :goto_7
    new-instance v0, Lkjz;

    new-instance v4, Ljud;

    invoke-direct {v4, v10}, Ljud;-><init>(Landroid/os/Handler;)V

    iget-object v5, v1, Lmbe;->b:Ljava/lang/Object;

    iget-object v1, v1, Lmbe;->d:Ljava/lang/Object;

    move-object/from16 v22, v1

    check-cast v22, Lloi;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v11

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v27}, Lkjz;-><init>(Lkpe;Ljuf;Ljava/util/concurrent/Executor;Lkaq;Lkbc;Lloi;Lkjw;[B[B[B[B)V

    new-instance v1, Lkjy;

    invoke-direct {v1, v0}, Lkjy;-><init>(Lkjz;)V

    invoke-interface {v3, v1, v10}, Lkpe;->i(Lkpd;Landroid/os/Handler;)V

    iget-object v1, v2, Llim;->b:Ljava/lang/Object;

    check-cast v1, Ljuf;

    invoke-virtual {v1, v0}, Ljuf;->d(Lkad;)V

    new-instance v1, Lkjt;

    iget-object v3, v13, Lkfl;->b:Lmqp;

    iget-object v4, v2, Llim;->g:Ljava/lang/Object;

    check-cast v4, Lkeq;

    iget-object v4, v4, Lkeq;->a:Lkll;

    invoke-virtual {v3, v4}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lkll;

    iget-object v3, v0, Lkjz;->a:Lkpe;

    invoke-interface {v3}, Lkpe;->c()I

    move-result v3

    add-int/lit8 v11, v3, -0x2

    move-object v7, v1

    move-object v8, v13

    move-object v10, v0

    move/from16 v12, v32

    invoke-direct/range {v7 .. v12}, Lkjt;-><init>(Lkfl;Lkll;Lkjz;IZ)V

    move-object/from16 v3, v31

    invoke-virtual {v3, v1}, Lmwl;->g(Ljava/lang/Object;)V

    move-object/from16 v4, v30

    invoke-virtual {v4, v1}, Lmwl;->g(Ljava/lang/Object;)V

    iget-object v0, v2, Llim;->c:Ljava/lang/Object;

    iget-object v5, v1, Lkkb;->f:Lkll;

    iget-object v7, v5, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lkjt;->a()I

    move-result v9

    iget-object v5, v1, Lkjt;->b:Lkaf;

    iget v10, v5, Lkaf;->a:I

    iget v11, v5, Lkaf;->b:I

    iget v12, v1, Lkjt;->d:I

    move-object v6, v0

    check-cast v6, Lloi;

    const-string v8, "buffered"

    invoke-virtual/range {v6 .. v12}, Lloi;->p(Ljava/lang/String;Ljava/lang/String;IIII)V

    move-object/from16 v1, p0

    move-object/from16 v6, v28

    move-object/from16 v5, v29

    goto/16 :goto_0

    :cond_d
    move-object/from16 v29, v5

    move-object/from16 v28, v6

    move/from16 v32, v12

    new-instance v0, Lkju;

    iget-object v1, v13, Lkfl;->b:Lmqp;

    iget-object v5, v2, Llim;->g:Ljava/lang/Object;

    check-cast v5, Lkeq;

    iget-object v5, v5, Lkeq;->a:Lkll;

    invoke-virtual {v1, v5}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkll;

    iget-object v10, v13, Lkfl;->d:Lkaf;

    iget v11, v13, Lkfl;->e:I

    move-object v7, v0

    move-object v8, v13

    invoke-direct/range {v7 .. v12}, Lkju;-><init>(Lkfl;Lkll;Lkaf;IZ)V

    invoke-virtual {v3, v0}, Lmwl;->g(Ljava/lang/Object;)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v0}, Lmwl;->g(Ljava/lang/Object;)V

    iget-object v5, v2, Llim;->c:Ljava/lang/Object;

    iget-object v0, v0, Lkkb;->f:Lkll;

    iget-object v7, v0, Lkll;->a:Ljava/lang/String;

    iget v9, v13, Lkfl;->e:I

    iget-object v0, v13, Lkfl;->d:Lkaf;

    iget v10, v0, Lkaf;->a:I

    iget v11, v0, Lkaf;->b:I

    move-object v6, v5

    check-cast v6, Lloi;

    const-string v8, "external"

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lloi;->p(Ljava/lang/String;Ljava/lang/String;IIII)V

    move-object v5, v1

    move-object/from16 v6, v28

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_e
    move-object v1, v5

    invoke-virtual {v3}, Lmwl;->f()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmwn;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v2, Llim;->f:Ljava/lang/Object;

    const-string v5, "No streams available, camera configuration will fail!"

    invoke-interface {v3, v5}, Lkaq;->d(Ljava/lang/String;)V

    :cond_f
    new-instance v3, Lkkc;

    invoke-virtual {v4}, Lmwl;->f()Lmwn;

    move-result-object v4

    invoke-virtual {v1}, Lmwl;->f()Lmwn;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lkkc;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, v2, Llim;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    return-object v3
.end method
