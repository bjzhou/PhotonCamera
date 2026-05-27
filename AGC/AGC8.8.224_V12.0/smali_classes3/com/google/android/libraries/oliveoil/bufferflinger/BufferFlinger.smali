.class public Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;
.super Ljava/lang/Object;

# interfaces
.implements Lkyk;


# static fields
.field private static final MAX_PAIRS_TO_QUERY:I = 0x64

.field public static final NATIVE_WINDOW_TRANSFORM_FLIP_H:I = 0x1

.field public static final NATIVE_WINDOW_TRANSFORM_FLIP_V:I = 0x2

.field public static final NATIVE_WINDOW_TRANSFORM_INVERSE_DISPLAY:I = 0x8

.field public static final NATIVE_WINDOW_TRANSFORM_ROT_180:I = 0x3

.field public static final NATIVE_WINDOW_TRANSFORM_ROT_270:I = 0x7

.field public static final NATIVE_WINDOW_TRANSFORM_ROT_90:I = 0x4

.field private static final NUM_BUFFERS_TO_KEEP_BEFORE_CLOSING:I = 0x3

.field private static final PTS_QUERY_PERIOD:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final buffeFlingerHandleLock:Ljava/lang/Object;

.field private bufferFlingerHandle:J

.field private final displayExecutor:Ljava/util/concurrent/Executor;

.field private final idAndPtsBuffer:Ljava/nio/LongBuffer;

.field private final idToOnPtsAvailableListener:Ljava/util/Map;

.field private final nextBufferId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final onBufferReleasedListenerQueue:Ljava/util/Queue;

.field private final queryPts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "bufferflinger"

    const-class v1, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;

    invoke-static {v1, v0}, Lkak;->b(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nativeInit()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;-><init>(Landroid/view/Surface;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda2;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->displayExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->buffeFlingerHandleLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->onBufferReleasedListenerQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idToOnPtsAvailableListener:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nextBufferId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x640

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    const-string v0, "buffer-flinger"

    invoke-static {p1, v0, p2}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nativeCreateBufferFlinger(Landroid/view/Surface;Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    iput-boolean p2, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->queryPts:Z

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "bufferflinger"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static native nativeCreateBufferFlinger(Landroid/view/Surface;Ljava/lang/String;Z)J
.end method

.method private static native nativeDisplayBuffer(JILandroid/hardware/HardwareBuffer;IIIIIIIII)V
.end method

.method private static native nativeGetIdAndTimestampPairs(JLjava/nio/Buffer;I)I
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeReleaseBufferFlinger(J)V
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->buffeFlingerHandleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->displayExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted while waiting for nativeReleaseBufferFlinger."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Calling close on an already closed BufferFlinger."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public displayBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->displayBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;)V

    return-void
.end method

.method public displayBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;)V
    .locals 11

    move-object v8, p0

    iget-object v9, v8, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->displayExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$close$2$com-google-android-libraries-oliveoil-bufferflinger-BufferFlinger(Ljava/util/concurrent/Semaphore;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->onBufferReleasedListenerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;

    invoke-interface {v1}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;->onBufferReleased()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->buffeFlingerHandleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v4, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    invoke-static {v4, v5}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nativeReleaseBufferFlinger(J)V

    iput-wide v2, p0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling close on an already closed BufferFlinger."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public synthetic lambda$displayBuffer$1$com-google-android-libraries-oliveoil-bufferflinger-BufferFlinger(Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget-wide v4, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    iget-object v4, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->onBufferReleasedListenerQueue:Ljava/util/Queue;

    move-object/from16 v5, p1

    invoke-interface {v4, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->onBufferReleasedListenerQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    iget-object v4, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->onBufferReleasedListenerQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;

    invoke-interface {v4}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;->onBufferReleased()V

    :cond_0
    iget-object v4, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nextBufferId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    if-eqz v1, :cond_1

    iget-object v5, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idToOnPtsAvailableListener:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v5, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    iget v15, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    move v7, v4

    move-object/from16 v8, p3

    move/from16 v16, v1

    move/from16 v17, p6

    invoke-static/range {v5 .. v17}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nativeDisplayBuffer(JILandroid/hardware/HardwareBuffer;IIIIIIIII)V

    iget-boolean v1, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->queryPts:Z

    if-eqz v1, :cond_3

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    iget-wide v1, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->bufferFlingerHandle:J

    iget-object v3, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    const/16 v4, 0x64

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->nativeGetIdAndTimestampPairs(JLjava/nio/Buffer;I)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v2, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    add-int/2addr v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/LongBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->position()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    invoke-virtual {v2}, Ljava/nio/LongBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idAndPtsBuffer:Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v3

    iget-object v1, v0, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger;->idToOnPtsAvailableListener:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v3, v4}, Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnPresentationTimestampAvailableListener;->onPresentationTimestampAvailable(J)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Calling displayBuffer on an already closed BufferFlinger."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
