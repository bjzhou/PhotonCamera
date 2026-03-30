.class public final Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liyj;


# instance fields
.field private a:J

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "gcastartup"

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

    :goto_f
    const-class v0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method private native nativeClose(J)V
.end method

.method private static native nativeLoad(Ljava/lang/Boolean;)J
.end method

.method private native nativeScoreYUV(JIIFLjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F
.end method


# virtual methods
.method public final a(IIFLjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F
    .locals 16

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    move-object/from16 v9, p7

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

    nop

    :goto_3
    move/from16 v11, p9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    move/from16 v10, p8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move/from16 v5, p3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    move/from16 v13, p11

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    move-object/from16 v12, p10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v15, p13

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    move/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    move-object/from16 v6, p4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v1, v0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->a:J

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v7, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_16
    const v0, 0xe

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    move/from16 v14, p12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-direct/range {v0 .. v15}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->nativeScoreYUV(JIIFLjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    move-object/from16 v0, p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    move/from16 v4, p2

    nop

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

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v8, p6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->nativeClose(J)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    return-void

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
    iget-wide v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->a:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

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

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    nop

    nop

    :goto_c
    const v1, 0x9

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

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

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

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_a
    invoke-static {p1}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->nativeLoad(Ljava/lang/Boolean;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->a:J

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
