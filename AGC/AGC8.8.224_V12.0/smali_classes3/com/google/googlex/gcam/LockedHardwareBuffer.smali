.class public Lcom/google/googlex/gcam/LockedHardwareBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private a:J


# direct methods
.method private constructor <init>(Landroid/hardware/HardwareBuffer;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->lockHardwareBuffer(Landroid/hardware/HardwareBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Failed to lock HardwareBuffer."

    invoke-static {p1, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    return-void
.end method

.method public static c(Landroid/hardware/HardwareBuffer;J)Lcom/google/googlex/gcam/LockedHardwareBuffer;
    .locals 1

    new-instance v0, Lcom/google/googlex/gcam/LockedHardwareBuffer;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlex/gcam/LockedHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;J)V

    return-object v0
.end method

.method private static native getInterleavedReadViewU8Impl(J)J
.end method

.method private static native getInterleavedWriteViewU8Impl(J)J
.end method

.method private static native lockHardwareBuffer(Landroid/hardware/HardwareBuffer;J)J
.end method

.method private static native unlockHardwareBuffer(J)V
.end method


# virtual methods
.method public final a()Lcom/google/googlex/gcam/InterleavedReadViewU8;
    .locals 3

    iget-wide v0, p0, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->getInterleavedReadViewU8Impl(J)J

    move-result-wide v0

    new-instance v2, Lcom/google/googlex/gcam/InterleavedReadViewU8;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/InterleavedReadViewU8;-><init>(J)V

    return-object v2
.end method

.method public final b()Lcom/google/googlex/gcam/InterleavedWriteViewU8;
    .locals 3

    iget-wide v0, p0, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->getInterleavedWriteViewU8Impl(J)J

    move-result-wide v0

    new-instance v2, Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;-><init>(J)V

    return-object v2
.end method

.method public final close()V
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->unlockHardwareBuffer(J)V

    iput-wide v2, p0, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a:J

    :cond_0
    return-void
.end method
