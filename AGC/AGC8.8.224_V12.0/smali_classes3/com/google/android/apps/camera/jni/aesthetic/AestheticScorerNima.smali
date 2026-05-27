.class public final Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;
.super Ljava/lang/Object;

# interfaces
.implements Lemo;


# instance fields
.field private a:J

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;

    invoke-static {v0}, Lkak;->a(Ljava/lang/Class;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private native nativeClose(J)V
.end method

.method private static native nativeLoad(Ljava/lang/Boolean;)J
.end method

.method private native nativeScoreYUV(JIILjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F
.end method


# virtual methods
.method public final a(IILjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F
    .locals 16

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v1, v15, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->a:J

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->nativeScoreYUV(JIILjava/nio/Buffer;IILjava/nio/Buffer;IILjava/nio/Buffer;II[F)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->nativeClose(J)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->nativeLoad(Ljava/lang/Boolean;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->a:J

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/jni/aesthetic/AestheticScorerNima;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
