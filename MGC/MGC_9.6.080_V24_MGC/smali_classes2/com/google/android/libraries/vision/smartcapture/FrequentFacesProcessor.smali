.class public final Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ltjv;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lrgw;->o()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltql;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->a:Ltjv;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-wide v0, p0, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    invoke-virtual {p1, p0}, Ltjv;->d(Ltlk;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->nativeCreate([B)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ltpv;->j:Ltlk;

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-static {}, Ltjv;->b()Ltjv;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_11
    invoke-virtual {p1}, Ltis;->h()[B

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeComputeFamiliarFaces(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII[B)[B
.end method

.method private static native nativeCreate([B)J
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILtpo;)Ltpo;
    .locals 16

    goto/32 :goto_c

    nop

    nop

    :goto_0
    monitor-exit p0

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
    return-object p12

    nop

    :cond_0
    :try_start_0
    invoke-virtual/range {p12 .. p12}, Ltis;->h()[B

    move-result-object v15

    nop

    nop

    nop

    move-object/from16 v4, p1

    nop

    nop

    nop

    nop

    move/from16 v5, p2

    nop

    nop

    nop

    nop

    move/from16 v6, p3

    nop

    nop

    nop

    nop

    move-object/from16 v7, p4

    nop

    nop

    nop

    nop

    nop

    move/from16 v8, p5

    nop

    nop

    nop

    move/from16 v9, p6

    nop

    nop

    nop

    move-object/from16 v10, p7

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    nop

    move/from16 v13, p10

    nop

    nop

    nop

    move/from16 v14, p11

    nop

    nop

    invoke-static/range {v2 .. v15}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->nativeComputeFamiliarFaces(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII[B)[B

    move-result-object v0

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    const-string v0, "FREQUENT_FACES_PROCESSOR"

    nop

    nop

    const-string v2, "output metadata bytes is null"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v2, v1, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->b:J

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    cmp-long v0, v2, v4

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const-string v0, "FREQUENT_FACES_PROCESSOR"

    nop

    nop

    nop

    const-string v2, "Processor is closed"

    nop

    nop

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p12

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto :goto_9

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    const-string v2, "FREQUENT_FACES_PROCESSOR"

    nop

    const-string v3, "Proto serialization error."

    nop

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v1, p0

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

    :goto_e
    throw v0

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    return-object p12

    nop

    nop

    nop

    :cond_2
    :try_start_4
    iget-object v2, v1, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->a:Ltjv;

    nop

    nop

    nop

    sget-object v3, Ltpo;->a:Ltpo;

    nop

    nop

    nop

    array-length v4, v0

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-static {v3, v0, v5, v4, v2}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ltkg;->E(Ltkg;)V

    check-cast v0, Ltpo;

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ltky; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_d

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->nativeClose(J)V

    iput-wide v2, p0, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->b:J

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

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;->b:J

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    return-void

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

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_12
    cmp-long v4, v0, v2

    nop

    goto/32 :goto_1

    nop

    nop
.end method
