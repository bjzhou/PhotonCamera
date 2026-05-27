.class public final Ldxw;
.super Ljava/lang/Object;

# interfaces
.implements Ldyc;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/Map;

.field private f:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

.field private g:Lfgg;

.field private h:Ldxl;

.field private i:Ldye;

.field private final j:Ldhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/frequentfaces/FrequentFacesControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldxw;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lmqp;Landroid/content/Context;Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ldxw;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldxw;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    invoke-static {p1}, Lmoz;->e(Z)V

    iput-object p2, p0, Ldxw;->b:Landroid/content/Context;

    iput-object p3, p0, Ldxw;->j:Ldhi;

    sget-object p1, Ldhf;->d:Ldhj;

    invoke-interface {p3, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "FaceFamiliarityProcessorVMImpl"

    :goto_0
    iput-object p1, p0, Ldxw;->c:Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized h(J)V
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v0, v1, Ldxw;->g:Lfgg;

    iget-object v4, v1, Ldxw;->h:Ldxl;

    iget-object v5, v1, Ldxw;->i:Ldye;

    iget-object v6, v1, Ldxw;->f:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v0, :cond_18

    if-eqz v4, :cond_18

    if-eqz v5, :cond_18

    if-nez v6, :cond_0

    goto/16 :goto_c

    :cond_0
    :try_start_2
    invoke-virtual {v5, v2, v3}, Ldye;->a(J)Ljyp;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v7, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    invoke-interface {v0, v2, v3}, Lfgg;->c(J)Lkpb;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-nez v2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 v3, 0x0

    const/4 v15, 0x1

    :try_start_4
    invoke-interface {v2}, Lkpb;->d()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ldxl;->a(J)Lgrw;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v4, :cond_3

    :goto_0
    :try_start_5
    invoke-interface {v2}, Lkpb;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    monitor-exit p0

    return-void

    :cond_3
    :try_start_6
    iget-object v0, v1, Ldxw;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iget-object v7, v4, Lgrw;->q:[Lgrz;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v8, 0x2

    if-nez v7, :cond_5

    :try_start_7
    sget-object v0, Ldxw;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v6, "Failure in FF analysis -- null face metadata: %b"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v9, 0x49e

    invoke-static {v0, v6, v7, v9}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    sget-object v0, Locj;->m:Locj;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-wide v6, v4, Lgrw;->c:J

    iget-object v9, v0, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v9, v0, Lnwn;->b:Lnws;

    check-cast v9, Locj;

    iget v10, v9, Locj;->a:I

    or-int/2addr v8, v10

    iput v8, v9, Locj;->a:I

    iput-wide v6, v9, Locj;->c:J

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Locj;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v3, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    const/4 v3, 0x1

    goto/16 :goto_a

    :cond_5
    :try_start_8
    invoke-interface {v2}, Lkpb;->c()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v4, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-interface {v2}, Lkpb;->b()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v4, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    sget-object v11, Locr;->c:Locr;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    iget-object v12, v11, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v12, :cond_6

    :try_start_9
    invoke-virtual {v11}, Lnwn;->p()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_6
    :try_start_a
    iget-object v12, v11, Lnwn;->b:Lnws;

    check-cast v12, Locr;

    iget v13, v12, Locr;->a:I

    or-int/2addr v13, v15

    iput v13, v12, Locr;->a:I

    iput-boolean v0, v12, Locr;->b:Z

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Locr;

    sget-object v11, Locd;->k:Locd;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    iget v12, v4, Lgrw;->s:I

    rsub-int v12, v12, 0x168

    rem-int/lit16 v12, v12, 0x168

    iget-object v13, v11, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v13, :cond_7

    :try_start_b
    invoke-virtual {v11}, Lnwn;->p()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_7
    :try_start_c
    iget-object v13, v11, Lnwn;->b:Lnws;

    check-cast v13, Locd;

    iget v14, v13, Locd;->a:I

    or-int/lit8 v14, v14, 0x4

    iput v14, v13, Locd;->a:I

    iput v12, v13, Locd;->c:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v11

    check-cast v11, Locd;

    sget-object v12, Locj;->m:Locj;

    invoke-virtual {v12}, Lnws;->O()Lnwn;

    move-result-object v12

    iget-wide v13, v4, Lgrw;->c:J

    iget-object v15, v12, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v15, :cond_8

    :try_start_d
    invoke-virtual {v12}, Lnwn;->p()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    :try_start_e
    iget-object v15, v12, Lnwn;->b:Lnws;

    check-cast v15, Locj;

    iget v3, v15, Locj;->a:I

    or-int/2addr v3, v8

    iput v3, v15, Locj;->a:I

    iput-wide v13, v15, Locj;->c:J

    invoke-static {v4, v9, v10}, Ldsj;->a(Lgrw;FF)Lobf;

    move-result-object v3

    iget-object v9, v12, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-nez v9, :cond_9

    :try_start_f
    invoke-virtual {v12}, Lnwn;->p()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_9
    :try_start_10
    iget-object v9, v12, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Locj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v10, Locj;->e:Lobf;

    iget v3, v10, Locj;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v10, Locj;->a:I

    iget-boolean v3, v4, Lgrw;->r:Z

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-nez v9, :cond_a

    :try_start_11
    invoke-virtual {v12}, Lnwn;->p()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_a
    :try_start_12
    iget-object v9, v12, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Locj;

    iget v13, v10, Locj;->a:I

    or-int/lit16 v13, v13, 0x200

    iput v13, v10, Locj;->a:I

    iput-boolean v3, v10, Locj;->f:Z

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-nez v3, :cond_b

    :try_start_13
    invoke-virtual {v12}, Lnwn;->p()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_b
    :try_start_14
    iget-object v3, v12, Lnwn;->b:Lnws;

    move-object v9, v3

    check-cast v9, Locj;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v9, Locj;->d:Locd;

    iget v10, v9, Locj;->a:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v9, Locj;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-nez v3, :cond_c

    :try_start_15
    invoke-virtual {v12}, Lnwn;->p()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_c
    :try_start_16
    iget-object v3, v12, Lnwn;->b:Lnws;

    check-cast v3, Locj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Locj;->k:Locr;

    iget v0, v3, Locj;->a:I

    const/high16 v9, 0x200000

    or-int/2addr v0, v9

    iput v0, v3, Locj;->a:I

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Locj;

    array-length v0, v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v0, :cond_d

    :try_start_17
    invoke-interface {v2}, Lkpb;->g()Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    const/4 v3, 0x0

    :try_start_18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkpa;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    const/4 v3, 0x1

    :try_start_19
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkpa;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v7}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface {v7}, Lkpa;->getPixelStride()I

    move-result v10

    invoke-interface {v7}, Lkpa;->getRowStride()I

    move-result v11

    invoke-interface {v9}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v9}, Lkpa;->getPixelStride()I

    move-result v13

    invoke-interface {v9}, Lkpa;->getRowStride()I

    move-result v14

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-interface {v0}, Lkpa;->getPixelStride()I

    move-result v16

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v0

    invoke-interface {v2}, Lkpb;->c()I

    move-result v17

    invoke-interface {v2}, Lkpb;->b()I

    move-result v19

    move-object v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move v12, v14

    move-object v13, v15

    move/from16 v14, v16

    move v15, v0

    move/from16 v16, v17

    move/from16 v17, v19

    invoke-virtual/range {v6 .. v18}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILocj;)Locj;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    move-object v6, v0

    sget-object v0, Ldxw;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v7, "Couldn\'t get planes for analysis."

    const/16 v8, 0x49d

    invoke-static {v0, v7, v8, v6}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v0, Locj;->m:Locj;

    goto :goto_1

    :cond_d
    const/4 v3, 0x1

    move-object/from16 v0, v18

    :goto_1
    iget-object v0, v0, Locj;->e:Lobf;

    if-nez v0, :cond_e

    sget-object v0, Lobf;->b:Lobf;

    :cond_e
    iget-object v6, v0, Lobf;->a:Lnxa;

    invoke-interface {v6}, Lnxa;->size()I

    move-result v6

    iget-object v4, v4, Lgrw;->q:[Lgrz;

    array-length v4, v4

    if-ne v6, v4, :cond_f

    const/4 v15, 0x1

    goto :goto_2

    :cond_f
    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Lmoz;->p(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    iget-object v7, v0, Lobf;->a:Lnxa;

    invoke-interface {v7}, Lnxa;->size()I

    move-result v7

    if-ge v6, v7, :cond_16

    iget-object v7, v0, Lobf;->a:Lnxa;

    invoke-interface {v7, v6}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lobe;

    sget-object v8, Locp;->j:Llhj;

    invoke-virtual {v7, v8}, Lnwq;->e(Llhj;)V

    iget-object v9, v7, Lnwq;->l:Lnwj;

    iget-object v10, v8, Llhj;->b:Ljava/lang/Object;

    check-cast v10, Lnwr;

    invoke-virtual {v9, v10}, Lnwj;->k(Lnwr;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_10

    iget-object v9, v8, Llhj;->d:Ljava/lang/Object;

    goto :goto_4

    :cond_10
    invoke-virtual {v8, v9}, Llhj;->b(Ljava/lang/Object;)V

    :goto_4
    check-cast v9, Locp;

    iget v8, v9, Locp;->a:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_11

    const/4 v15, 0x1

    goto :goto_5

    :cond_11
    const/4 v15, 0x0

    :goto_5
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v8

    iget-wide v10, v7, Lobe;->i:J

    invoke-virtual {v8, v10, v11}, Ldxx;->d(J)V

    iget-wide v10, v7, Lobe;->j:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    iput-object v7, v8, Ldxx;->a:Lmqp;

    iget v7, v9, Locp;->d:F

    invoke-virtual {v8, v7}, Ldxx;->c(F)V

    if-eqz v15, :cond_13

    iget-object v7, v9, Locp;->h:Locq;

    if-nez v7, :cond_12

    sget-object v7, Locq;->d:Locq;

    :cond_12
    iget-object v7, v7, Locq;->b:Lnwx;

    invoke-static {v7}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v7

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_6

    :cond_13
    sget-object v7, Lmpx;->a:Lmpx;

    :goto_6
    iput-object v7, v8, Ldxx;->b:Lmqp;

    if-eqz v15, :cond_15

    iget-object v7, v9, Locp;->h:Locq;

    if-nez v7, :cond_14

    sget-object v7, Locq;->d:Locq;

    :cond_14
    iget v7, v7, Locq;->c:F

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v8, v7}, Ldxx;->b(F)V

    invoke-virtual {v8}, Ldxx;->a()Ldxy;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_16
    new-instance v6, Ljyp;

    invoke-interface {v2}, Lkpb;->d()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v4}, Ljyp;-><init>(JLjava/util/List;)V

    invoke-virtual {v5, v6}, Ldye;->c(Ljyp;)V

    monitor-enter p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    iget-object v0, v1, Ldxw;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v7, Ldgd;

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-direct {v7, v0, v6, v8, v9}, Ldgd;-><init>(Ljava/util/Map$Entry;Ljyp;I[B)V

    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_1c
    sget-object v5, Ldxw;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v5, 0x4a0

    invoke-interface {v0, v5}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v5, "Cannot execute onFrequentFacesAvailable"

    invoke-interface {v0, v5}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :try_start_1d
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v3, 0x1

    :goto_9
    move-object v4, v0

    :goto_a
    :try_start_1e
    invoke-interface {v2}, Lkpb;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_1f
    const-class v0, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto :goto_b

    :catch_2
    move-exception v0

    :goto_b
    :try_start_20
    throw v4

    :cond_18
    :goto_c
    sget-object v0, Ldxw;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "No video framestore or metadata framestore attached"

    const/16 v3, 0x49f

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :try_start_22
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    :catchall_6
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method


# virtual methods
.method public final b(Lfgg;Ldxl;Ldye;)Lkad;
    .locals 10

    iget-object v0, p0, Ldxw;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object v0, p0, Ldxw;->j:Ldhi;

    sget-object v4, Ldhf;->a:Ldhk;

    invoke-interface {v0, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    new-instance v4, Lgsy;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lgsy;-><init>(JI)V

    invoke-virtual {v0, v4}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Ldxw;->b:Landroid/content/Context;

    iget-object v4, p0, Ldxw;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ff.pb"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v6, v7, v1

    invoke-static {v0, v7}, Lj$/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lobh;->g:Lobh;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v6, v1, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lobh;

    iget v8, v7, Lobh;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lobh;->a:I

    const/16 v8, 0x3e8

    iput v8, v7, Lobh;->c:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lobh;

    iget v8, v7, Lobh;->a:I

    or-int/2addr v8, v5

    iput v8, v7, Lobh;->a:I

    const/16 v8, 0x80

    iput v8, v7, Lobh;->b:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lobh;

    iget v8, v7, Lobh;->a:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Lobh;->a:I

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Lobh;->f:F

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lobh;

    iget v8, v7, Lobh;->a:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lobh;->a:I

    const v8, 0x3f570a3d    # 0.84f

    iput v8, v7, Lobh;->d:F

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Lobh;

    iget v7, v6, Lobh;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Lobh;->a:I

    const v7, 0x3f3ae148    # 0.73f

    iput v7, v6, Lobh;->e:F

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lobh;

    sget-object v6, Lodf;->i:Lodf;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    iget-object v7, v6, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_5
    iget-object v7, v6, Lnwn;->b:Lnws;

    move-object v8, v7

    check-cast v8, Lodf;

    iget v9, v8, Lodf;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v8, Lodf;->a:I

    iput-object v4, v8, Lodf;->c:Ljava/lang/String;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_6
    iget-object v4, v6, Lnwn;->b:Lnws;

    move-object v7, v4

    check-cast v7, Lodf;

    iget v8, v7, Lodf;->a:I

    or-int/2addr v8, v5

    iput v8, v7, Lodf;->a:I

    iput-boolean v5, v7, Lodf;->b:Z

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_7
    iget-object v4, v6, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lodf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v5, Lodf;->a:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v5, Lodf;->a:I

    iput-object v0, v5, Lodf;->d:Ljava/lang/String;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_8
    iget-object v0, v6, Lnwn;->b:Lnws;

    move-object v4, v0

    check-cast v4, Lodf;

    iget v5, v4, Lodf;->a:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Lodf;->a:I

    const-string v5, "library"

    iput-object v5, v4, Lodf;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_9
    iget-object v0, v6, Lnwn;->b:Lnws;

    move-object v4, v0

    check-cast v4, Lodf;

    iget v5, v4, Lodf;->a:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lodf;->a:I

    const-string v5, "namespace"

    iput-object v5, v4, Lodf;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_a
    iget-object v0, v6, Lnwn;->b:Lnws;

    move-object v4, v0

    check-cast v4, Lodf;

    iget v5, v4, Lodf;->a:I

    const/high16 v7, 0x40000

    or-int/2addr v5, v7

    iput v5, v4, Lodf;->a:I

    iput-wide v2, v4, Lodf;->h:J

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_b
    iget-object v0, v6, Lnwn;->b:Lnws;

    check-cast v0, Lodf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lodf;->g:Lobh;

    iget v1, v0, Lodf;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lodf;->a:I

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lodf;

    new-instance v6, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    invoke-direct {v6, v0}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;-><init>(Lodf;)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldxw;->g:Lfgg;

    iput-object p2, p0, Ldxw;->h:Ldxl;

    iput-object p3, p0, Ldxw;->i:Ldye;

    iput-object v6, p0, Ldxw;->f:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ldxv;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ldxv;-><init>(Ldxw;Lfgg;Ldxl;Ldye;Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bX(Lgrw;)V
    .locals 2

    iget-wide v0, p1, Lgrw;->c:J

    invoke-direct {p0, v0, v1}, Ldxw;->h(J)V

    return-void
.end method

.method public final declared-synchronized c(Ldyb;Ljava/util/concurrent/Executor;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxw;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d(Lfgg;Ldxl;Ldye;Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxw;->g:Lfgg;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Ldxw;->g:Lfgg;

    :cond_0
    iget-object p1, p0, Ldxw;->h:Ldxl;

    if-ne p1, p2, :cond_1

    iput-object v1, p0, Ldxw;->h:Ldxl;

    :cond_1
    iget-object p1, p0, Ldxw;->i:Ldye;

    if-ne p1, p3, :cond_2

    iput-object v1, p0, Ldxw;->i:Ldye;

    :cond_2
    invoke-virtual {p4}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->close()V

    iget-object p1, p0, Ldxw;->f:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    if-ne p1, p4, :cond_3

    iput-object v1, p0, Ldxw;->f:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Ldxw;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final f(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldxw;->h(J)V

    return-void
.end method

.method public final declared-synchronized g(Ldyb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldxw;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldxw;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
